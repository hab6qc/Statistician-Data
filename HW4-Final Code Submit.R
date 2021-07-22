### Question 2

# install.packages("RSQLite", dependencies = T) 
library(RSQLite) # load RSQlite package 

## create the database
db.auth = dbConnect(SQLite(), dbname="auth.sqlite")

## Remove table if exists
dbRemoveTable(db.auth,"AUTHS")

## create author table
dbSendQuery(conn = db.auth,
            "CREATE TABLE AUTHS
       (auth_id INTEGER PRIMARY KEY AUTOINCREMENT,
        fname TEXT,
       	lname TEXT)")


## read in csv file for authors
authors = read.table("authorList.txt",stringsAsFactors=FALSE,sep=",")

## name columns same as database columns
colnames(authors)<-c("fname","lname")



## write the csv data into database
dbWriteTable(conn = db.auth, name = "AUTHS", authors, append=T, row.names = FALSE,sep=",")


## check the content of the database author table
head(dbReadTable(db.auth, "AUTHS"))


## Remove table if exists
dbRemoveTable(db.auth,"AUTH_PAPER")

## create author_paper connection table
dbSendQuery(conn = db.auth,
            "CREATE TABLE AUTH_PAPER
       (auth_id INTEGER,
        paper_id INTEGER,
        PRIMARY KEY(auth_id,paper_id))") ;

## Read in authorpaperbiadj table
A2P <- read.table("authorPaperBiadj.txt")
## Convert to matrix
A2P <- as.matrix(A2P)
## Rename columns to remove "V"
colnames(A2P)<-c(1:3248)

## Load reshape and dplyr packages 
library(reshape2)
library(dplyr)

## melt adjacency matrix into table
my_cor_df <- melt(A2P)
## filter out 0s and matches to itself
my_cor_df <- filter(my_cor_df, value != 0) %>% filter(Var1 != Var2)
## remove value column 
my_cor_df <- my_cor_df[1:2]
## make column names same as database 
colnames(my_cor_df)<-c("auth_id","paper_id")

## write the data into database
dbWriteTable(conn = db.auth, name = "AUTH_PAPER", my_cor_df, overwrite=T, row.names = FALSE)

## check the content of the author_paper connection table
head(dbReadTable(db.auth, "AUTH_PAPER"))


## Remove table if exists
dbRemoveTable(db.auth,"PAPERS")

## create paper details table
dbSendQuery(conn = db.auth,
            "CREATE TABLE PAPERS
       (paper_id INTEGER PRIMARY KEY,
        DOI TEXT,
       	year INTEGER,
        title TEXT,
        citation_ct INTEGER)");


## read in file 
paps=scan("paperList.txt",sep="\n",what="")
paps<-paps[-1]
## unlist data into separate columns and create a dataframe with it
tmp1 <- lapply(paps,function(s)unlist(strsplit(s,'"')))
paper_id <- unlist(lapply(tmp1,function(x) return(x[2])))
DOI<-unlist(lapply(tmp1,function(x) return(x[4])))
year<-unlist(lapply(tmp1,function(x) return(x[5])))
tmp2<-lapply(year,function(s)unlist(strsplit(s,",")))
year<-unlist(lapply(tmp2,function(x)return(x[2])))
title<-unlist(lapply(tmp1,function(x) return(x[6])))
citation_ct<-unlist(lapply(tmp1,function(x) return(x[7])))
tmp3<-lapply(citation_ct,function(s)unlist(strsplit(s,",")))
citation_ct<-unlist(lapply(tmp3,function(x)return(x[2])))

# creates dataframe of all data
x<-data.frame(paper_id,DOI,year,title,citation_ct)
## check dimenisons of x
dim(x)



## write the data into database
dbWriteTable(conn = db.auth, name = "PAPERS", x, overwrite=T,row.names = FALSE)

## check the content of the paper details table 
head(dbReadTable(db.auth, "PAPERS"))



## Remove table if exists
dbRemoveTable(db.auth,"CITATIONS")

## create citation table
dbSendQuery(conn = db.auth,
            "CREATE TABLE CITATIONS
       (citor_id INTEGER,
        cited_id INTEGER,
        PRIMARY KEY(citor_id,cited_id))") ;

## read in data 
P2P <- read.table("paperCitAdj.txt")

## convert data to matrix
P2P <- as.matrix(P2P)
# change column names to remove "V"
colnames(P2P)<-c(1:3248)

## melt adjacency matrix into table
my_cor_df2 <- melt(P2P)
## filter out 0s and matches to itself
my_cor_df2 <- filter(my_cor_df2, value != 0) %>% filter(Var1 != Var2)
## remove value column 
my_cor_df2 <- my_cor_df2[1:2]
## rename columns to be the same as dataframe
colnames(my_cor_df2)<-c("citor_id","cited_id")

## write the csv data into database
dbWriteTable(conn = db.auth, name = "CITATIONS", my_cor_df2, overwrite=T, row.names = FALSE)

## check the content of the citations table
head(dbReadTable(db.auth, "CITATIONS"))



## Question 3- The DOI string contains information of the publishing venue of the papers. Write
## out your selection statement for the follow operation: Exact all authors who have ever
## published papers with at least four of the following DOI substrings (“10.1214”,“10.1093”,“10.1046”,“10.1111”,
## “10.1080”,“10.1198”).
## selects for authors that have at least four DOI strings 
temptab<-dbGetQuery(db.auth, "select AUTHS.fname,AUTHS.lname, COUNT(DOI) from PAPERS inner join AUTH_PAPER on AUTH_PAPER.paper_id=PAPERS.paper_id 
                    inner join AUTHS on AUTHS.auth_id=AUTH_PAPER.auth_id where DOI LIKE '10.1214%' or DOI LIKE '10.1093%' or DOI LIKE '10.1046%' or DOI LIKE '10.1111%' or DOI LIKE '10.1080%' or DOI LIKE '10.1198%'
                    group by AUTH_PAPER.auth_id
                    HAVING COUNT(distinct substr(DOI,1,instr(DOI,'/'))) >=4
                    ")


## Question 4 
## select citation counts 
b2010 <- dbGetQuery(db.auth, "select PAPERS.paper_id,COUNT(CITATIONS.cited_id) as count from PAPERS inner join CITATIONS on PAPERS.paper_id=CITATIONS.cited_id where year<2010
                    group by PAPERS.paper_id
                    ")

## select only the count column in hist function 
prob4<-hist(b2010$count)
## plot, title, make line, log transformation
plot(prob4$counts, log="xy", pch=20,type="l", col="blue",main="Logarithmic Transformation of # Citations", xlab="log(citation count)", ylab="log(frequency)")




