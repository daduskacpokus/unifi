# WiFi standalone controller
## Contents
### Что делаем?
- одну общую сеть wifi на офис Бузника
- доступ в сеть осуществляется по паролю
- пароль меняется 1 раз в 2 недели
- бесшовность позволяет провести разговор по Skype идя по офису

### Как делаем?

- Все тарелки *Ubiquiti* расположенные по офису соединяются с контроллером через один широковещательный домен L2 (на изображении ниже два кабеля подключаются на L2-свич от тарелок, третий от контроллера)
[Image of L2 switch](https://github.com/daduskacpokus/unifi/blob/master/img/1551786772429.JPEG)
контроллер имеет два порта **GigabitEthernet** один из которых *смотрит* в сторону домена c тарелками `intranet_iface`, а другой в интернет `internet_iface`. Хост-система контроллера работает в режиме маршрутизатора пересылая пакеты из домена тарелок (пользователей wifi) в сеть интернет.

### Для чего?

### Что получаем?

### Кто делает?

### Примечание


The contents typically include one or more of the following:

Configuration instructions
Installation instructions
Operating instructions
A file manifest (list of files included)
Copyright and licensing information
Contact information for the distributor or programmer
Known bugs[3]
Troubleshooting[3]
Credits and acknowledgments
A changelog (usually for programmers)
A news section (usually for users)



