#install.packages("tm")
library(tm)
files <- list.files(pattern = "pdf$")
files1 <- list.files(pattern = "PDF$")
Rpdf <- readPDF(control = list(text = "-layout"))
opinions <- Corpus(URISource(files), #Uniform Resource Identifier#
                   readerControl = list(reader = Rpdf))
writeCorpus(opinions)

opinions1 <- Corpus(URISource(files1), #Uniform Resource Identifier#
                   readerControl = list(reader = Rpdf))
writeCorpus(opinions1)

#install.packages("SnowballC")
opinions.tdm <- TermDocumentMatrix(opinions, control = list(removePunctuation = TRUE,
                                                            stopwords = TRUE,
                                                            tolower = TRUE,
                                                            stemming = TRUE,
                                                            removeNumbers = TRUE,
                                                            bounds = list(global = c(3, Inf)))) 
inspect(opinions.tdm[1:10,]) 

library(tm)
files <- list.files(pattern = "pdf$")
Rpdf <- readPDF(control = list(text = "-layout"))
case1 <- Corpus(URISource(files), #Uniform Resource Identifier#
                   readerControl = list(reader = Rpdf))
writeCorpus(case1)


