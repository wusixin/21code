# 华为 21CODE 条码打印程序使用和配置

## 一、使用
如果打印机已设置好介质和参数、安装好21CODE.PRG程序可按照此指南使用。

- 运行程序
  - 打印机主界面- 左上角菜单
  - 程序 - Fingerprint程序
  - 选择21CODE.PRG 程序加载需要约5秒时间

- 输入参数
  - 打印机出现"HUAWEICODE"提示符，请在打印机键盘输入华为代码，直接回车默认为"33010516"
  - 打印机出现"YYMM"提示符，请在打印机键盘输入四位数字年月
    程序将四位数字年月转换为年月代码。例如1904转换为JD
  - 打印机出现"R6[1/0]"提示符，如需无铅标识请输入1
  - 打印机出现"START"提示符，请输入流水码，程序将自动转换为6位
  - 打印机出现"COUNT"提示符，请输入需要打印条码的数量

- 确认参数
  - 打印机将打印一张标签，包含上述参数，请操作人员确认输入无误
  - 打印机出现"OK?[1]"提示符，输入1确认开始打印，其他输入退出

- 打印
  - 批量打印过程中按键盘F1键中止

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
- 激活配置文件
  - 打印机 Web 界面->管理->配置文件->选中"21CODE.xml"->激活
  - 也可在打印机界面：工具->配置文件->加载中激活
- 附件
  - 配置文件： 21CODE.xml
  - 程序文件： 21CODE.PRG

## 三、参考

### 1. 21CODE.xml 与默认配置的主要变化

- 介质：
  - 介质边距 (X) ：32 点
  - 介质宽度： 732 点
  - 介质长度： 96 点
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
下列问题需求中没有说明，需要明确：
- 当前使用CODE128编码打印条码，是否满足要求？ 
- 年月码生产规则？ JB=1902, KD=2004, 以此类推？