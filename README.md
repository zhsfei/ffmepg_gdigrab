# ffmepg_gdigrab

## 说明
  * 基于ffmpeg 分支 release/5.0
  * 支持 ffmepg 用 gdigrab 
    * 在锁屏情况下不中断继续 录屏2秒，然后暂停录屏
    * 等 屏幕解锁后，继续录屏
    * 目前window10 下验证通过
    * 其他window 7等系统，由于检测系统是否锁屏，系统api不完全一样，暂时不确定

## 注意

### 需要 替换 文件 mingw64 wtsapi32.h 
https://github.com/luzexi/MinGW/blob/master/x86/include/wtsapi32.h
replace  mingw64 wtsapi32.h


## ffmpeg 需要依赖的文件

```
libbz2-1.dll       
libiconv-2.dll     
liblzma-5.dll      
libwinpthread-1.dll
libx264-164.dll    
zlib1.dll
```
          
