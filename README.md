# ffmepg_gdigrab

## 简单备注说明
  * 基于ffmpeg 分支 release/5.0
  * ffmpeg录屏，在锁屏暂停录屏
  * 解锁后再正常继续锁屏
  * 锁屏状态下，由于程序等各种原因，退出了录屏程序ffmpeg.exe. 无法再正常录屏(请知晓)

##  关于 锁屏屏保 界面
  * window 10 or window 11 有<锁屏屏保>界面
    * 锁屏后，录制2秒，然后暂停录制(不退出录屏), 锁屏解锁后 继续正常录屏
  * window 7 or window server 2019 等 无<锁屏屏保>界面
    * 锁屏后，暂停录制(不退出录屏), 锁屏解锁后 继续正常录屏
      * 因为 锁屏后直接是 输入密码界面，该界面由于 系统安全原因，是不允许录制

## 注意

### 需要 替换 文件最新文件 wtsapi32.h 

> <https://github.com/luzexi/MinGW/blob/master/x86/include/wtsapi32.h>

replace  

> /mingw64/include/wtsapi32.h


## 使用方式
  * 用 gdigrab.c 替换 ffmpeg 源码库中 对应文件，然后进行编译生成

## ffmpeg.exe 需要依赖的文件

```
libbz2-1.dll       
libiconv-2.dll     
liblzma-5.dll      
libwinpthread-1.dll
libx264-164.dll    
zlib1.dll
```
          
