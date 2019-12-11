completar <- function(){

  folder <- paste(.libPaths(), "/reembolsos", sep="")

  download.file("https://marcusnunes.me/data/Rdata.rdb",
                destfile = paste(folder, "/Rdata.rdb", sep = ""))
  download.file("https://marcusnunes.me/data/Rdata.rds",
                destfile = paste(folder, "/Rdata.rdb", sep = ""))
  download.file("https://marcusnunes.me/data/Rdata.rdx",
                destfile = paste(folder, "/Rdata.rdb", sep = ""))

}
