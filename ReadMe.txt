
          Readme

This package contains the data and the computer code to reproduce the results in 
Ji and Jin's paper titled "Coauthorship and Citation Networks for Statisticians"
 to appear in the Annals of Applied Statistics. 

The Data folder contains 4 data files: 
authorList.txt      -- the complete list of 3607 author names
authorPaperBiadj.txt-- the bipartite (authorship) adjacency matrix between authors(rows)
                       and papers (columns); the element at (i,j) is 1 iff author i 
                       is the author or one of the coauthors of paper j, and 0 otherwise
paperCitAdj.txt     -- the 3248x3248 adjacency matrix for citations between papers; 
                       the element at (i,j) is 1 iff paper i is cited by paper j, and 0 otherwise
paperList.txt       -- the complete list of 3248 papers including DOIs, years, titles, citation counts and abstracts  for each


The data set is from Pengsheng Ji (psji@uga.edu) and Jiashun Jin (jiashun@stat.cmu.edu)


An additional data file is provided by Song Wang and Karl Rohe (KarlRohe@stat.wisc.edu)

paperList_Abstracts_Keyword.txt -- the key words in abstracts for all the papers in the data set.




