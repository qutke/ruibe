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

key<-'1111'
init(key)

TradingDay<-getData('tradingDay',key=key)

KeyMap1<-getData(data='keyMap',qtid='000001.SZ',key=key)

stock1<-getData(data='mktDaily',qtid='000001.SZ',key=key)
stock2<-getData(data='mktDaily',date='2015-09-29',key=key)
stock3<-getData(data='mktDaily',qtid='000001.SZ',date='2015-09-29',key=key)

stockF1<-getData(data='mktFwdDaily',qtid='000001.SZ',key=key)
stockF2<-getData(data='mktFwdDaily',date='2015-09-29',key=key)
stockF3<-getData(data='mktFwdDaily',qtid='000001.SZ',date='2015-09-29',key=key)

index1<-getData(data='mktDataIndex',qtid='000001.SH',key=key)
index2<-getData(data='mktDataIndex',date='2015-09-29',key=key)
index3<-getData(data='mktDataIndex',qtid='000001.SH',date='2015-09-29'),key=key)

industry0<-getData(data='industryType',key=key)
industry1<-getData(data='industryType',qtid='000001.SZ',key=key)
industry2<-getData(data='industryType',qtid='000001.SZ',sw1='金融服务',key=key)
industry3<-getData(data='industryType',qtid='000001.SZ',sw1='金融服务',sw2='银行',key=key)
industry4<-getData(data='industryType',qtid='000001.SZ',sw1='金融服务',sw2='银行',sw3='银行',key=key)

fund1<-getData(data='financialIndex',qtid='000001.SZ',key=key)
fund2<-getData(data='financialIndex',date='2015-09-29',key=key)
fund3<-getData(data='financialIndex',qtid='000001.SZ',date='2015-09-29',key=key)

postData(stock1,name='abc',key=key)
postData(industry0,name='industry0',key=key)
```

