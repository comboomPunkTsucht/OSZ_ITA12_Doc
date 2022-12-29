 <style>
    .amazon {
        text-align: center;
        color: #ffffff;
        border-radius: 10px;
        background-color: #232E3F;
        border: 1px solid #232E3F;
        padding-top: 20px;
        margin-bottom: 20px;
        padding-left: 20px;
    }
</style>

:::amazon
<iframe src="https://rcm-eu.amazon-adsystem.com/e/cm?o=3&p=13&l=ur1&category=amazongeneric&banner=0HKWS4G1V016X4K0S2R2&f=ifr&linkID={{link_id}}&t=comboompunkts-21&tracking_id=comboompunkts-21" width="468" height="60" scrolling="no" border="0" marginwidth="0" style="border:none;" frameborder="0" sandbox="allow-scripts allow-same-origin allow-popups allow-top-navigation-by-user-activation"></iframe>
:::

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
## Zum Konsolenmodus wechseln
```
Sx (config)# line console 0
Sx (config-line)#
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
### Passwordeingabe aktivieren

```
Sx (config-line)# login
```
### Synchronisation der Dateneingabe aktivieren

```
Sx (config-line)# logging synchronous
```


## Schnittstellenkonfiguration
### Entering
```
Sx (config)# interface fa0/x
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
## Multischnittstellenkonfiguration
### Entering
``` 
Sx (config)# interface range fa0/x-x
Sx (config)# interface range fa0/x-fa0/x
Sx (config)# interface range fa0/x, fa0/x, fa0/x
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
