#' Initiate the uibe project 
#' 
#' @docType package
#' @name ruibe
NULL

#' Qutke host server
host<-list(
  host1='http://test-nquote.qutke.com',
  host2='http://10.150.145.105:3014/qutke_inner_api_data'
)

#' Qutke Data API
apis<-list(
  TradingDay=paste(host$host1,'tradingDay',sep='/'),
  KeyMap=paste(host$host1,'keymap',sep='/'),
  stock=paste(host$host1,'mktData',sep='/'),
  stockFwd=paste(host$host1,'mktFwdDaily',sep='/'),
  index=paste(host$host1,'mktDataIndex',sep='/'),
  industry=paste(host$host1,'industry',sep='/'),
  fund=paste(host$host1,'fund',sep='/')
)

#' Initiate the uibe project 
#' @title Initiate
#' @param key character
#' @return nothing
#' @author Dan Zhang
#' 
#' @examples
#' init(key='aaa')
#' 
#' @export 
#'
init <- function (key) {
  options(stringsAsFactors = FALSE)
  if(is.null(key)) stop("ERROR: Key is not empty!")
  print("Initiate the Qutke UIBE project ")
  invisible()
}


#' 
#' Get data from HTTP
#' @title Get data from HTTP
#' @importFrom httr GET
#' @importFrom httr content
#' 
#' @param name character
#' @param args list
#' @param key character
#' @return data.frame
#' @author Dan Zhang
#' 
#' @examples
#' \dontrun{
#' TradingDay<-getData('TradingDay',key='xxxx')
#' 
#' KeyMap1<-getData('KeyMap',args=list(qtid='000001.SZ'),key='xxxx')
#'
#' stock1<-getData('stock',args=list(qtid='000001.SZ'),key='xxxx')
#' stock2<-getData('stock',args=list(date='2015-09-29'),key='xxxx')
#' stock3<-getData('stock',args=list(qtid='000001.SZ',date='2015-09-29'),key='xxxx')
#'
#' stockF1<-getData('stockFwd',args=list(qtid='000001.SZ'),key='xxxx')
#' stockF2<-getData('stockFwd',args=list(date='2015-09-29'),key='xxxx')
#' stockF3<-getData('stockFwd',args=list(qtid='000001.SZ',date='2015-09-29'),key='xxxx')
#'
#' index1<-getData('index',args=list(qtid='000001.SH'),key='xxxx')
#' index2<-getData('index',args=list(date='2015-09-29'),key='xxxx')
#' index3<-getData('index',args=list(qtid='000001.SH',date='2015-09-29'),key='xxxx')
#'
#' industry0<-getData('industry',key='xxxx')
#' industry1<-getData('industry',args=list(qtid='000001.SZ'),key='xxxx')
#' industry2<-getData('industry',args=list(qtid='000001.SZ',sw1='sw1'),key='xxxx')
#' industry3<-getData('industry',args=list(qtid='000001.SZ',sw1='sw1',sw2='sw2'),key='xxxx')
#' industry4<-getData('industry',args=list(qtid='000001.SZ',sw1='sw1',sw2='sw2',sw3='sw3'),key='xxxx')
#'
#' fund1<-getData('fund',args=list(qtid='000001.SZ'),key='xxxx')
#' fund2<-getData('fund',args=list(date='2015-09-29'),key='xxxx')
#' fund3<-getData('fund',args=list(qtid='000001.SZ',date='2015-09-29'),key='xxxx')
#' }
#' 
#' @export 
getData<-function(name,args=NULL,key=NULL){
  if(is.null(key))  stop("ERROR: Key is not empty!")

  url <- apis[[name]]
  if(is.null(url))  stop("ERROR: name is not match!")
  
  res<-GET(url, query=args)
  return(content(res,encoding='UTF-8'))
  
}

#' 
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
#' @examples
#' \dontrun{
#' postData(stock1,name='abc',key='xxxx')
#' postData(industry0,name='industry0',key='xxxx')
#' }
#' 
#' @export 
postData<-function(df,name=NULL,key=NULL){
  if(is.null(key)) stop("ERROR: Key is not empty!")
  if(nrow(df)>2000) stop("ERROR: Data rows is too large!")
  if(ncol(df)>15) stop("ERROR: Data columns is too large!")

  url<-paste(host$host2,key,sep="/")
  json<-list(data=toJSON(df),title=name)
  
  res<-POST(url, body=json,encode="json")
  return(content(res))
}



#' 
#' Cast Date to Character
#' @title Cast Date to Ctring
#' @param val a date string as yyyy-MM-dd
#' @return character
#' @export 
#' @author Dan Zhang
#' @examples
#' as.qtDate()
#' as.qtDate('2015-10-10')
#'
as.qtDate<-function(val=Sys.Date()){
  as.character(as.numeric(as.POSIXct(as.Date(val)))*1000)
}




