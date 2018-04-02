# Descrição

Este é um pacote do R com os pedidos de reembolso dos deputados federais brasileiros entre 2009 e 2017. Possui um data frame com 3.099.310 linhas e 29 colunas. Cada linha equivale a um pedido de reembolso.

# Instalação

Basta rodar

    devtools::install_github("mnunes/reembolsos")
    
desde que o pacote `devtools` esteja instalado em seu R. Se o comando acima não funcionar, instale o pacote `devtools` através do comando

    install.packages("devtools")
    
    
# Exemplos de utilização

Que tal verificar quanto dinheiro o Brasil está reembolsando anualmente para os deputados federais?

![alt text](imagens/reembolsos_totais.png "Como criar um novo relatório - Figura 1")

Spoiler: foram 225 milhões só em 2017, quase o dobro de 2009.

Veja mais exemplos de utilização do pacote no texto [Verifique os gastos do seu deputado](http://marcusnunes.me/controle-de-gastos-publicos-como-verificar-quanto-os-deputados-federais-estao-gastando/).

# To-Do List

O pacote ainda não está completo. É necessário 

* escrever o help em português
* adicionar os dados referentes ao Senado
* escrever o help para os dados do Senado


# Agradecimentos

Este pacote não seria possível sem o [serenata-toolbox](https://github.com/okfn-brasil/serenata-toolbox), módulo feito para python. Eu apenas fiz uma versão dos dados baixados pelo [serenata-toolbox](https://github.com/okfn-brasil/serenata-toolbox) para ser utilizado por quem só trabalha com o R.
