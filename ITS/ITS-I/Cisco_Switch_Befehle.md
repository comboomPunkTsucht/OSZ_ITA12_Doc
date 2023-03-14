

# Cisco Switch Befehle

## EXEC-Modus

### Exiting
``` 
Sx> logout
```

## privilegierter EXEC-Modus

### Entering

``` Entering
Sx> enable
Sx# 
```
### Exiting
``` 
Sx# exit
Sx# logout
```
### Startup config entfernen

```
Sx# erase startup-config
```
### datei entfernen

```
Sx# delete flash:pathToFile/filename
Sx# delete pathTofFle/filename
```
### copy file

```
Sx# copy flash:pathToFile/filename flash:pathToFile/filename
Sx# copy pathToFile/filename pathToFile/filename
```
### uplode file to a TFTP-Server

```
Sx# copy flash:pathToFile/filename tftp:filename
[ip-addresse des Servers]
```
### download file from a TFTP-Server
```
Sx# copy tftp:filename flash:pathToFile/filename
[ip-addresse des Servers]
```
### show flash

```
Sx# dir flash:
Sx# dir
```

### Reload System
```
Sx# reload
```
### Uhrzeit und Datum vergabe

```
Sx# clock set hh:mm:ss DD Month YYYY
```
## Globaler Konfigurationsmodus
### Entering
``` 
Sx# configure terminal
Sx (config)# 
```
### Exiting
``` 
Sx (config)# exit
Sx (config)# end
```
### Vergabe eines Gerätenamens

``` 
Sx (config)# hostname Sx
```
### verschlüsselte Passwortvergabe für den EXEC-Modus

``` 
Sx (config)# enable secret class
```
### Automatische Suche im Netz deaktivieren
```
Sx (config)# no ip domain lookup
```
### Banner motd erzeugen

```
Sx (config)# banner motd % [Entertaste drücken]
******************************** [Entertaste drücken]
* !! Authorized Access Only !! * [Entertaste drücken]
******************************** [Entertaste drücken]
% [Entertaste drücken]
```
### Passwörterangaben in der running-config verschlyseln

```
Sx (config)# service password-encryption
```

### Default-Gateway

```
Sx (config)# ip default-gateway xxx.xxx.xxx.xxx
```
### Statische MAC-addresse setzen

```
Sx (config)# mac- addresses static xx-xx-xx-xx-xx-xx vlan xx interface fa0/x 
```
### VTP Domain Namen einstellen

```
Sx(config)# vtp domain xxxxx
```
### VTP Password vergeben

```
Sx(config)# vtp password xxxxx
```

### VTP Version einstellen

```
Sx(config)# vtp version x
```

### VTP Modus einstellen

```
Sx(config)# vtp mode (server/client/transparent)
```
### Einstellungen zur Blockierung des Login-Zugriffs

```
Sx (config)# login block-for xx attempts x within xx
```
### User anlegen
```
Sx (config)# username [username] privilege xx secret [password]
```
### Festlegen einer IP-domain

```
Sx (config)# ip domain-name [domainname]
```
### Löchen gespeicherter alter Sicherheitsschlüssel

```
Sx (config)# crypto key zeroize rsa
```

### Generieren eines neuen Sicherheitsschlüssels

```
Sx (config)# crypto key generate rsa general-keys modulus 1024
```

### Versionseinstelung des SSH-Protokolls

```
Sx (config)# ip ssh version 2
```
### SSH-Protokoll Wartezeit beim Zugriff
```
Sx (config)# ip ssh time-out xx
```
### SSH-Protokoll Anzahl der Authentifizierungsversuche
```
Sx (config)# ip ssh authentication-retries xx
```

## Zum Konsolenmodus wechseln
```
Sx (config)# line console 0
Sx (config-line)#
```
### Passwort eingeben

```
Sx (config-line)# password cisco
```
### IOS Zugriffszeit-Einstellung

```
Sx (config-line)# exec-timeout [minutes] [seconds]
```

### Zugriffsrechte-Einstellung

```
Sx (config-line)# privilege level xxx
```
### Passwordeingabe aktivieren

```
Sx (config-line)# login
```
### Passwordeingabe aktivieren von Datenbank/Adminkonto

```
Sx (config-line)# login local
```
### Synchronisation der Dateneingabe aktivieren

```
Sx (config-line)# logging synchronous
```
## Zum Fernverwaltungsmodus wechseln (Telnet)

```
Sx (config)# line vty 0 4
Sx (config-line)#
```

### Passwort eingeben

```
Sx (config-line)# password cisco
```
### IOS Zugriffszeit-Einstellung

```
Sx (config-line)# exec-timeout [minutes] [seconds]
```

### Zugriffsrechte-Einstellung

```
Sx (config-line)# privilege level xxx
```
### Passwordeingabe aktivieren

```
Sx (config-line)# login
```
### Passwordeingabe aktivieren von Datenbank/Adminkonto

```
Sx (config-line)# login local
```
### Synchronisation der Dateneingabe aktivieren

```
Sx (config-line)# logging synchronous
```


## Schnittstellenkonfiguration
### Entering
```
Sx (config)# interface [fastethernet/gigabitethernet] x/x
```
### Exiting
```
Sx (config-if)# exit
```

### Beschreibung eingeben

```
Sx (config-if)# description # [Beschreibung] #
```
### Access - VLAN Verbindung aktivieren (festlegen)

```
Sx (config-if)# switchport mode access
```
### Die Schnittstelle dem VLAN xx zuweisen

```
Sx (config-if)# switchport access vlan xx
```

### Datenübertragungsrate verändern

```
Sx (config-if)# speed xxxx
```

### Übertragungsmodus ändern
```
Sx (config-if)# duplex xxxx
```

### Port-Sicherheit aktivieren

```
Sx(config-if)# switchport port-security
```

### Port-Sicherheit sticky flag

```
Sx(config-if)# switchport port-security mac-address sticky
```
### Port-Sicherheit mac-address maximum

```
Sx(config-if)# switchport port-security maximum xx
```
### einen Trunk Link zu weisen

```
Sx(config-if)# switchport mode trunk
```
### Trunk Link zum Native VLAN erklären

```
Sx(config-if)# switchport trunk native vlan xx
```
### Nur die vorhandenen VLANs zulassen

```
Sx(config-if)# switchport trunk allowed vlan xx, xx, xx, ...
```
### Protokoll dot1q aktivieren (*gilt nur für Switch 3560!*)

```
Sx(config-if)# switchport trunk encapsulation dot1q
```

## Multischnittstellenkonfiguration
### Entering
``` 
Sx (config)# interface range [fastethernet/gigabitethernet] x/x-x
Sx (config)# interface range [fastethernet/gigabitethernet] x/x - [fastethernet/gigabitethernet] x/x
Sx (config)# interface range[fastethernet/gigabitethernet] x/x,[fastethernet/gigabitethernet] x/x,[fastethernet/gigabitethernet] x/x
Sx (config-if-range)# 
```
### Exiting
```
Sx (config-if-range)# exit
```

### Beschreibung eingeben

```
Sx (config-if-range)# description # [Beschreibung] #
```
### Access - VLAN Verbindung aktivieren (festlegen)

```
Sx (config-if-range)# switchport mode access
```
### Die Schnittstelle dem VLAN xx zuweisen

```
Sx (config-if-range)# switchport access vlan xx
```
### Datenübertragungsrate verändern

```
Sx (config-if-range)# speed xxxx
```
### Übertragungsmodus ändern
```
Sx (config-if-range)# duplex xxxx
```

### Port-Sicherheit aktivieren

```
Sx(config-if-range)# switchport port-security
```

### Port-Sicherheit sticky flag

```
Sx(config-if-range)# switchport port-security mac-address sticky
```

```
Sx(config-if-range)# switchport port-security maximum xx
```

### einen Trunk Link zu weisen

```
Sx(config-if)# switchport mode trunk
```
### Trunk Link zum Native VLAN erklären

```
Sx(config-if)# switchport trunk native vlan xx
```
### Nur die vorhandenen VLANs zulassen

```
Sx(config-if)# switchport trunk allowed vlan xx, xx, xx, ...
```
### Protokoll dot1q aktivieren (*gilt nur für Switch 3560!*)

```
Sx(config-if)# switchport trunk encapsulation dot1q
```

## Schnittstellenkonfiguration vom VLANs
### Entering
```
Sx (config)# interface vlan xx
```
### Exiting
```
Sx (config-if)# exit
```

### Ip Adresse einstellen

```
Sx (config-if)# ip address xxx.xxx.xxx.xxx xxx.xxx.xxx.xxx
```

### Schnittstelle aktivieren

```
Sx (config-if)# no shutdown
```

## VLAN-Konfigurationsmodus

### Entering
```
Sx (config)# vlan xx
Sx (config-vlan)#
```
### Exiting
```
Sx (config-if)# exit
```

### Namen für das VLAN vergeben

```
Sx (config-vlan)# name xxxxxxxxxxxxxx
```
