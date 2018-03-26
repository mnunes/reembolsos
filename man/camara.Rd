\name{camara}
\alias{re}
\title{Modelo de Relatório para o Laboratório de Estatística Aplicada (LEA)}
\usage{
modeloLEA(..., keep_tex = TRUE, citation_package = "natbib")
}
\arguments{
\item{...}{Argumentos adicionais para \code{rmarkdown::pdf_document}}

\item{keep_tex}{Argument boleano para selecionar se os arquivos \code{.tex} intermediários devem ficar armazenados no disco. O padrão é \code{TRUE}}

\item{citation_package}{Tipo de bibliografia a ser utilizada. O padrão é \code{natbib}.}
}
\value{
Output de R Markdown output para ser passado para
\code{\link[rmarkdown:render]{render}}
}
\description{
Modelo de documento para geração de relatórios no Laboratório de Estatística Aplicada da UFRN.
}
\section{Document options}{

Existem diversas opções a serem utilizadas no preâmbulo do documento, a fim de personalizá-lo. Estas opções estão descritas abaixo:

\describe{
  \item{\code{abstract}}{(Opcional, mas recomendado) Resumo do relatório.}
  \item{\code{address}}{(Obrigatório) Descrição do local onde consulente e consultores trabalham ou estão vinculados.}
  \item{\code{author}}{(Obrigatório) Lista de consultores, consulente(s) e orientador(a) do trabalho.}
  \item{\code{bibliography}}{(Opcional, mas recomendado) Nome do arquivo \code{.bib} no qual as referências estão colocadas.}
  \item{\code{footer_contents}}{(Opcional, mas recomendado) Título do relatório (ou uma abreviação dele) a fim que que apareça no rodapé de todas as páginas do documento.}
  \item{\code{keywords}}{(Opcional, mas recomendado) Palavras-chave do relatório. Coloque o principal método estatístico utilizado no documento como primeira palavra-chave, a fim de facilitar a catalogação nos registros do LEA.}
  \item{\code{numbersections}}{(Obrigatório) Define se as seções do relatório serão numeradas ou não. Por padrão, as seções dos relatórios são numeradas.}
  \item{\code{one_column}}{(Obrigatório) Valor lógico responsável por definir se o relatório será em uma \code{TRUE} ou duas colunas \code{FALSE}. A versão em duas colunas está bugada por enquanto.}
  \item{\code{output}}{(Obrigatório) Avida ao \code{rmarkdown} para renderizar o documento final através da função \code{modeloLEA}; precisa ser colocada como \code{modeloLEA::modeloLEA}.}
  \item{\code{secnumdepth}}{(Optional) Nível de subnumeração do (LaTeX). O padrão é 5.}
  \item{\code{title}}{(Obrigatório) Título do relatório.}
  \item{\code{watermark}}{(Obrigatório) Valor lógico que colocará a marca d'água \sQuote{RASCUNHO} nas páginas do documento. Deve estar colocada como \code{TRUE} enquanto o relatório estiver circulando entre os consultores e os orientadores. Deve ser mudado para \code{FALSE} antes de ser entregue ao consulente.}
}

O arquivo de exemplo do pacote possui um relatório fictício com estas opções já todas preenchidas.
}

\examples{
\dontrun{
rmarkdown::draft("MyArticle.Rmd", template = "pdf", package = "modeloLEA")
rmarkdown::render("MyArticle.Rmd")
}

}
\references{
D Dddelbuettel (2017). Pinp Is Not PNAS -- Two-Column PDF Template. \url{https://github.com/eddelbuettel/pinp}

JJ Allaire, R Foundation, Hadley Wickham, Journal of Statistical Software, Yihui Xie, Ramnath
Vaidyanathan, Association for Computing Machinery, Carl Boettiger, Elsevier, Karl Broman,
Kirill Mueller, Bastiaan Quast, Randall Pruim, Ben Marwick, Charlotte Wickham, Oliver Keyes
and Miao Yu (2017). rticles: Article Formats for R Markdown. R package version 0.4.1.
\url{https://CRAN.R-project.org/package=rticles}

JJ Allaire, Joe Cheng, Yihui Xie, Jonathan McPherson, Winston Chang, Jeff Allen, Hadley
Wickham, Aron Atkins, Rob Hyndman and Ruben Arslan (2017). rmarkdown: Dynamic Documents for R.
R package version 1.6. \url{https://CRAN.R-project.org/package=rmarkdown}

Yihui Xie (2017). knitr: A General-Purpose Package for Dynamic Report Generation in R. R
package version 1.17.
}
\seealso{
\code{\link[rticles]{pnas_article}}
\code{\link[pinp]{pinp}}
}
