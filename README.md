# WiFi standalone controller
## Contents
### Что делаем?
- одну общую сеть wifi на офис Бузника
- доступ в сеть осуществляется по паролю
- пароль меняется 1 раз в 2 недели
- бесшовность позволяет провести разговор по Skype идя по офису

### Как делаем?

- Все тарелки *Ubiquiti* расположенные по офису соединяются с контроллером через один широковещательный домен. На [изображении](https://github.com/daduskacpokus/unifi/blob/master/img/1551786772429.JPEG) L2-свич с портами №2,4,6 в которые подключаются два кабеля от тарелок, третий от контроллера
- контроллер (physical-node) имеет два порта **GigabitEthernet** один из которых *смотрит* в сторону домена c тарелками `intranet_iface`, а другой в интернет `internet_iface`. Хост-система контроллера работает в режиме маршрутизатора пересылая пакеты из домена тарелок (пользователей wifi) в сеть интернет.
- В случае, если `internet_iface` для выхода в интернет использует корпоративную сеть, а не выделеный канал - пакеты из сети wifi в частную сеть не пропускает [файрвол](https://github.com/daduskacpokus/unifi/blob/master/playbooks/roles/router-host/tasks/main.yml)

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



