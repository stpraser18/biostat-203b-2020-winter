ADMISSIONS <- read.csv("/home/203bdata/mimic-iii/ADMISSIONS.csv")
View(ADMISSIONS)
as.tibble(ADMISSIONS)
#Extract info from admission time column
as.data.frame( df[,4], drop=false)
separate(table3, ADMITTIME, sep = " ",
         into = c("date", "time"))






