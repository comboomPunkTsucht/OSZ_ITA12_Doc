# Cisco Switch Befehle

## normal

### Exiting
``` 
Sx> logout
```

### priviliegirter modus

#### Entering

``` Entering
Sx> enable
Sx# 
```
#### Exiting
``` 
Sx# exit
Sx# logout
```
#### Startup config entfernen

```
Sx# erase startup-config
```

#### Reload System
```
Sx# reload
```
#### Uhrzeit und Datum vergabe

```
Sx# clock set hh:mm:ss DD Month YYYY
```
#### config modus
##### Entering
``` 
Sx# configure terminal
Sx (config)# 
```
##### Exiting
``` 
Sx (config)# exit
Sx (config)# end
```
##### Vergabe eines Gerätenamens

``` 
Sx (config)# hostname Sx
```
##### verschlüsselte Passwortvergabe für den EXEC-Modus

``` 
Sx (config)# enable secret class
```
##### Automatische Suche im Netz deaktivieren
```
Sx (config)# no ip domain lookup
```
##### Banner motd erzeugen

```
Sx (config)# banner motd % [Entertaste drücken]
******************************** [Entertaste drücken]
* !! Authorized Access Only !! * [Entertaste drücken]
******************************** [Entertaste drücken]
% [Entertaste drücken]
```
##### Passwörterangaben in der running-config verschlyseln

```
Sx (config)# service password-encryption
```
##### Zum Konsolenmodus wechseln
```
Sx (config)# line console 0
Sx (config-line)#
```
##### Zum Fernverwaltungsmodus wechseln (Telnet)

```
Sx (config)# line vty 0 4
```

###### Passwort eingeben

```
Sx (config-line)# password cisco
```
###### Passwordeingabe aktivieren

```
Sx (config-line)# login
```
###### Synchronisation der Dateneingabe aktivieren

```
Sx (config-line)# logging synchronous
```


##### config interface

``` Entering
Sx (config)# interface fa0/x
```
``` Exiting
Sx (config-if)# exit
```
##### config interface range

``` Entering
Sx (config)# interface range fa0/x-x
Sx (config)# interface range fa0/x-fa0/x
Sx (config)# interface range fa0/x, fa0/x, fa0/x
```

``` Exiting
Sx (config-if-range)# exit
```