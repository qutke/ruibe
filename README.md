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

TradingDay<-getData('TradingDay',key=key)

KeyMap0<-getData('KeyMap',key=key)
KeyMap1<-getData('KeyMap',args=list(qtid='000001.SZ'),key=key)

stock0<-getData('stock',key=key)
stock1<-getData('stock',args=list(qtid='000001.SZ'),key=key)
stock2<-getData('stock',args=list(date='2015-09-29'),key=key)
stock3<-getData('stock',args=list(qtid='000001.SZ',date='2015-09-29'),key=key)

stockF0<-getData('stockFwd',key=key)
stockF1<-getData('stockFwd',args=list(qtid='000001.SZ'),key=key)
stockF2<-getData('stockFwd',args=list(date='2015-09-29'),key=key)
stockF3<-getData('stockFwd',args=list(qtid='000001.SZ',date='2015-09-29'),key=key)

index0<-getData('index',key=key)
index1<-getData('index',args=list(qtid='000001.SH'),key=key)
index2<-getData('index',args=list(date='2015-09-29'),key=key)
index3<-getData('index',args=list(qtid='000001.SH',date='2015-09-29'),key=key)

industry0<-getData('industry',key=key)
industry1<-getData('industry',args=list(qtid='000001.SZ'),key=key)
industry2<-getData('industry',args=list(qtid='000001.SZ',sw1='金融服务'),key=key)
industry3<-getData('industry',args=list(qtid='000001.SZ',sw1='金融服务',sw2='银行'),key=key)
industry4<-getData('industry',args=list(qtid='000001.SZ',sw1='金融服务',sw2='银行',sw3='银行'),key=key)

fund0<-getData('fund',key=key)
fund1<-getData('fund',args=list(qtid='000001.SZ'),key=key)
fund2<-getData('fund',args=list(date='2015-09-29'),key=key)
fund3<-getData('fund',args=list(qtid='000001.SZ',date='2015-09-29'),key=key)

postData(stock1,name='abc',key=key)
postData(industry0,name='industry0',key=key)
```

