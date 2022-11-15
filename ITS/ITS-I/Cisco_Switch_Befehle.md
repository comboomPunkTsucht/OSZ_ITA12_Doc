# Cisco Switch Befehle

## normal

``` Exiting

Sx> logout
```

### priviliegirter modus


``` Entering
Sx> enable
```
``` Exiting
Sx# exit
Sx# logout
```
#### config modus
``` Entering
Sx# configure terminal
```
``` Exiting
Sx (config)# exit
Sx (config)# logout
```

##### config interface

``` Entering
Sx (config)# interface fa0/x
```
``` Exiting
Sx (config-if)# exit
Sx (config-if)# logout
```
###### config interface range

``` Entering
Sx (config)# interface range fa0/x-x
Sx (config)# interface range fa0/x-fa0/x
Sx (config)# interface range fa0/x, fa0/x, fa0/x
``` Exiting
Sx (config-if-range)# exit
Sx (config-if-range)# logout
```