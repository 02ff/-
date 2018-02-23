library(RSelenium)

site<-"http://sis109.sogang.ac.kr/sap/bc/bsp/sap/zcm001/default.htm"

remDr <- remoteDriver(remoteServerAddr = "localhost", 
                      port = 4445L, 
                      browserName = "chrome")
remDr$open()
remDr$navigate(site)

element1<-c()

element1<-remDr$findElement(using = 'id',"sap-user")
element1$sendKeysToElement(list("<Your ID>"))

element1<-remDr$findElement(using = 'id',"sap-password")
element1$sendKeysToElement(list("<Your PASSWORD>"))

element1<-remDr$findElement(using = "tag name", "a")
element1$clickElement()

element1<-remDr$findElement(using = "id", "WDBF-img")
element1$clickElement()

remDr$sendKeysToActiveElement(list(key = "tab"))
remDr$sendKeysToActiveElement(list("<Your CLASS CODE>"))
remDr$sendKeysToActiveElement(list(key = "enter"))

element1<-remDr$findElement(using = 'tag name',"a")
element1$clickElement()

while(1){
  remDr$sendKeysToActiveElement(list(key = "enter"))
}
