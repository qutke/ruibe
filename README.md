RUIBE, R Package for UIBE project
=======================

R Package for UIBE project provided by Qutke.com .

http://uibe.qutke.com

## INSTALL

```{r}
library(devtools)
install_github('qutke/ruibe')
```

## DEMO

```{r}
library(ruibe)

key<-'ff5ed58edf645c6581e8148db1130dc310fbab5fdccc4b2a9ea0be30f4128ace'
init(key)

tradingDay<-getData('tradingDay',key=key)

keyMap1<-getData(data='keyMap',qtid='000001.SZ',key=key)
keyMap1<-getData(data='keyMap',vars='qtid,SecuCode,CompanyCode,ChiName',qtid='000001.SZ',key=key)

stock1<-getData(data='mktDaily',qtid='000001.SZ',key=key)
stock2<-getData(data='mktDaily',startdate='2015-09-29',key=key)
stock3<-getData(data='mktDaily',qtid='000001.SZ',startdate='2015-09-29',key=key)
stock4<-getData(data='mktDaily',qtid='000001.SZ',startdate='2015-09-29',enddate='2015-10-11',key=key)
stock5<-getData(data='mktDaily',vars='qtid,date,prevClose,open,hi,lo,close,volume,value,ret,logRet,vwap',qtid='000001.SZ',startdate='2015-09-29',enddate='2015-10-11',key=key)
stock6<-getData(data='mktDaily',vars='qtid,date,prevClose',qtid='000001.SZ',startdate='2015-09-29',enddate='2015-09-29',key=key)

stockF1<-getData(data='mktFwdDaily',qtid='000001.SZ',key=key)
stockF2<-getData(data='mktFwdDaily',startdate='2015-09-29',key=key)
stockF3<-getData(data='mktFwdDaily',qtid='000001.SZ',startdate='2015-09-29',key=key)
stockF4<-getData(data='mktFwdDaily',qtid='000001.SZ',startdate='2015-09-29',enddate='2015-10-11',key=key)
stockF5<-getData(data='mktFwdDaily',vars='qtid,date,close,volume,value,fwdAdj,fwdAdjOpen,fwdAdjHi,fwdAdjLo,fwdAdjClose',qtid='000001.SZ',startdate='2015-09-29',enddate='2015-10-11',key=key)

index1<-getData(data='mktDataIndex',qtid='000001.SH',key=key)
index2<-getData(data='mktDataIndex',startdate='2015-09-29',key=key)
index3<-getData(data='mktDataIndex',qtid='000001.SH',startdate='2015-09-29',key=key)
index4<-getData(data='mktDataIndex',qtid='000001.SH',enddate='2015-09-29',key=key)
index5<-getData(data='mktDataIndex',qtid='000001.SH',startdate='2015-09-25',enddate='2015-09-29',key=key)
index6<-getData(data='mktDataIndex',vars='qtid,date,prevClose,open,hi,lo,close,volume,value',qtid='000001.SH',startdate='2015-09-25',enddate='2015-09-29',key=key)

industry0<-getData(data='industryType',key=key)
industry1<-getData(data='industryType',qtid='000001.SZ',key=key)
industry2<-getData(data='industryType',qtid='000001.SZ',sw1='金融服务',key=key)
industry3<-getData(data='industryType',qtid='000001.SZ',startdate='2015-09-29',sw1='金融服务',key=key)
industry4<-getData(data='industryType',qtid='000001.SZ',startdate='2015-09-29',enddate='2015-10-11',sw1='金融服务',key=key)
industry5<-getData(data='industryType',qtid='000001.SZ',sw1='金融服务',sw2='银行',key=key)
industry6<-getData(data='industryType',qtid='000001.SZ',sw1='金融服务',sw2='银行',sw3='银行',key=key)
industry7<-getData(data='industryType',vars='qtid,date,CompanyCode,SecuCode,ChiName,ChiNameAbbr,EngName,EngNameAbbr',qtid='000001.SZ',sw1='金融服务',sw2='银行',sw3='银行',key=key)

fund1<-getData(data='financialIndex',qtid='000001.SZ',key=key)
fund2<-getData(data='financialIndex',startdate='2015-09-29',key=key)
fund3<-getData(data='financialIndex',qtid='000001.SZ',startdate='2015-09-29',key=key)
fund4<-getData(data='financialIndex',vars='qtid,date,CompanyCode,EndDate,NetAssetPS,MainIncomePS,CashFlowPS,NetProfit',qtid='000001.SZ',startdate='2015-09-29',key=key)

sm1<-getData(data='securitiesMargin',startdate='2015-09-29',key=key)
sm2<-getData(data='securitiesMargin',enddate='2015-09-29',key=key)
sm3<-getData(data='securitiesMargin',startdate='2015-09-29',enddate='2015-10-11',key=key)
sm4<-getData(data='securitiesMargin',vars='TradingDay,SecuMarket,FinanceValue,FinanceBuyValue,SecurityValue',startdate='2015-09-29',enddate='2015-10-11',key=key)


stock1$date<-as.qtDate(stock1$date)
postData(stock1,name='abc',key=key)
postData(industry0,name='industry0',key=key)

lastDays(7, key)
```

