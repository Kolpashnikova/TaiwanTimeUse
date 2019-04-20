setwd("C:/Users/Kamila/Dropbox/2019/W/time use graphics")

mydf <- read.table('data/ttus.tsv', header=TRUE, sep="\t")
str(mydf)


name <- strsplit(as.character(mydf$name), ",")
num <- strsplit(as.character(mydf$num), ",")

day = name

for(i in 1:800){
    for(j in 1:length(name[[i]])){
        day[[i]][j] = paste(name[[i]][j],num[[i]][j],sep=',')
    }
}

newday <- rep(list(NULL),800)

library(stringr)

for(i in 1:800){
    for(j in 1:length(day[[i]])){
        newday[[i]][1] = paste(newday[[i]][1],day[[i]][j],sep=',')
    }
}

newday <- rep(list(NULL),800)
a <- rep(list(NULL),800)

for(i in 1:800){
    for(j in 1:length(day[[i]])){
        newday[[i]][1] = paste(newday[[i]][1],day[[i]][j],sep=',')
    }
    a[[i]][1]<-substring(newday[[i]][1], 2)
}

b <-t(as.data.frame(a))
df = cbind(mydf,b)

df<-df[,c(1, 4) ]

colnames(df)[2]<-"day"
for(i in 1:800){
    df$b[i]<- gsub(" ","",df$day[i]) 
}

df<-df[,c(1, 3) ]

colnames(df)[2]<-"day"

write.table(df, file='data/ttus1.tsv', sep="\t", row.names = F)

## below I just for the reference
var act_codes = [
    { code: "010101", "index": "0", "short": "Sleeping", "desc": "Sleeping"},
    { code: "010000", "index": "1", "short": "Personal Care", "desc": "Personal Care"},
    { code: "020000", "index": "2", "short": "Household Work", "desc": "Household Activities"},
    { code: "030000", "index": "3", "short": "Caring for Household Members", "desc": "Caring for and Helping Household Members"},
    { code: "040000", "index": "4", "short": "Caring for Non-Household Members", "desc": "Caring for and Helping Non-Household Members"},
    { code: "050000", "index": "5", "short": "Work", "desc": "Work"},
    { code: "060000", "index": "6", "short": "Education", "desc": "Education"},
    { code: "070000", "index": "7", "short": "Shopping", "desc": "Shopping"},
    { code: "080000", "index": "8", "short": "Personal Care Services", "desc": "Professional and Personal Care Services"},
    { code: "110000", "index": "9", "short": "Eating and Drinking", "desc": "Eating and Drinking"},
    { code: "120000", "index": "10", "short": "Leisure", "desc": "Socializing, Relaxing, and Leisure"},
    { code: "130000", "index": "11", "short": "Sports", "desc": "Sports, Exercise, and Recreation"},
    { code: "140000", "index": "12", "short": "Religion", "desc": "Religious and Spiritual Activities"},
    { code: "150000", "index": "13", "short": "Volunteer", "desc": "Volunteer Activities"},
    { code: "160000", "index": "14", "short": "Phone Calls", "desc": "Telephone Calls"},
    { code: "180000", "index": "16", "short": "Traveling", "desc": "Traveling"},
    { code: "other", "index": "15", "short": "Other", "desc": "Other"},
    ];

library(foreign)

new_df<-read.dta("data/Taiwan_seq.dta")

for(i in 1:96){
    label <- paste("newvar", i, sep="_")
    assign(label, value =0) 
}

for(j in 1:14017){
    
    for(i in 1:96){
        name = paste('var',i,sep='')
        name_1 =paste('var',i-1,sep='')
        if (name[j] == name_1[j]){
            number = number + 1
        } else if (name == var1) {
            number = 1
        } else {
            number = number - i
        }
    }
}