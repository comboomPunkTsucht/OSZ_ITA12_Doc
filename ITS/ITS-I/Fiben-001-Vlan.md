 <style>
    @font-face {
  font-family: 'Caskaydia Cove Nerd Font Complete';
  src: url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFont-Bold.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFont-BoldItalic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFont-ExtraLight.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFont-ExtraLightItalic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFont-Italic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFont-Light.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFont-LightItalic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFont-Regular.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFont-SemiBold.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFont-SemiBoldItalic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFont-SemiLight.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFont-SemiLightItalic.ttf') format('ttff');
  /* Weitere Optionen wie font-weight und font-style können angegeben werden */
  
  font-family: 'Caskaydia Cove Nerd Font Complete Mono';
  src: url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontMono-Bold.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontMono-BoldItalic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontMono-ExtraLight.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontMono-ExtraLightItalic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontMono-Italic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontMono-Light.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontMono-LightItalic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontMono-Regular.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontMono-SemiBold.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontMono-SemiBoldItalic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontMono-SemiLight.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontMono-SemiLightItalic.ttf') format('ttff');
  /* Weitere Optionen wie font-weight und font-style können angegeben werden */
  
  font-family: 'Caskaydia Cove Nerd Font Complete Propo';
  src: url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontPropo-Bold.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontPropo-BoldItalic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontPropo-ExtraLight.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontPropo-ExtraLightItalic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontPropo-Italic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontPropo-Light.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontPropo-LightItalic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontPropo-Regular.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontPropo-SemiBold.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontPropo-SemiBoldItalic.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontPropo-SemiLight.ttf') format('ttf'),
       url('http://ita12docoszimt.serveblog.net/fonts/CaskaydiaCoveNerdFontPropo-SemiLightItalic.ttf') format('ttff');
  /* Weitere Optionen wie font-weight und font-style können angegeben werden */
}

* {
  font-family: 'Caskaydia Cove Nerd Font Complete', 'CaskaydiaCove Nerd Font Complete Propo', sans-serif; /* Verwendung der eigenen Schriftart für den Text auf der Webseite */
}
h1, h2, h3, h4, h5, h6, code, kbd, pre, samp {
	font-family: 'CaskaydiaCove Nerd Font Complete Mono', 'CaskaydiaCove Nerd Font Complete Propo', monospace;
}

</style>

# Fiben-001 Vlan

## R1
```
version 15.1
service timestamps debug datetime msec
service timestamps log datetime msec
service password-encryption
!
hostname R1
!
boot-start-marker
boot-end-marker
!
!
enable secret class
!
no aaa new-model
!
!
dot11 syslog
ip source-route
!
!
ip cef
!
!
!
no ip domain lookup
no ipv6 cef
!
multilink bundle-name authenticated
!
!
!
!
!
!
!
!
!
!
!
voice-card 0
!
crypto pki token default removal timeout 0
!
!
!
!
license udi pid CISCO2811 sn FCZ100870SS
!
redundancy
!
!
!
!
!
!
!
!
!
!
interface FastEthernet0/0
 ip address 192.168.10.1 255.255.255.0
 duplex auto
 speed auto
 no shutdown
!
interface FastEthernet0/1
 ip address 192.168.20.1 255.255.255.0
 duplex auto
 speed auto
 no shutdown
!
interface Serial0/0/0
 no ip address
 shutdown
 clock rate 2000000
!
interface Serial0/1/0
 no ip address
 shutdown
 clock rate 2000000
!
ip forward-protocol nd
no ip http server
no ip http secure-server
!
!
!
!
!
!
!
!
!
control-plane
!
!
!
!
mgcp profile default
!
!
!
!
!
banner motd ^CC
************************************
*  !! Authoriesed Accsess Only !!  *
************************************
^C
!
line con 0
 password cisco
 logging synchronous
 login
line aux 0
line vty 0 4
 password cisco
 logging synchronous
 login
 transport input all
!
scheduler allocate 20000 1000
end
```
## SW1
```
version 15.0
no service pad
service timestamps debug datetime msec
service timestamps log datetime msec
service password-encryption
!
hostname SW1
!
boot-start-marker
boot-end-marker
!
enable secret class
!
no aaa new-model
system mtu routing 1500
no ip domain-lookup
!
!
!
!
!
!
!
!
spanning-tree mode pvst
spanning-tree extend system-id
!
vlan internal allocation policy ascending
!
!
!
!
!
!
interface FastEthernet0/1
 switchport access vlan 10
 switchport mode access
!
interface FastEthernet0/2
 switchport access vlan 20
 switchport mode access
!
interface FastEthernet0/3
!
interface FastEthernet0/4
!
interface FastEthernet0/5
!
interface FastEthernet0/6
 switchport access vlan 10
 switchport mode access
!
interface FastEthernet0/7
 switchport access vlan 10
 switchport mode access
!
interface FastEthernet0/8
 switchport access vlan 10
 switchport mode access
!
interface FastEthernet0/9
 switchport access vlan 10
 switchport mode access
!
interface FastEthernet0/10
 switchport access vlan 10
 switchport mode access
!
interface FastEthernet0/11
 switchport access vlan 10
 switchport mode access
!
interface FastEthernet0/12
 switchport access vlan 10
 switchport mode access
!
interface FastEthernet0/13
 switchport access vlan 10
 switchport mode access
!
interface FastEthernet0/14
 switchport access vlan 10
 switchport mode access
!
interface FastEthernet0/15
 switchport access vlan 20
 switchport mode access
!
interface FastEthernet0/16
 switchport access vlan 20
 switchport mode access
!
interface FastEthernet0/17
 switchport access vlan 20
 switchport mode access
!
interface FastEthernet0/18
 switchport access vlan 20
 switchport mode access
!
interface FastEthernet0/19
 switchport access vlan 20
 switchport mode access
!
interface FastEthernet0/20
 switchport access vlan 20
 switchport mode access
!
interface FastEthernet0/21
 switchport access vlan 20
 switchport mode access
!
interface FastEthernet0/22
 switchport access vlan 20
 switchport mode access
!
interface FastEthernet0/23
 switchport access vlan 20
 switchport mode access
!
interface FastEthernet0/24
 switchport access vlan 20
 switchport mode access
!
interface FastEthernet0/25
 shutdown
!
interface FastEthernet0/26
 shutdown
!
interface FastEthernet0/27
 shutdown
!
interface FastEthernet0/28
 shutdown
!
interface FastEthernet0/29
 shutdown
!
interface FastEthernet0/30
 shutdown
!
interface FastEthernet0/31
 shutdown
!
interface FastEthernet0/32
 shutdown
!
interface FastEthernet0/33
 shutdown
!
interface FastEthernet0/34
 shutdown
!
interface FastEthernet0/35
 shutdown
!
interface FastEthernet0/36
 shutdown
!
interface FastEthernet0/37
 shutdown
!
interface FastEthernet0/38
 shutdown
!
interface FastEthernet0/39
 shutdown
!
interface FastEthernet0/40
 shutdown
!
interface FastEthernet0/41
 shutdown
!
interface FastEthernet0/42
 shutdown
!
interface FastEthernet0/43
 shutdown
!
interface FastEthernet0/44
 shutdown
!
interface FastEthernet0/45
 shutdown
!
interface FastEthernet0/46
 shutdown
!
interface FastEthernet0/47
 shutdown
!
interface FastEthernet0/48
 shutdown
!
interface GigabitEthernet0/1
!
interface GigabitEthernet0/2
!
interface GigabitEthernet0/3
!
interface GigabitEthernet0/4
!
interface Vlan1
 no ip address
 shutdown
!
interface Vlan10
 ip address 192.168.10.253 255.255.255.0
!
ip http server
ip http secure-server
!
!
logging esm config
!
banner motd ^CC
************************************
*  !! Authoriesed Accsess Only !!  *
************************************
^C
!
line con 0
 password cisco
 logging synchronous
 login
line vty 0 4
 password cisco
 logging synchronous
 login
line vty 5 15
 login
!
end
```
