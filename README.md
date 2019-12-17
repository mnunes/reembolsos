# Descrição

Este é um pacote do R com os pedidos de reembolso dos deputados federais brasileiros entre 2009 e 2019. Possui vários data frames, uma para cada ano. Cada linha de cada data frame equivale a um pedido de reembolso.

# Instalação

Basta rodar

    devtools::install_github("mnunes/reembolsos")
    
desde que o pacote `devtools` esteja instalado em seu R. Se o comando acima não funcionar, instale o pacote `devtools` através do comando

    install.packages("devtools")
    
Após a instalação do pacote `devtools`, caso esteja usando Windows, instale o programa [RTools](https://cran.r-project.org/bin/windows/Rtools/) mais atual.

Por fim, rode `devtools::install_github("mnunes/reembolsos")` novamente e o pacote será instalado em seu computador.

Neste ponto, o pacote estará instalado com um data frame para cada ano entre 2009 e 2019. Para verificar se o pacote foi instalado corretamente, rode os comandos

    library(reembolsos)
    data(camara2019)
    camara2019 %>% 
      group_by(party) %>% 
      summarise(Total = sum(document_value)) %>%
      arrange(desc(Total)) %>%
      print(n = Inf)

e verifique se algum _output_ é produzido. Neste caso, a soma total de reembolsos pedidos pelos deputados, agregada por partido.

# Juntando os data frames

Case seja do seu interesse realizar uma análise em mais de um ano, será necessário juntar os data frames independentes em apenas um. Para isso, rode os comandos abaixo:

    dados <- data(package = "reembolsos")
    
    camara <- get(data(list = dados$results[,3][1],
                   package = "reembolsos"))
    
    for (j in dados$results[,3][-1]){
      print(paste("Processando ", j, ". Aguarde.", sep = ""))
      camara <- rbind(camara,
                      get(data(list = j,
                               package = "reembolsos")))
    }

Isso criará o objeto `camara`, com todos os mais de 3 milhões de observações armazenadas neste conjunto de dados. 

# Exemplos de utilização

Que tal verificar quanto dinheiro o Brasil está reembolsando anualmente para os deputados federais?

![alt text](imagens/reembolsos_totais.png "Como criar um novo relatório - Figura 1")

Veja mais exemplos de utilização do pacote no texto [Controle de gastos públicos: como verificar quanto os deputados federais estão gastando](https://marcusnunes.me/posts/controle-de-gastos-publicos-como-verificar-quanto-os-deputados-federais-estao-gastando/).

# To-Do List

O pacote ainda não está completo. É necessário 

* escrever o help em português
* adicionar os dados referentes ao Senado
* escrever o help para os dados do Senado


# Agradecimentos

Este pacote não seria possível sem o [serenata-toolbox](https://github.com/okfn-brasil/serenata-toolbox), módulo feito para python. Eu apenas fiz uma versão dos dados baixados pelo [serenata-toolbox](https://github.com/okfn-brasil/serenata-toolbox) para ser utilizado por quem só trabalha com o R.

