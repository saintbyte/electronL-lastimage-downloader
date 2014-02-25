#!/usr/bin/env python
from ftplib import FTP
import time
import sys
#ftp://electro:electro@ftp.ntsomz.ru/2014/January/28/1030/140128_1030_original_RGB.jpg
def log(level,s):
   print s+"\n"
log(0,'Connect...');
ftp = FTP('ftp.ntsomz.ru')  
log(0,'Login...');
ftp.login('electro','electro')
year  = time.strftime("%Y",time.localtime())
year2 = time.strftime("%y",time.localtime())
mnt   = time.strftime("%B",time.localtime())
mnt2  = time.strftime("%m",time.localtime())
day   = time.strftime("%d",time.localtime())
path  = year+'/'+mnt+'/'+day+'/'
log(0,'CD to:'+path+'...');
ftp.cwd(path)
log(0,'Get List:'+path+'...');
data = []
list_files = []
ftp.dir(data.append)
for d in data:
   ss = str(d)
   log(0,ss)
   try:
      arr = ss.split(' ')
      arr = arr[::-1]
      log(0,arr[0])
      list_files.append(arr[0])
      cnt = 0
   except:  
      pass
lastdir = list_files[len(list_files)-2]
path2=lastdir+"/"
filename = year2+mnt2+day+"_"+lastdir+"_original_RGB.jpg"
#140218_2000_original_RGB.jpg
log(0,path)
ftp.cwd(path2)
file = open(""+filename, 'wb')
ftp.retrbinary('RETR %s' % filename, file.write)
for f in list_files: 
  cnt = cnt + 1
  log(0,str(cnt)+':'+f)
ftp.quit()
file.close()
print "FILENAME:"+filename+"\n"
