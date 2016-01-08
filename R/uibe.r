#' Initiate the uibe project 
#' 
#' @docType package
#' @name ruibe
NULL

#' Deprecated print
#' @title Deprecated print
#' @export 
desc<-function(){
  print("Deprecated!")
  print("Please download new package: https://github.com/qutke/qutke")
  print("API document: https://console.qutke.com/api.html")
  invisible()
}

#' Initiate the uibe project 
#' @title Initiate
#' @param key character
#' @author Dan Zhang
#' 
#' @examples
#' init(key='aaa')
#' 
#' @export 
init <- function (key) {
  desc()
}


#' Get data from HTTP
#' @title Get data from HTTP
#' @importFrom httr GET
#' @importFrom httr content
#' 
#' @param data character
#' @param key character
#' @param vars character
#' @param qtid character
#' @param startdate character
#' @param enddate character
#' @param sw1 character
#' @param sw2 character
#' @param sw3 character
#' 
#' @return list
#' @author Dan Zhang
#' 
#' @examples
#' \dontrun{
#' TradingDay<-getData('tradingDay',key='xxx')
#' 
#' KeyMap1<-getData(data='keyMap',qtid='000001.SZ',key='xxx')
#'
#' stock1<-getData(data='mktDaily',qtid='000001.SZ',key='xxx')
#' stock2<-getData(data='mktDaily',date='2015-09-29',key='xxx')
#' stock3<-getData(data='mktDaily',qtid='000001.SZ',date='2015-09-29',key='xxx')
#'
#' stockF1<-getData(data='mktFwdDaily',qtid='000001.SZ',key='xxx')
#' stockF2<-getData(data='mktFwdDaily',date='2015-09-29',key='xxx')
#' stockF3<-getData(data='mktFwdDaily',qtid='000001.SZ',date='2015-09-29',key='xxx')
#'
#' index1<-getData(data='mktDataIndex',qtid='000001.SH',key='xxx')
#' index2<-getData(data='mktDataIndex',date='2015-09-29',key='xxx')
#' index3<-getData(data='mktDataIndex',qtid='000001.SH',date='2015-09-29'),key='xxx')
#'
#' industry0<-getData(data='industryType',key='xxx')
#' industry1<-getData(data='industryType',qtid='000001.SZ',key='xxx')
#' industry2<-getData(data='industryType',qtid='000001.SZ',sw1='sw1',key='xxx')
#' industry3<-getData(data='industryType',qtid='000001.SZ',sw1='sw1',sw2='sw2',key='xxx')
#' industry4<-getData(data='industryType',qtid='000001.SZ',sw1='sw1',sw2='sw2',sw3='sw3',key='xxx')
#'
#' fund1<-getData(data='financialIndex',qtid='000001.SZ',key='xxx')
#' fund2<-getData(data='financialIndex',date='2015-09-29',key='xxx')
#' fund3<-getData(data='financialIndex',qtid='000001.SZ',date='2015-09-29',key='xxx')
#' 
#' sm1<-getData(data='securitiesMargin',date='2015-09-29',key='xxx')
#' }
#' 
#' @export 
getData<-function(data,key,vars=NULL,qtid=NULL,startdate=NULL,enddate=NULL,sw1=NULL,sw2=NULL,sw3=NULL){
  desc()
}



#' POST data from HTTP
#' @title POST data from HTTP
#' @importFrom httr POST
#' @importFrom httr content
#' @importFrom RJSONIO toJSON
#' 
#' @param df data.frame
#' @param name character
#' @param key character
#' @return list
#' @author Dan Zhang
#' 
#' @examples
#' \dontrun{
#' postData(stock1,name='abc',key='xxxx')
#' postData(industry0,name='industry0',key='xxxx')
#' }
#' 
#' @export 
postData<-function(df,name=NULL,key=NULL){
  desc()
}


#' Cast Date to Character
#' @title Cast Date to Ctring
#' @param val a date string as yyyy-MM-dd
#' @return character
#' @author Dan Zhang
#' @examples
#' as.qtDate()
#' as.qtDate('2015-10-10')
#' @export 
as.qtDate<-function(val=Sys.Date()){
  desc()
}



