

# Cisco Router Befehle

## EXEC-Modus

### Exiting
``` 
Rx> logout
```

## privilegierter EXEC-Modus

### Entering

``` Entering
Rx> enable
Rx# 
```
### Exiting
``` 
Rx# exit
Rx# logout
```
### Startup config entfernen

```
Rx# erase startup-config
```
### datei entfernen

```
Rx# delete flash:pathToFile/filename
Rx# delete pathTofFle/filename
```
### copy file

```
Rx# copy flash:pathToFile/filename flash:pathToFile/filename
Rx# copy pathToFile/filename pathToFile/filename
```
### uplode file to a TFTP-Server

```
Rx# copy flash:pathToFile/filename tftp:filename
[ip-addresse des Servers]
```
### download file from a TFTP-Server
```
Rx# copy tftp:filename flash:pathToFile/filename
[ip-addresse des Servers]
```
### show flash

```
Rx# dir flash:
Rx# dir
```

### Reload System
```
Rx# reload
```
### Uhrzeit und Datum vergabe

```
Rx# clock set hh:mm:ss DD Month YYYY
```
## Globaler Konfigurationsmodus
### Entering
``` 
Rx# configure terminal
Rx (config)# 
```
### Exiting
``` 
Rx (config)# exit
Rx (config)# end
```
### Vergabe eines Gerätenamens

``` 
Rx (config)# hostname Rx
```
### verschlüsselte Passwortvergabe für den EXEC-Modus

``` 
Rx (config)# enable secret class
```
### Automatische Suche im Netz deaktivieren
```
Rx (config)# no ip domain lookup
```
### Banner motd erzeugen

```
Rx (config)# banner motd % [Entertaste drücken]
******************************** [Entertaste drücken]
* !! Authorized Access Only !! * [Entertaste drücken]
******************************** [Entertaste drücken]
% [Entertaste drücken]
```
### Passwörterangaben in der running-config verschlyseln

```
Rx (config)# service password-encryption
```

### Default-Gateway

```
Rx (config)# ip default-gateway xxx.xxx.xxx.xxx
```

### Statiches Routing
```
Rx (config)# ip route xxx.xxx.xxx.xxx xxx.xxx.xxx.xxx xxx.xxx.xxx.xxx
```
```
```
Rx (config)# ip route xxx.xxx.xxx.xxx xxx.xxx.xxx.xxx [fastethernet/gigabitethernet/serial] x/x
```
### Defautl-Static-Route
```
Rx (config)# ip route 0.0.0.0 0.0.0.0 xxx.xxx.xxx.xxx
```
```
Rx (config)# ip route 0.0.0.0 0.0.0.0 [fastethernet/gigabitethernet/serial] x/x
```
### Passwort Mindestlänge
'''
Rx (config)# security password min-length xx
```

### Einstellungen zur Blockierung des Login-Zugriffs

```
Rx (config)# login block-for xx attempts x within xx
```
### User anlegen
```
Rx (config)# username [username] privilege xx secret [password]
```
### Festlegen einer IP-domain

```
Rx (config)# ip domain-name [domainname]
```
### Löchen gespeicherter alter Sicherheitsschlüssel

```
Rx (config)# crypto key zeroize rsa
```

### Generieren eines neuen Sicherheitsschlüssels

```
Rx (config)# crypto key generate rsa general-keys modulus 1024
```

### Versionseinstelung des SSH-Protokolls

```
Rx (config)# ip ssh version 2
```
### SSH-Protokoll Wartezeit beim Zugriff
```
Rx (config)# ip ssh time-out xx
```
### SSH-Protokoll Anzahl der Authentifizierungsversuche
```
Rx (config)# ip ssh authentication-retries xx
```

### RIP dynamisches Routing aktivieren

```
Rx (config)# router rip
Rx (config-router)# network [direkte Netz-ID]
```

### RIP Version 2 einstellen
```
Rx (config)# router rip
Rx (config-router)# version 2
```
### RIP passiven-Schnittstellen einstellen
```
Rx (config)# router rip
Rx (config-router)# passive-interface [fastethernet/gigabitethernet/serial] x/x
```

### RIP weitergabe der Defautl-Static-Route aktivieren
```
Rx (config)# router rip
Rx (config-router)# default-information originate
```

### EIGRP dynamisches Routing aktivieren

```
Rx(config)# router eigrp [number]
Rx(config-router)# network [direkte Netz-ID]
```

```
Rx(config)# router eigrp [number]
Rx(config-router)# network [direkte Netz-ID] [wildcard-mask]
```

### OSPF dynamisches Routing aktivieren

```
Rx(config)# router ospf [number]
Rx(config-router)# network [direkte Netz-ID] [wildcard-mask] area [number]
```
## Zum Konsolenmodus wechseln
```
Rx (config)# line console 0
Rx (config-line)#
```
### Passwort eingeben

```
Rx (config-line)# password cisco
```
### IOS Zugriffszeit-Einstellung

```
Rx (config-line)# exec-timeout [minutes] [seconds]
```

### Zugriffsrechte-Einstellung

```
Rx (config-line)# privilege level xxx
```
### Passwordeingabe aktivieren

```
Rx (config-line)# login
```
### Passwordeingabe aktivieren von Datenbank/Adminkonto

```
Rx (config-line)# login local
```

### Synchronisation der Dateneingabe aktivieren

```
Rx (config-line)# logging synchronous
```
## Zum Fernverwaltungsmodus wechseln

```
Rx (config)# line vty 0 4
Rx (config-line)#
```

### Übermitlungsprotokoll einstellen

```
Rx (config-line)# transport input [all/telnet/ssh]
```

### Passwort eingeben

```
Rx (config-line)# password cisco
```
### IOS Zugriffszeit-Einstellung

```
Rx (config-line)# exec-timeout [minutes] [seconds]
```

### Zugriffsrechte-Einstellung

```
Rx (config-line)# privilege level xxx
```
### Passwordeingabe aktivieren

```
Rx (config-line)# login
```
### Passwordeingabe aktivieren von Datenbank/Adminkonto

```
Rx (config-line)# login local
```
### Synchronisation der Dateneingabe aktivieren

```
Rx (config-line)# logging synchronous
```


## Schnittstellenkonfiguration
### Entering
```
Rx (config)# interface [fastethernet/gigabitethernet/serial] x/x
```
### Exiting
```
Rx (config-if)# exit
```
### Clock Rate

```
Rx (config-if)# clock rate xxxx
```

### Beschreibung eingeben

```
Rx (config-if)# description # [Beschreibung] #
```
### Datenübertragungsrate verändern

```
Rx (config-if)# speed xxxx
```
### Übertragungsmodus ändern
```
Rx (config-if)# duplex xxxx
```
## Multischnittstellenkonfiguration
### Entering
``` 
Rx (config)# interface range [fastethernet/gigabitethernet/serial] x/x-x
Rx (config)# interface range [fastethernet/gigabitethernet/serial] 0/x- [fastethernet/gigabitethernet/serial] x/x
Rx (config)# interface range [fastethernet/gigabitethernet/serial] x/x, [fastethernet/gigabitethernet/serial] x/x, [fastethernet/gigabitethernet/serial] x/x
Rx (config-if-range)# 
```
### Exiting
```
Rx (config-if-range)# exit
```

### Beschreibung eingeben

```
Rx (config-if-range)# description # [Beschreibung] #
```
### Datenübertragungsrate verändern
```
Rx (config-if-range)# speed xxxx
```
### Übertragungsmodus ändern
```
Rx (config-if-range)# duplex xxxx
```
### Ip Adresse einstellen

```
Rx (config-if-range)# ip address xxx.xxx.xxx.xxx xxx.xxx.xxx.xxx
```

### Schnittstelle aktivieren

```
Rx (config-if-range)# no shutdown
```

### Clock Rate

```
Rx (config-if-range)# clock rate xxxx
```
