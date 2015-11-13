#' Initiate the uibe project 
#' 
#' @docType package
#' @name ruibe
NULL

#apiurl<-'http://localhost:8090/api'
apiurl<-'http://datas.qutke.com/api'

#' Qutke host server
host<-list(
  #host1='http://datas.qutke.com',
  #host2='http://uibe.qutke.com/api/qutke_inner_api_data'
  host1='http://localhost:8090/api/qutkedata',
  host2='http://localhost:8090/api/adduserdata'
)

#' Qutke Data API
apis<-list(
  tradingDay=paste(host$host1,'tradingDay',sep='/'),
  keyMap=paste(host$host1,'keyMap',sep='/'),
  mktDaily=paste(host$host1,'mktDaily',sep='/'),
  mktFwdDaily=paste(host$host1,'mktFwdDaily',sep='/'),
  mktDataIndex=paste(host$host1,'mktDataIndex',sep='/'),
  industryType=paste(host$host1,'industryType',sep='/'),
  financialIndex=paste(host$host1,'financialIndex',sep='/'),
  securitiesMargin=paste(host$host1,'securitiesMargin',sep='/')
)

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
  options(stringsAsFactors = FALSE)
  if(is.null(key)) stop("ERROR: Key is not empty!")
  print("Initiate the Qutke UIBE project ")
  invisible()
}


#' Get data from HTTP
#' @title Get data from HTTP
#' @importFrom httr GET
#' @importFrom httr content
#' 
#' @param data character
#' @param key character
#' @param qtid character
#' @param date character
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
  if(is.null(key))  stop("ERROR: Key is not empty!")
  
  api <- paste(apiurl,'qutkedata',sep="/")
  if(is.null(api))  stop("ERROR: data is not match!")
  
  args<-list(data=data,key=key,vars=vars,qtid=qtid,startdate=startdate,enddate=enddate,sw1=sw1,sw2=sw2,sw3=sw3)
  query<-compose_query(args)
  addr<-paste(api,query,sep="?")
  addr<-URLencode(addr)
  return(read.table(addr,sep=",",header=TRUE,fileEncoding = "utf-8", encoding = "utf-8"));
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
  if(is.null(key)) stop("ERROR: Key is not empty!")
  if(nrow(df)>2000) stop("ERROR: Data rows is too large!")
  if(ncol(df)>15) stop("ERROR: Data columns is too large!")

  #url<-paste(host$host2,key,sep="/")
  url<-paste(apiurl,'adduserdata',key,sep="/")
  json<-list(data=toJSON(df),title=name)
  
  res<-POST(url, body=json, encode="json")
  return(content(res))
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
  as.character(as.numeric(as.POSIXct(as.Date(val)))*1000)
}




