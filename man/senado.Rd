\docType{data}
\name{senado}
\alias{senado}
\title{Pedidos de reembolso dos senadores brasileiros}
\format{
  Tibble com 242.675 linhas e 10 colunas. Cada linha equivale a um pedido de reembolso dos senadores brasileiros. Os pedidos de reembolso foram realizados entre 2009 e 2018.

\describe{

\item{\code{ANO}}{Ano do pedido de reembolso.}

\item{\code{MES}}{Mes do pedido de reembolso.}

\item{\code{SENADOR}}{Nome do senador que realizou o pedido.}

\item{\code{TIPO_DESPESA}}{Tipo de despesa na qual o Senador utilizou sua verba.}

\item{\code{CNPJ_CPF}}{Documento do forncedor do servico ou material.}

\item{\code{FORNECEDOR}}{Nome do fornecedor do servico ou material.}

\item{\code{DOCUMENTO}}{Nota fiscal do servico ou material.}

\item{\code{DATA}}{Data prestacao do servico ou da compra do material. Alguns documentos antigos nao possuem esta informacao.}

\item{\code{DETALHAMENTO}}{Informacoes extras sobre cada um dos pedidos de reembolso.}

\item{\code{REEMBOLSADO}}{Valor reembolsado pelo governo federal para o senador.}

}

}

\usage{
data(senado)
}

\description{
Pedidos de reembolso dos senadores brasileiros entre 2009 e 2018.
}

\examples{
data(senado)
senado \%>\%
  filter(ANO <= 2018) \%>\%
  select(VALOR_REEMBOLSADO, ANO) \%>\%
  group_by(ANO) \%>\%
  summarise(total=sum(VALOR_REEMBOLSADO)) \%>\%
  print(n=Inf) \%>\%
  ggplot(., aes(x=ANO, y=total/1e6)) +
  geom_line() +
  labs(x="Ano", y="Reembolsos (em milhoes de R$)") +
  scale_x_continuous(breaks = seq(2009, 2017, 1), minor_breaks = NULL) +
  scale_y_continuous(limits = c(0, 250))
}
\references{
https://github.com/okfn-brasil/serenata-toolbox/
}
\keyword{datasets}
