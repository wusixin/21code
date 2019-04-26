# 华为 内盒标签打印程序使用和配置

## 一、使用
如果打印机已设置好介质和参数、安装好INNERBOX.PRG程序可按照此指南使用。

- 运行程序
  - 打印机主界面- 左上角菜单
  - 程序 - Fingerprint程序
  - 选择INNERBOX.PRG 程序加载需要约5秒时间

- 输入参数
  - 打印机出现"WAIT USB"提示符，可接受USB串口数据
  - 数据格式

```
条码@描述1@描述2@供应商型号@代码@批次号@日期@备注\r\n
例如：
2133010516DBJB000610@测试物料，一个很长很长很长很长@很长很长很长很长很长的描述@SJ-RD181@021080@1004101@2019/4/10@备注信息\r\n
```

- 打印
  - 打印过程中按键盘F1键中止

- 故障排除
  - 打印过程中出现缺纸、打印头故障等错误，程序将响铃3声退出
  - 请排除故障后重新运行程序接续打印

## 二、配置

### 1. 基础

- 打印机连接有线网络
- 连接打印机屏幕上显示的 IP 地址，进入 web 设置界面
- 部分界面需要登录，缺省用户名 itadmin, 密码 pass

### 2. 上传程序的配置文件

- 可通过打印机 Web 界面->管理上传程序和配置文件
- 也可通过 FTP 上传到打印机/home/user 目录
  - 配置文件子目录： /home/user/profiles
  - 程序子目录： /home/user/scripts
  - 字体目录： /home/user/fonts
- 激活配置文件
  - 打印机 Web 界面->管理->配置文件->选中"INNERBOX.xml"->激活
- 附件
  - 配置文件： INNERBOX.xml
  - 程序文件： INNERBOX.PRG
  - 字体文件： simfang.ttf (仿宋字体)

> simfang.ttf 可从Windows\fonts目录获得  
> 上传simfang.ttf后重启打印机才能生效

## 三、参考

### 1. INNERBOX.xml 与默认配置的主要变化

- 介质：
  - 介质边距 (X) ：32 点
  - 介质宽度： 800 点
  - 介质长度： 1110 点
  - 剪辑默认值： 关
- 打印质量
  - 浓度： 75
  - 对比度： +4%

### 2. 参考资料
- PM43 Quick Start Guide
- PM43 User Manual
- Fingerprint Developer’s Guide
- Fingerprint Command Reference

## TODOs