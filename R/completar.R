completar <- function(){

  pacotes <- installed.packages()

  index <- which(rownames(pacotes) == "reembolsos")

  folder <- paste(pacotes[index, 2], "/reembolsos", sep="")

  download.file("https://marcusnunes.me/data/Rdata.rdb",
                destfile = paste(folder, "/Rdata.rdb", sep = ""))
  download.file("https://marcusnunes.me/data/Rdata.rds",
                destfile = paste(folder, "/Rdata.rdb", sep = ""))
  download.file("https://marcusnunes.me/data/Rdata.rdx",
                destfile = paste(folder, "/Rdata.rdb", sep = ""))

}
