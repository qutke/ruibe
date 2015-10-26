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

TradingDay<-getData('tradingDay',key='xxx')

KeyMap1<-getData(data='keyMap',qtid='000001.SZ',key='xxx')

stock1<-getData(data='mktDaily',qtid='000001.SZ',key='xxx')
stock2<-getData(data='mktDaily',date='2015-09-29',key='xxx')
stock3<-getData(data='mktDaily',qtid='000001.SZ',date='2015-09-29',key='xxx')

stockF1<-getData(data='mktFwdDaily',qtid='000001.SZ',key='xxx')
stockF2<-getData(data='mktFwdDaily',date='2015-09-29',key='xxx')
stockF3<-getData(data='mktFwdDaily',qtid='000001.SZ',date='2015-09-29',key='xxx')

index1<-getData(data='mktDataIndex',qtid='000001.SH',key='xxx')
index2<-getData(data='mktDataIndex',date='2015-09-29',key='xxx')
index3<-getData(data='mktDataIndex',qtid='000001.SH',date='2015-09-29'),key='xxx')

industry0<-getData(data='industryType',key='xxx')
industry1<-getData(data='industryType',qtid='000001.SZ',key='xxx')
industry2<-getData(data='industryType',qtid='000001.SZ',sw1='金融服务',key='xxx')
industry3<-getData(data='industryType',qtid='000001.SZ',sw1='金融服务',sw2='银行',key='xxx')
industry4<-getData(data='industryType',qtid='000001.SZ',sw1='金融服务',sw2='银行',sw3='银行',key='xxx')

fund1<-getData(data='financialIndex',qtid='000001.SZ',key='xxx')
fund2<-getData(data='financialIndex',date='2015-09-29',key='xxx')
fund3<-getData(data='financialIndex',qtid='000001.SZ',date='2015-09-29',key='xxx')

postData(stock1,name='abc',key='xxx')
postData(industry0,name='industry0',key='xxx')
```

