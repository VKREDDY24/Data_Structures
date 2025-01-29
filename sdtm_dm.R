# SDTM.DM

#install.packages("dplyr")
library(dplyr)
#install.packages("haven")
library(haven)
#install.packages("stringr")
library(stringr)
#https://www.appsilon.com/post/r-lubridate
#install.packages("lubridate")
library(lubridate)

#import SAS dataset
dm_1 <- haven::read_sas("dm.sas7bdat")
ex_1 <- haven::read_sas("ex.sas7bdat")
ds_1 <- haven::read_sas("ds.sas7bdat")

#adding new variables to work dataset
dm_2 <- dplyr::mutate(dm_1, STUDYID="PER977-02-011", DOMAIN="DM", SUBJID=SubjectID)

#deriving USUBJID using the paste0 function to concatenate STUDYID and SUBJECTID
dm_3 <- dplyr::mutate(dm_2,USUBJID=paste0(str_trim(STUDYID),"-",str_trim(SubjectID)))
dm_3 <- dplyr::filter(dm_3,SubjectStatus=="Randomized")

# class(ex_1$EXDTTMR)
class(ex_1$EXSTDTTM)
#Convert RAW.EX.EXADMMR to character value when RAW.EX.VISIT='DAY 1', as the first exposure datetime.
ex_1 <- dplyr::filter(ex_1,SubjectStatus=="Randomized")
ex_2 <- dplyr::filter(ex_1,Visit=="DAY 1")
ex_3 <- dplyr::filter(ex_1,Visit=="DAY 3")

#Converting numeric datetime to character datetime
ex_4<-dplyr::mutate(ex_2,RFSTDTC= paste0(as.Date(EXDTTMR),"T",format(EXDTTMR, "%H:%M:%S")))
ex_5<-dplyr::mutate(ex_3,RFENDTC= paste0(as.Date(EXENDTTM),"T",format(EXENDTTM, "%H:%M:%S")))
ex_6<-dplyr::mutate(ex_5,RFXSTDTC= paste0(as.Date(EXSTDTTM),"T",format(EXSTDTTM, "%H:%M:%S")))
ex_7<-dplyr::mutate(ex_6,RFXENDTC= paste0(as.Date(EXENDTTM),"T",format(EXENDTTM, "%H:%M:%S")))

#merge ex_4 and ex_5
ex_8<-merge(ex_4, ex_7, by="SubjectID")
dm_4<-merge(dm_3, ex_8, by="SubjectID")
