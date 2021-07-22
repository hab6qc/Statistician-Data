install.packages("RSQLite", dependencies = T)
library(RSQLite)
db=dbConnect(SQLite(),dbname="Citations.sqlite")
install.packages("RSQLite")
install.packages("devtools")
devtools::install_github("rstats-db/RSQLite")
library(RSQLite)


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

dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1,1887)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1,3019)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (2,1696)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (3,1100)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (4,1203)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (4,1593)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (4,3052)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (4,3082)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (5,2757)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (6,1734)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (6,3207)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (7,2722)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (8,2083)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (9,1199)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (10,3244)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (11,574)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (12,626)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (13,2269)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (13,3238)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (14,1101)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (14,1435)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (15,1101)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (15,1435)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (15,1528)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (16,2284)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (17,1053)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (18,3216)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (19,1028)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (20,1430)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (20,1575)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (20,2990)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (20,3237)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (21,837)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (22,1066)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (23,2495)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (24,1192)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (25,1720)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (26,468)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (26,757)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (26,940)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (26,1864)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (26,2044)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (26,2311)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (26,2584)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (27,702)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (28,3063)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (29,564)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (29,581)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (29,681)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (30,29)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (30,310)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (30,431)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (30,642)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (30,2300)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (31,60)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (32,306)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (33,1483)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (33,1798)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (34,2179)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (34,2276)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (34,2505)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (35,922)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (36,523)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (37,2255)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (38,1273)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (38,1453)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (39,1251)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (39,2294)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (39,2295)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (39,2654)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (39,2697)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (40,1137)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (41,2774)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (42,1728)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (43,964)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (43,1158)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (43,2549)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (44,2566)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (45,2450)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (46,3229)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (47,2876)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (48,2361)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (49,1438)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (50,578)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (51,1174)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (51,3111)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (52,158)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (53,266)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (53,2212)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (53,2697)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (54,1823)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (54,1824)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (54,2122)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (54,2143)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (54,2231)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (54,2571)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (54,2661)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (54,2707)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (54,3050)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (55,894)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (56,813)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (57,696)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (57,2480)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (58,402)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (58,435)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (58,2981)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (59,1803)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (60,696)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (61,2709)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (62,998)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (62,2660)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (63,42)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (63,597)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (63,2736)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (64,1344)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (64,3086)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (65,1295)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (65,1579)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (66,637)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (67,2051)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (68,1111)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (69,1251)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (69,1343)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (69,1724)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (69,1792)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (69,1935)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (69,2110)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (69,2164)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (69,2294)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (69,2295)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (69,2654)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (69,2935)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (69,2979)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (70,1313)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (70,3039)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (71,384)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (72,2576)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (73,1618)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (73,1914)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (73,2582)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (73,2880)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (73,3044)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (74,1001)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (75,2053)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (76,1900)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (76,2284)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (76,2604)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (77,2399)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (77,2725)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (78,482)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (79,1936)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (80,2579)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (81,2878)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (82,549")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (83,3194)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (84,1567)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (85,120)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (86,1543)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (87,2750)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (88,2327)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (89,4)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (90,229)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (91,2593)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (92,130)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (93,1131)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (94,823)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (95,2873)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (96,1055)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (96,1131)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (97,10)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (97,153)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (97,301)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (98,454)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (99,2500)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (100,1077)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (100,2440)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (101,327)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (102,2191)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (103,2697)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (104,1218)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (105,244)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (106,130)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (107,2199)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (108,35)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (108,66)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (108,363)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (108,658)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (108,677)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (108,818)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (109,297)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (110,440)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (111,1143)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (112,2453)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (113,71)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (113,459)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (113,531)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (113,2223)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (113,2755)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (114,1990)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (115,3208)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (116,2959)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,41)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,47)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,90)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,95)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,155)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,158)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,323)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,334)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,406)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,526)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,567)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,677)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,683)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,732)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (117,880)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (118,82)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (118,116)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (118,314)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (118,399)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (118,1035)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (119,1457)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (120,2830)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (121,375)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (121,3088)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (122,2579)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (123,2488)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (124,435)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (124,1934)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (124,2955)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (125,1775)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (126,2688)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (127,1322)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (127,1364)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (127,1526)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (128,2131)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (129,3046)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (130,1058)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (131,1159)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (132,1615)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (133,2455)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (134,1535)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (135,1411)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (135,2003)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (136,2168)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (136,2489)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (137,37)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (137,381)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (137,382)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (137,2293)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (138,346)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (139,2690)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (140,2565)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (141,1005)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (142,2684)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (143,1510)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (143,3120)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (144,1961)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (144,2188)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (144,2279)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (144,2334)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (145,2330)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (146,1125)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (146,2425)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (147,1653)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (148,2194)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (148,2195)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (149,2488)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (150,2290)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (151,212)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (151,2764)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (152,2388)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (153,1325)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (154,1406)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (155,51)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (156,1191)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (156,1274)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (156,1450)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (156,1453)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (156,1593)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (156,1514)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (156,1517)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (156,1569)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (156,1683)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (156,1939)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (157,1965)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (158,35)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (158,290)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (158,334)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (158,406)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (159,2623)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (160,2513)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (161,2868)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (162,3246)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (163,2772)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (163,3047)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (164,2562)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (164,2947)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (165,2040)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (166,985)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (166,1039)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (166,1113)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (166,1124)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (166,1342)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (166,1573)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (166,2023)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (166,2619)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (166,3022)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (166,3047)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (166,3234)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (167,2040)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (168,2422)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (168,2547)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (169,2354)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (170,1734)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (170,2391)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (171,1679)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (172,3047)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (173,2291)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (173,2437)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (173,2438)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (174,787)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (174,1871)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (174,2086)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (174,2191)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (174,2342)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (174,2343)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (175,2168)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (176,2896)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (177,978)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (177,2907)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (177,2967)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (178,2662)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (178,2801)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (178,2979)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (179,1220)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (180,482)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (181,1517)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (182,789)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (182,842)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (182,1092)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (182,1144)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (182,1322)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (182,1469)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (182,1526)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (182,2200)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (183,1561)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (184,527)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (184,788)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (184,812)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (185,2577)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (186,699)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (186,809)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (186,2396)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (186,2623)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (186,2886)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (186,3209)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (187,182)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (188,915)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (189,2560)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (190,617)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (190,1428)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (190,3065)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (191,377)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (192,261)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (192,1456)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (193,1640)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (193,3223)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (194,90)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (194,434)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (195,1118)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (196,117)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (197,60)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (197,2745)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (198,607)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (198,1108)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (198,1616)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (198,1810)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (198,1813)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (198,2713)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (199,1073)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (199,2808)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (200,2610)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (201,1862)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (201,3090)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (202,2135)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (203,2188)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (203,2279)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (204,1564)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (205,2938)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (206,1080)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (206,1266)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (206,1597)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (206,2232)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (206,2589)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (206,2677)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (206,2961)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (206,3085)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (206,3243)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (207,1651)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (208,2514)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (209,1673)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (210,132)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (211,2947)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (212,2599)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (213,1717)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (214,1194)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (214,1371)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (214,1955)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (214,3157)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (214,3208)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (215,1897)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (216,393)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (217,2959)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (217,3220)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (218,1337)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (218,1574)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (218,2497)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (218,3040)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (219,450)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (219,664)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (220,558)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (220,604)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (220,864)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (221,3229)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (222,1463)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (223,2689)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (224,549)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (225,2062)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (226,562)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (226,926)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (226,969)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (226,1345)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (226,1501)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (226,1647)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (226,1915)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (226,1916)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (226,1926)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (226,3028)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (227,2172)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (227,2173)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (228,283)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (228,660)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (229,2246)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (230,302)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (231,3018)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (232,68)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (233,1692)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (234,290)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (235,2799")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (236,345)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (237,1255)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (238,383)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (238,1081)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (238,2659)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (239,1244)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (239,2270)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (239,2554)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (239,2966)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (240,683)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (240,707)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (241,132)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (241,1091)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (241,1888)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (241,2915)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (241,3086)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (242,110)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (243,515)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (244,312)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (244,847)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (245,947)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (246,3170)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (247,2335)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (248,121)")








dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (249,97)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (249,250)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (249,401)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (249,2089)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (249,2756)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (249,3121)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (250,329)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (250,783)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (250,784)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (250,1294)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (251,3130)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (252,1235)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (252,1905)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (253,2567)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (253,2665)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (254,2367)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (255,2442)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (255,2443)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (256,774)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (257,1826)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (258,658)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (258,677)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (258,818)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (259,1170)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (260,2544)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (261,1935)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (261,2483)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (262,2336)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,201)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,459)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,490)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,994)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,2223)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,2414)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,2479)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,2525)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,2539)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,2755)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,2788)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,2853)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,2883)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,3023)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (263,3094)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (264,1965)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (265,1874)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (266,54)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (267,1100)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (267,2428)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (268,160)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (268,377)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (268,2968)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (268,3038)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (268,3137)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (269,2753)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (270,625)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (271,705)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (272,660)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (273,1757)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (274,642)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (275,2311)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (276,1259)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (277,1548)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (278,1876)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (279,896)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (280,29)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (281,1283)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (281,1406)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (281,1676)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (282,3084)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (283,2091)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (284,1040)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (285,2436)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (286,102)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (286,185)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (286,385)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (286,2688)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (287,2680)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (288,1789)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (288,1971)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (288,1976)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (288,2183)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (288,2254)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (288,2298)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (288,2631)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (288,3089)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (288,3144)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (289,2556)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (290,3138)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (291,1830)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (292,635)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (293,2098)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (294,1813)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (295,2577)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (295,3231)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (296,2629)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (297,2373)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (297,2374)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (298,680)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (298,2951)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (298,2999)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (299,840)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (300,648)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (300,780)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (300,953)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (301,1500)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (302,2299)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (303,588)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (304,835)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (304,1941)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (305,1472)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (306,1285)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (306,1827)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (306,2527)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (307,2888)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (308,1043)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (308,2552)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (309,602)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (310,1026)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (311,433)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (311,1022)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (311,1663)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (311,1798)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (311,2256)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (312,188)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (312,838)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (313,2833)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (314,3033)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (315,1260)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (315,1261)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (315,3071)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (316,22)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (317,2043)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (318,747)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (318,830)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (318,1978)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (318,2900)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (318,2965)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (318,2991)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (319,1738)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (320,1018)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (321,655)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (322,440)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (323,2743)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (324,2463)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (325,316)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (325,557)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (326,2078)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (327,641)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (328,1976)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (329,1539)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (329,1664)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (329,2314)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (329,2429)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (329,2936)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (329,3002)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (329,3058)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (330,2406)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (331,2088)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (332,287)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (332,860)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (332,1070)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (332,1246)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (332,1424)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (332,2119)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (333,56)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (333,247)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (333,265)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (333,374)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (333,500)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (333,752)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (333,1787)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (333,2330)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (334,2692)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (335,19)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (335,122)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (335,790)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (335,909)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (335,2517)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (335,2761)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (336,204)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (336,337)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (336,508)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (336,751)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (336,796)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (336,899)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (336,1167)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (336,1360)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (336,2253)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (336,2400)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (336,2614)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (336,2826)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (337,225)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (338,2536)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (339,2169)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (340,1527)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (340,1671)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (340,3115)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (341,109)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (341,2506)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (341,2921)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (342,1033)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (342,1320)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (342,2198)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (342,2635)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (342,2941)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (343,1812)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (344,386)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (345,1102)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (346,65)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (346,67)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (346,157)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (346,175)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (346,1028)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (346,1401)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (346,2809)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (347,2074)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (348,1715)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (349,513)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (349,920)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (350,1509)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (351,1381)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (352,2114)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (353,191)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (353,559)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (353,756)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (353,1012)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (353,1041)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (353,1250)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (353,1254)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (353,1455)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (354,918)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (355,538)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (355,869)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (355,935)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (355,1075)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (355,1828)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (355,1882)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (355,1969)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (355,2273)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (355,2524)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (355,2626)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (355,2683)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (355,3074)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (356,1225)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (357,1213)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (357,2208)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (357,2248)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (357,3025)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (358,2174)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (358,2175)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (358,2448)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (359,2885)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (360,1407)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (360,1414)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (360,1477)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (360,1857)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (360,2017)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (360,2018)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (360,3171)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (361,1514)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (361,2188)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (361,2410)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (361,3001)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (362,2217)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (363,1579)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (364,2764)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (365,1893)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (366,1844)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (367,2215)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (368,2364)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (368,3029)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (369,561)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (370,1093)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (370,1139)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (370,2248)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (370,2803)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (371,2106)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (371,2281)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (371,2454)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (371,2742)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (371,3143)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (372,2247)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (373,2331)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (374,1903)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (375,1785)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (376,258)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (376,448)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (376,554)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (376,721)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (376,1266)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (376,1418)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (376,1942)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (376,2441)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (376,2677)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (376,3014)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (376,3240)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (376,3243)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (377,1465)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (377,1930)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (378,11)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (379,582)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (379,2225)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (380,1840)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (380,2328)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (380,2502)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (380,2503)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (381,983)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (381,2207)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (381,2285)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (381,2657)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (381,3022)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (382,758)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (382,1651)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (383,729)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (383,2898)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (384,148)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (384,196)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (384,408)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (384,476)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (384,613)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (384,730)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (384,1594)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (384,2028)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (384,2543)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (385,2316)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (386,1123)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (386,2996)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (387,2581)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (388,2582)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (388,3044)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (389,2497)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (390,1127)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (391,191)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (391,962)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (391,1250)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (392,259)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (392,697)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (392,1129)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (392,1183)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (392,1224)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (392,2329)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (392,2395)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (392,2480)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (393,1724)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (393,1792)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (394,3171)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (395,1192)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (396,1972)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (397,1932)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (398,717)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (398,957)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (399,139)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (399,239)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (399,3077)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (400,1101)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (400,1435)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (401,1160)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (402,2865)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (403,73)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (403,2592)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (404,1811)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (405,1788)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (406,1044)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (407,1959)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (407,2747)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (407,2841)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (408,1190)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (409,1593)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (410,1784)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (411,1745)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (412,3051)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (413,2603)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (414,1918)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (415,2892)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (416,2499)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (417,2385)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (418,1660)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (418,2816)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (419,2365)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (420,2593)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (421,1814)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (422,385)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (422,1097)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (422,1201)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (422,1355)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (422,2283)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (423,402)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (423,435)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (423,2409)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (423,2981)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (424,1208)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (425,704)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (425,2733)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (426,2365)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (427,1394)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (428,3000)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (429,2435)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (430,1452)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (431,2635)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (432,2444)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (433,2018)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (434,344)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (435,2366)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (436,1781)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (436,1793)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (436,1960)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (437,1875)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (438,3085)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (439,277)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (439,2864)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (440,2304)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (441,680)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (441,2999)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (442,594)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (443,2444)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (444,1721)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (445,547)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (446,1291)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (447,2304)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (448,305)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (448,653)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (448,1990)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (448,3072)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (449,1386)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (450,2521)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (451,3129)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (452,1790)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (453,554)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (453,1815)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (453,2097)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (454,1047)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (454,1637)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (454,2591)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (454,2905)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (455,1721)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (456,123)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (456,2423)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (457,2431)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (458,1181)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (458,1614)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (459,1085)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (459,3064)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (460,1877)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (461,551)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (461,1241)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (461,1372)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (461,1403)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (462,2162)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (463,1932)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (464,1877)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (465,524)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (465,619)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (465,804)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (465,941)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (465,1595)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (466,478)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (466,966)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (466,1019)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (466,1133)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (466,2564)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (467,2395)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (468,1883)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (469,966)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (469,1007)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (469,1019)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (469,1033)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (469,1133)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (469,2178)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (469,2678)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (469,2941)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (469,2970)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (470,2739)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (471,1842)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (472,1447)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (473,2369)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (474,2124)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (475,1447)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (476,119)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (476,254)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (476,1357)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (476,1361)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (476,1540)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (476,1842)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (476,2002)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (476,2237)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (476,2467)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (476,2671)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (476,2970)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (476,3060)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (477,2483)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (478,69)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (478,541)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (478,709)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (478,861)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (479,260)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (479,467)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (479,669)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (479,756)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (479,828)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (479,937)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (479,1253)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (480,2663)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (481,709)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (482,1003)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (482,1083)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (482,1423)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (482,1819)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (482,2393)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (483,2432)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (484,2425)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (484,2454)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (485,727)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (485,3177)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (486,55)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (487,777)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (488,1344)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (488,1457)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (488,1704)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (488,1789)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (488,1971)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (488,2123)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (488,2892)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (489,1714)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (490,1230)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (490,2212)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (490,2700)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (491,2743)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (492,3068)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (493,1024)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (493,2404)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (493,3134)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (494,2365)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (494,2732)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (495,3185)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (496,1981)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (496,2541)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (496,2586)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (497,299)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (497,582)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (497,2225)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (498,3161)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (499,839)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (500,111)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (500,373)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (500,574)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (500,1145)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (500,1180)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (500,1805)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (500,2088)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (500,2490)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (500,2916)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (500,3212)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (501,2401)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (502,1521)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (503,2077)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (504,963)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (505,2020)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (505,2021)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (506,2298)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (507,583)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (507,1804)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (508,219)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (509,1758)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (510,5)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (511,838)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (512,2864)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (513,357)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (513,2915)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (514,381)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (515,359)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (516,51)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (517,2894)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (518,1547)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (519,3219)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (520,2054)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (521,1658)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (522,12)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (522,272)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (522,452)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (522,763)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (522,849)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (522,1482)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (522,1806)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (522,2116)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (523,2366)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (524,3140)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (525,2449)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (526,1465)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (527,1646)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (528,1899)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (528,2544)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (528,2559)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (529,2577)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (530,2039)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (531,2329)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (532,655)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (533,2357)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (534,2632)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (535,3080)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (536,2709)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (537,2042)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (538,2917)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (539,1746)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (539,2118)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (539,2235)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (539,2851)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (540,2523)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (541,2059)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (542,2180)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (543,983)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (543,2657)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (544,2247)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (545,1036)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (545,3162)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (546,2024)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (547,2150)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (548,1820)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (549,998)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (549,2660)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (550,99)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (550,422)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (550,810)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (550,1157)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (550,1747)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (550,1767)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (551,107)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (551,200)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (552,2507)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (552,2791)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (553,1499)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (554,543)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (555,1277)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (555,1552)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (555,1836)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (555,2281)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (555,2303)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (555,2373)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (555,2374)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (555,2425)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (555,2454)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (555,2473)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (555,2742)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (555,3187)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (556,1825)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (557,117)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (558,2593)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (559,72)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (560,2937)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (561,2301)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (562,3141)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (563,2496)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (564,306")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (565,21)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (565,237)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (565,404)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (565,1027)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (566,592)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (566,1768)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (566,1949)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (566,2087)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (567,568)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (568,166)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (568,2389)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (569,2468)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (570,2317)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (571,1044)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (571,2797)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (572,2498)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (573,1786)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (573,1895)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (574,2679)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (575,1714)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (576,2281)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (577,1520)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (578,517)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (578,572)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (579,2074)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (579,2540)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (580,3000)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (581,2580)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,52)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,170)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,209)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,278)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,325)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,427)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,722)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,786)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,812)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,934)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,1210)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,1952)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (582,2531)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (583,3242)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (584,487)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (585,2063)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (586,1683)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (587,1114)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (587,1315)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (587,1686)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (587,2902)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (587,3082)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (588,1010)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (589,1062)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (590,3027)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (568,166)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (591,1065)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (592,1884)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (593,1061)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (594,1000)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (595,1260)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (595,1261)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (596,1119)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (597,2490)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (597,2508)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (597,2934)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (598,980)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (599,1203)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (600,1755)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (601,3216)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (602,146)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (603,1093)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (604,963)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (604,1112)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (604,1257)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (604,1259)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (604,1314)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (604,1347)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (604,1578)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (604,1633)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (604,3160)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (604,3174)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (604,3198)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (605,996)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (606,981)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (607,1593)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (608,1025)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (609,518)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (610,1930)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (611,2590)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (612,2931)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (613,249)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (613,579)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (613,657)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (613,2513)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (613,2931)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (614,2829)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (615,1490)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (616,1826)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (617,695)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (617,1675)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (618,649)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (618,1245)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (618,1276)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (618,2553)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (618,2609)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (619,1762)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (620,3163)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (621,655)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (622,1782)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (622,3128)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (623,2477)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (623,2595)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (623,2858)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,972)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,1104)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,1147)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,1454)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,1474)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,1685)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,1845)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,1883)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,1987)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,2146)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,2153)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,2229)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,2410)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,2729)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (624,3037)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (625,252)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (626,2224)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (627,1334)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (627,2498)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (628,2850)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (629,2448)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (630,2938)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (631,1255)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (631,2190)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (632,2056)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (633,198)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (634,1324)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (634,1498)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (634,3073)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (634,3146)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (635,370)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (635,590)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (635,815)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (635,1252)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (635,2350)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (635,2515)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (635,2819)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (636,2634)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (637,1700)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (638,2388")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (639,1654)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (640,353)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (640,1202)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (640,2008)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (640,2069)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (641,1518)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (642,1373)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (643,2603)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (643,2928)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (643,3047)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (643,3155)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (644,605)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (644,671)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (645,1483)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (645,2012)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (645,2353)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (645,2846)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (646,2746)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (647,2648)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (647,2872)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (647,2944)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (648,2576)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (648,2681)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (649,865)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (650,2360)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (651,984)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (651,1412)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (651,2016)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (651,2151)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (652,3138)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (653,2498)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (654,2331)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (655,1737)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (655,2249)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (656,1344)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (656,1356)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (656,1585)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (656,2123)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (657,1776)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (657,1847)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (657,2315)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (658,2263)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (658,2451)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (659,2139)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (660,1783")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (661,719")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (661,2063")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (661,2319")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (662,2528")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (663,39")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (664,2706")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (665,2432")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (666,1481")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (667,1480")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (668,1634")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (669,2620")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (670,1545)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (671,2286)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,1054)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,1073)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,1093)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,1137)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,1248)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,1251)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,1293)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,1318)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,1507)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,1738)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,1763)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,1974)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2169)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2279)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2294)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2295)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2334)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2352)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2421)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2501)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2523)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2654)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2664)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2689)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2709)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2741)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2803)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,2808)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (672,3055)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (673,588)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (673,2946)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (674,1761)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (675,2023)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (676,1038)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (676,1233)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (676,1626)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (676,2911)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (677,2885)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (678,2413)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (679,3163)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (680,1502)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (680,2325)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (680,3040)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (681,2629)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (682,2652)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (683,340)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (683,591)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (683,650)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (683,678)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (683,851)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (684,2305)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (685,2104)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (686,2328)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (687,2164)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (688,2172)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (688,2173)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (689,2453)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (690,546)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (690,726)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (691,2682)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (692,1443)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (692,2355)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (693,330)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (693,925)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (693,1032)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (693,1467)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (693,1917)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (693,2005)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (694,2291)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (695,1258)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (695,1673)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (696,2805)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (697,788)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (698,580)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (698,750)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (698,870)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (698,1065)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (698,2415)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (699,2899)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (700,1275)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (700,1288)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (700,1552)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (700,1836)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (700,1879)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (700,2320)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (700,3187)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (700,3196)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (701,2695)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (702,1393)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (702,1838)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (702,2545)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (703,433)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (703,896)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (703,936)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (703,1022)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (703,1152)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (703,1572)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (703,2256)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (703,3127)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (703,3186)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (704,1930)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (705,2244)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (706,2737)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (707,1375)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (707,3232)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (708,1895)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (709,2801)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (710,1163)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (711,2304)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (712,215)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (712,999)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (713,999)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (713,2649)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (714,36)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (714,136)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (714,216)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (714,217)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (714,437)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (714,599)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (714,600)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (714,791)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (714,)2510")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (715,2213)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (716,1748)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (717,2800)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (718,1003)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (718,1166)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (718,2393)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (718,2818)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (719,1850)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (719,2784)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (719,2997)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (720,1200)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (720,1661)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (720,1754)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (720,2183)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (720,2208)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (720,2406)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (721,3144)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (722,1491)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (723,338)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (723,426)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (723,2117)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (723,2703)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (724,2787)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (724,2835)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (725,2458)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (726,1998)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (727,908)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (728,766)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (729,1952)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (730,46)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (730,226)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (730,502)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (731,713)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (731,1733)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (731,2429)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (731,2980)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (732,1396)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (732,1868)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (732,1636)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (733,1471)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (734,967)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (734,1540)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (735,1893)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (735,2238)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (736,1278)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (736,2125)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (737,14)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (737,76)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (737,1228)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (737,1443)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (738,2848)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (739,878)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (740,2605)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (741,191)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (741,261)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (741,1254)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (741,2537)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (742,1326)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (743,2494)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (744,621)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (745,1123)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (746,2435)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (747,3087)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (748,2118)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (749,2053)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (750,444)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (750,1242)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (751,2522)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (752,2051)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (753,560)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (754,2286)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (755,49)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (755,72)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (755,520)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (755,575)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (755,1980)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (756,1311)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (756,)2943")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (757,803)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (758,2867)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (759,2236)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (760,1309)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (760,1627)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (760,2550)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (761,2674)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (762,2522)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (763,2629)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (764,754)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (765,1947)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (766,464)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (766,1894)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (767,268)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (767,341)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (767,689)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (767,841)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (768,3189)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (769,96)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (770,32)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (771,1621)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (772,85)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (772,268)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (772,341)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (772,2847)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (772,3166)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (773,2085)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (774,1897)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (775,1353)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (775,1628)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (775,1877)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (776,1432)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (776,1567)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (777,1)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (777,627)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (777,1786)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (777,1962)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (777,2344)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (777,2492)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (778,733)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (779,2605)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (780,2351)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (781,62)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (782,872)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (782,2126)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (783,1297)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (784,365)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (785,350)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (785,449)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (785,1689)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (786,1594)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (787,2735)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,718)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,771)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,832)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,972)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,1005)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,1104)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,1147)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,1148)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,1247)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,1474)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,1937)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,1987)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,2067)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,2146)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,2153)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,2227)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,2229)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,2397)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,2398)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,2410)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,2729)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (788,3037)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (789,1437)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (790,2784)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (791,2338)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (792,2285)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (793,2107)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (794,2496)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (795,1607)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (795,2499)")
dbSendQuery(conn = db.auth,
            "INSERT6INTO AUTH_PAPER
         VALUES (796,1594)")
dbSendQuery(conn = db.auth,
            "INSERT6INTO AUTH_PAPER
         VALUES (796,2326)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (797,1963)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (798,2887)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (798,2933)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (799,1339)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (799,1714)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (799,2190)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (799,2306)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (799,2385)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (799,2635)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (800,105)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (800,624)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (801,2183)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (802,2580)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (803,1107)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (804,828)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (804,937)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (805,115)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (805,1227)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (805,2177)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (805,2307)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (805,2356)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (805,2475)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (805,2607)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (805,2627)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (805,2765)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (805,3059)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (806,3066)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (807,2996)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (808,1414)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (808,1477)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (808,1857)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (808,2017)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (809,1528)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (810,1799)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (811,1889)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (812,734)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (812,736)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (813,996)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (814,2902)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (815,73)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (815,415)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (816,1392)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (817,3159)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (818,3164)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (819,3067)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (820,2485)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (821,101)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (821,1993)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (821,1996)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (821,2128)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (822,927)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (823,1271)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (824,25)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (824,441)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (824,687)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (824,1118)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (825,1816)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (826,60)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (826,2745)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (827,3231)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (828,1770)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (829,2282)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (829,2722)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (830,1956)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (830,1964)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (830,2309)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (831,1384)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (832,2108)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (833,49)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (833,890)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (833,1328)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (833,1980)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (833,2638)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (833,3065)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (834,1928)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (835,3115)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (836,1362)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (837,803)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (838,1466)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (839,1560)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (840,324)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (840,609)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (841,1875)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (842,1218)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (843,1534)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (844,176)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (844,339)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (844,2144)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (844,2464)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (845,1304)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (846,627)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (847,1403)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (848,2128)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (849,277)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (850,42)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (850,391)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (850,477)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (850,629)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (850,1095)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (850,1158)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (850,2549)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (851,2928)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (852,610)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (853,2724)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (854,1378)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (854,1801)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (854,2971)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (854,3205)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (855,916)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (855,1153)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (855,1742)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (855,1973)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (855,2620)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (855,2792)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (855,3150)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (856,2282)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (857,2816)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (858,65)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (858,67)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (859,1986)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (860,2731)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (861,1014)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (862,1585)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (863,806)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (864,759)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (865,33)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (865,110)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (865,294)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (865,421)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (865,501)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (865,901)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (866,2335)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (866,2943)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (867,2249)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (868,2051)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,5)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,148)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,222)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,476)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,613)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,730)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,799)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,1018)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,1244)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,1340)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,1667)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,1727)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,2543)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,2754)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (869,2966)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (870,2098)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (871,2023)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (872,816)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (873,2049)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (874,2734)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (875,426)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (875,2117)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (876,868)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (876,1550)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (876,1910)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (877,1963)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (877,2213)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (877,2486)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (878,1039)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (878,1113)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (878,1407)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (878,2375)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (879,2972)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (880,805)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (881,103)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (881,400)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (881,703)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (881,913)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (881,2945)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (882,2088)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (883,3092)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (884,1178)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (884,2493)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (885,2763)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (886,2572)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (886,2573)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (887,33)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (887,110)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (887,340)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (887,421)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (887,678)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (888,1744)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (889,1903)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (890,275)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (890,850)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (891,210)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (891,288)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (891,457)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (892,1088)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (893,100)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (893,233)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (893,234)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (894,2330)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (895,1825)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (896,28)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (897,926)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (898,1111)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (899,1605)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (900,2409)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (901,1082)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (901,1174)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (902,1719)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (902,2630)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (903,203)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (903,546)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (904,1048)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (905,2216)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (906,1972)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (907,1140)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (908,395)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (908,1404)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (909,176)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (909,339)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (910,469)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (910,557)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (910,1496)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (910,2192)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (910,2219)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (910,2220)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (910,3005)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (911,518)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (912,702)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (913,1100)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (914,3179)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (915,93)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (915,2865)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (916,1481)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (917,1973)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (917,2649)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (918,2492)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (918,2704)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (918,2873)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (919,336)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (919,494)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (919,2563)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (919,3050)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (920,149)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (920,311)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (920,1262)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (920,1913)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (920,2235)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (920,2836)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (921,2604)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (921,2613)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (921,2704)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (922,369)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (923,129)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (923,270)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (923,694)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (923,1120)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (923,1141)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (923,1977)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (923,2046)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (923,2386)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (923,2985)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (923,3104)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (924,100)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (924,211)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (925,76)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (925,1228)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (926,372)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (927,1546)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (928,2599)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (929,1322)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (930,961)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (931,126)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (931,2121)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (931,2149)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (932,98)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (932,167)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (932,280)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (932,544)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (932,874)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (932,1772)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (932,2239)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (933,2951)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (934,503)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (934,650)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (934,1170)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (935,2550)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (936,687)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (936,2345)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (937,2969)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (938,165)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (939,3158)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (939,3218)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (940,1412)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (941,2035)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (941,2453)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (941,2570)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (942,2870)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (943,133)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (944,77)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (944,158)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (944,526)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (944,853)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (944,2868)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (945,68)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (946,1045)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (946,1533)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (947,1800)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (948,751)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (948,899)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (948,1360)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (949,1277)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (949,1518)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (949,1803)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (949,2749)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (950,2942)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (951,1348)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (951,1463)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (951,2062)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (951,2440)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (951,2744)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (951,3096)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (952,1642)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (953,318)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (954,1968)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (955,1800)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (956,2879)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (957,415)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (957,703)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (957,720)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (958,1160)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (958,2396)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (958,2653)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (959,1622)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (959,2946)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (960,1603)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (961,354)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (962,620)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (962,1544)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (963,506)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (964,126)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (964,2121)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (964,2149)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (965,2208)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (966,543)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (967,1127)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (967,1713)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (967,1966)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (967,2327)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (967,2796)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (968,2088)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (969,2844)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (970,89)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (970,279)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (971,1646)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (972,2032)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (973,1929)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (974,2252)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (975,872)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (975,2126)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (976,1348)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (977,2134)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (978,644)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (978,824)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (979,80)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (980,1638)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (981,1515)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (982,916)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (982,968)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (982,1161)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (982,1270)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (982,1681)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (982,3090)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (983,1061)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (984,705)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (985,2796)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (986,3027)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (987,1782)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (988,2796)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (989,2996)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (990,486)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (991,142)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (991,453)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (991,827)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (991,882)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (992,2138)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (993,2137)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (994,2937)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (995,1949)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (996,2885)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (997,)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (998,206)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (998,397)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (998,857)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (998,2106)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (998,3143)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (999,2297)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1000,988)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1000,1242)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1000,2322)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1001,1029)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1002,3008)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1003,1181)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1004,296)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1004,1211)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1004,1781)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1004,1793)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1004,1960)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1004,1978)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1004,2392)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1004,2587)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1004,2964)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,214)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,357)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,375)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,481)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,978)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,1305)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,1420)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,2892)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,2907)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,2982)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,3088)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,3142)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,3175)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1005,3248)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1006,1485)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1006,3131)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1006,3234)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1007,1529)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1008,2775)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1009,1892)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1009,2750)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1009,3158)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1010,724)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1011,2817)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1012,673)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1012,1484)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1012,1545)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1012,2774)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1013,885)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1014,2815)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1015,2706)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1016,1311)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1016,1707)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1016,2365)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1016,3000)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1017,1311)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1017,2943)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1018,2839)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1019,2992)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1020,2709)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1021,2453)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1022,1778)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1023,176)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1023,208)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1023,339)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1023,1702)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1023,2006)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1023,2139)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1023,2144)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1023,2324)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1023,2461)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1023,2464)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1023,2916)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1023,3013)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1024,284)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1024,1866)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1025,88)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1025,321)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1025,1028)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1025,1095)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1025,1159)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1025,2114)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1025,3067)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1026,1091)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1027,1677)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1028,2)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1029,455)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1029,873)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1030,230)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1030,683)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1031,188)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1032,3211)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1033,1389)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1034,85)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1034,268)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1034,341)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1034,3166)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1035,15)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1035,540)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1035,950)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,793)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,893)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,1240)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,1397)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,1496)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,1552)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,1722)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,1723)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,2113)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,2637)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,2900)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,2968)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,3005)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1036,3149)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1037,2077)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1038,366)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1039,2345)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1040,1298)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1041,913)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1042,2029)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1042,2768)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1043,1144)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1043,2200)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1044,225)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1044,354)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1044,2037)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1045,27)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1046,2482)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1047,1693)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1048,970)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1049,233)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1049,234)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1049,465)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1049,733)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1050,2446)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1051,886)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1052,1904)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1053,348)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1054,1277)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1054,1783)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1054,1964)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1054,2309)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1054,2437)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1054,2438)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1055,317)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1056,2775)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1057,906)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1058,1517)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1058,1945)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1059,1779)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1060,1486)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1060,2209)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1060,3159)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1061,2722)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1062,3105)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1063,1650)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1064,518)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1064,1387)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1064,2974)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1065,1079)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1065,2156)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1065,2219)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1065,2220)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1065,2950)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1065,3005)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1066,2001)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1067,1985)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1068,842)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1069,2075)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1070,2165)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1071,2970)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1072,1830)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1072,1880)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1073,1006)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1073,1047)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1073,1080)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1073,2556)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1073,2902)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1074,596)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1075,3081)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1076,2057)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1076,2445)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1077,392)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1078,2165)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1079,1783)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1080,2219)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1080,2220)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1081,1402)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1082,147)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1082,418)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1082,419)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1082,2721)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1083,2799)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1084,2735)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1085,2055)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1086,122)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1087,2053)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1088,3137)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1089,207)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1090,904)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1090,1464)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1090,2394)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1090,3194)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1091,1219)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1092,265)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1092,500)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1093,16)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1093,525)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1094,118)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1095,2570)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1096,221)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1097,1527)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1097,1671)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1098,2032)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1099,776)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1100,420)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1101,859)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1101,2083)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1102,1076)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1102,1289)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1102,1508)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1102,3060)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1103,1268)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1103,2725)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1104,1212)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1104,1571)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1104,1937)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1104,1987)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1104,2067)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1104,2318)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1104,2397)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1104,2398)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1104,2481)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1104,2740)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1105,1854)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1106,1493)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1107,399)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1108,2802)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1109,2965)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1109,3076)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1109,3148)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1110,2051)")








dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1111,2869)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1112,73)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1113,3164)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1114,1057)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1115,1707)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1116,2437)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1116,2438)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1116,3172)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1117,1354)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1117,2870)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1117,2954)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1117,3151)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1118,2196)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1119,2843)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1120,577)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1120,1216)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1120,1376)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1120,1536)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1120,1988)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1120,2210)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1120,3012)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1121,3240)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1122,1965)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1122,2422)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1122,2728)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1123,2361)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1123,3155)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1124,1739)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1124,2278)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1124,2456)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1125,2460)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1126,1099)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1126,1487)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1126,2211)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1127,2563)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1127,2968)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1127,3038)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1128,2988)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1129,1940)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1130,1933)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1131,875)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1131,1997)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1132,1066)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1133,53)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1134,454)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1135,2925)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1136,3191)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1137,28)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1137,1998)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1138,1152)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1139,421)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1140,303)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1140,602)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1140,2071)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1141,599)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1141,906)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1141,1396)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1141,1744)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1141,1944)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1141,2636)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1141,2946)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,62)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,129)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,270)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,490)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,649)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,654)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,694)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,761)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,977)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,1120)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,1141)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,1245)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,1276)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,1317)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,1553)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,1766)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,1832)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,1948)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,1977)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,2046)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,2386)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,2452)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,2536)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,2609)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,2781)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,2862)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,2882)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,2985)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,3116)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1142,3227")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1143,579)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1144,1067)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1144,3083)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1145,723)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1146,254)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1146,1016)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1146,1361)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1146,2178)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1146,2313)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1146,2427)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1146,2467)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1146,2533)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1146,2913)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1146,2941)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1146,3060)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1147,2149)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1148,322)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1148,612)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1148,1352)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1148,1830)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1148,2651)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1148,2666)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1148,2668)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1148,2721)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1148,2790)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1149,2471)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1149,2696)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1150,269)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1150,1490)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1150,1896)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1151,1231)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1152,710)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1153,356)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1154,30)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1154,519)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1155,1811)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1155,2136)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1155,2310)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1156,875)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1156,1997)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1157,329)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1157,783)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1157,784)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1157,1294)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1158,584)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1159,170)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1159,173)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1159,230)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1159,273)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1159,362)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1159,411)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1159,545)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1159,785)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1159,2612)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1160,1451)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1160,1936)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1160,3153)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1161,1959)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1161,2747)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1162,1149)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1163,1339)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1163,2376)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1163,3184)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1164,2081)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1165,260)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1165,669)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1166,1783)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1167,777)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1168,2365)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1169,8)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1170,15)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1170,266)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1170,385)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1170,403)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1170,540)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1170,950)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1170,1355)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1170,1535)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1171,1419)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1172,1292)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1173,361)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1173,535)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1173,2065)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1173,2924)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1174,2810)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1175,7)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1175,763)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1175,1797)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1175,1825)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1175,1890)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1175,1954)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1175,2560)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1176,646)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1176,715)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1176,889)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1177,1599)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1178,852)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1178,1953)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1178,2091)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1178,2474)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1179,2583)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1179,3108)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1179,3113)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1180,1577)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1181,840)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1182,511)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1182,1249)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1183,493)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1183,652)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1183,1284)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1183,1588)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1183,1731)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1183,1790)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1183,2174)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1183,2175)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1183,2372)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1183,2663)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1183,2837)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1183,3197)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1184,2296)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1184,2328)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1185,1769)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1185,1838)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1185,1982)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1185,2542)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1185,2655)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1186,1088)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1187,1656)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1188,792)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1189,275)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1189,378)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1189,466)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1189,636)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1189,850)")
dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1190,)")



























dbSendQuery(conn = db.auth,
            "INSERT INTO AUTH_PAPER
         VALUES (1101,)")dbSendQuery(conn = db.auth,
            "CREATE TABLE PAPERS
       (paper_id INTEGER PRIMARY KEY,
        DOI TEXT,
       	year INTEGER,
        title TEXT,
        citation_ct INTEGER)")


## read csv file
papers=scan("paperList.txt",sep="\n",what="")
head(papers)
tmp1 <- lapply(papers,function(s)unlist(strsplit(s,'"')))
years <- unlist(lapply(tmp1,function(x) return(x[])))
paper_id<-unlist(lapply(tmp1,function(x) return(x[0])))



## write the csv data into database
dbWriteTable(conn = db.auth, name = "PAPERS", papers, overwrite=T,row.names = FALSE)

## check the content of the database
head(dbReadTable(db.auth, "AUTHS"))








