install.packages("RSQLite", dependencies = T)
library(tidyr)


db.auth = dbConnect(SQLite(), dbname="auth.sqlite")
dbSendQuery(conn = db.auth,
            "CREATE TABLE AUTHS
       (auth_id INTEGER PRIMARY KEY AUTOINCREMENT,
        fname TEXT,
       	lname TEXT)")


## read csv file
authors = read.table("authorList.txt",stringsAsFactors=FALSE,sep=",")
colnames(authors)<-c("fname","lname")



## write the csv data into database
dbWriteTable(conn = db.auth, name = "AUTHS", authors, append=T, row.names = FALSE,sep=",")

## check the content of the database
head(dbReadTable(db.auth, "AUTHS"))

dbSendQuery(conn = db.auth,
            "CREATE TABLE AUTH_PAPER
       (auth_id INTEGER,
        paper_id INTEGER,
        PRIMARY KEY(auth_id,paper_id))") ;

A2P <- read.table("authorPaperBiadj.txt")

A2P <- as.matrix(A2P)

library(reshape2)
library(dplyr)
my_cor_df <- melt(A2P)
my_cor_df <- filter(my_cor_df, value != 0) %>% filter(Var1 != Var2)
my_cor_df <- my_cor_df[1:2]
colnames(my_cor_df)<-c("auth_id","paper_id")

## write the csv data into database
dbWriteTable(conn = db.auth, name = "AUTH_PAPER", my_cor_df, append=T, row.names = FALSE)

## check the content of the database
head(dbReadTable(db.auth, "AUTH_PAPER"))




dbSendQuery(conn = db.auth,
            "CREATE TABLE PAPERS
       (paper_id INTEGER PRIMARY KEY,
        DOI TEXT,
       	year INTEGER,
        title TEXT,
        citation_ct INTEGER)");


## read csv file
paps=scan("paperList.txt",sep="\n",what="")
head(paps)
paps<-paps[-1]
tmp1 <- lapply(paps,function(s)unlist(strsplit(s,'"')))
paper_id <- unlist(lapply(tmp1,function(x) return(x[2])))
DOI<-unlist(lapply(tmp1,function(x) return(x[4])))
year<-unlist(lapply(tmp1,function(x) return(x[5])))
tmp2<-lapply(year,function(s)unlist(strsplit(s,",")))
year<-unlist(lapply(tmp2,function(x)return(x[2])))
title<-unlist(lapply(tmp1,function(x) return(x[6])))
citation_ct<-unlist(lapply(tmp1,function(x) return(x[7])))
tmp3<-lapply(citations,function(s)unlist(strsplit(s,",")))
citation_ct<-unlist(lapply(tmp3,function(x)return(x[1])))

x<-data.frame(paper_id,DOI,year,title,citation_ct)
head(x)



## write the csv data into database
dbWriteTable(conn = db.auth, name = "PAPERS", x, overwrite=T,row.names = FALSE)

## check the content of the database
head(dbReadTable(db.auth, "PAPERS"))





dbSendQuery(conn = db.auth,
            "CREATE TABLE CITATIONS
       (citor_id INTEGER,
        cited_id INTEGER,
        PRIMARY KEY(citor_id,cited_id))") ;

P2P <- read.table("paperCitAdj.txt")

P2P <- as.matrix(P2P)

library(reshape2)
library(dplyr)
my_cor_df2 <- melt(P2P)
my_cor_df2 <- filter(my_cor_df2, value != 0) %>% filter(Var1 != Var2)
my_cor_df2 <- my_cor_df[1:2]
colnames(my_cor_df2)<-c("citor_id","cited_id")

## write the csv data into database
dbWriteTable(conn = db.auth, name = "CITATIONS", my_cor_df2, append=T, row.names = FALSE)

## check the content of the database
head(dbReadTable(db.auth, "CITATIONS"))
