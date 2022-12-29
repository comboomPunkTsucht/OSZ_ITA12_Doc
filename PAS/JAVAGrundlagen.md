 <style>
    .amazon {
        text-align: center;
        color: #ffffff;
        border-radius: 10px;
        background-color: #232E3F;
        border: 1px solid #232E3F;
        padding-top: 20px;
        padding-bottom: 20px;
        padding-left: 20px;
    }
</style>

:::amazon
<iframe src="https://rcm-eu.amazon-adsystem.com/e/cm?o=3&p=13&l=ur1&category=amazongeneric&banner=0HKWS4G1V016X4K0S2R2&f=ifr&linkID={{link_id}}&t=comboompunkts-21&tracking_id=comboompunkts-21" width="468" height="60" scrolling="no" border="0" marginwidth="0" style="border:none;" frameborder="0" sandbox="allow-scripts allow-same-origin allow-popups allow-top-navigation-by-user-activation"></iframe>
:::

# Java Grundlagen

## Klassen

```java #
public class Klassenname {
    //some code
    // Attribute
    // Methoden
}
```

## Methoden

### Wertrückgabe

```java # 
public Datentyp methodenname(Datentyp parametername, ...) {
    //some code
    return Wert;
}
```
### Wertrückgabe per Variable

```java # 
public Datentyp methodenname(Datentyp parametername, ...) {
    //some code
    return variable;
}
```
### Keine Wertrückgabe

```java #
public void methodenname(Datentyp parametername, ...) {
    //some code
}
```

### Methodenaufruf aus Testklasse

```java # 
methodenname(parametername, ...);
```

### Methodenaufruf aus Objektklasse

```java # 
Objektname.methodenname(parametername, ...);
```

### Methodenaufruf in Objektklasse

```java # 
this.methodenname(parametername, ...);
```


## Variablen

### Ohne Initialisierung

```java #
Datentyp variablenname;
```

### Mit Initialisierung

 ```java #
Datentyp variablenname = Wert;
```

### Wertzuweisung einer Variable aus Testklasse

```java # 
variablenname = Wert;
```
    
### Konstante

```java # 
final Datentyp variablenname = Wert;
```

### Array

```java # 
Datentyp[] variablenname = new Datentyp[Anzahl];
```

### Array mit Initialisierung

```java # 
Datentyp[] variablenname = {Wert1, Wert2, ...};
```

###  Wertzuweisung eines Array-Elements aus Testklasse

```java #
variablenname[Arrayindex] = Wert;
```

### Wertzuweisung einer Variable eines Objekts aus Testklasse

```java # 
Objektname.variablenname = Wert;
```

###  Wertzuweisung eines Array-Elements eines Objekts

```java #
Objektname.variablenname[Arrayindex] = Wert;
```

### Wertzuweisung einer Variable in Objektklasse

```java # 
this.variablenname = Wert;
```

### Wertzuweisung einer Variable eines Array-Objektes

```java # 
Objektname[Arrayindex].variablenname = Wert;
```

### Wertzuweisung eines Array-Elements eines Array-Objektes

```java # 
Objektname[Arrayindex].variablenname[Arrayindex] = Wert;
```

### Wertzuweisung eines Array-Elements in Objektklasse

```java # 
this.variablenname[Arrayindex] = Wert;
```

## Konstruktoren

### Normal

```java # 
Klassenname variablenname = new Klassenname(parametername, ...);
```

### Array

```java # 
Datentyp[] variablenname = new Datentyp[Anzahl];

for (int i = 0; i < Anzahl; i++) {
    variablenname[i] = new Datentyp(parametername, ...);
}
```

### in Objectklasse

```java # 
public Klassenname {

    klassenname(Datentyp parametername, ...) {
        //some code
    }
}
```

## Kontrollstrukturen / Schleifen

### if

```java #
if (Bedingung) {
    //some code
}
```

### if else

```java # 
if (Bedingung) {
    //some code
} else {
    //some code
}
```

###  if else if

```java #
if (Bedingung) {
    //some code
} else if (Bedingung) {
    //some code
} else {
    //some code
}
```

### switch (case)

```java #
switch (Variable) {
    case Wert1:
        //some code
        break;
    case Wert2:
        //some code
        break;
    default:
        //some code
}
```

### while

```java #
while (Bedingung) {
    //some code
}
```

###  do while

```java #
do {
    //some code
} while (Bedingung);
```

### for

```java #
for (int i = 0; i < Anzahl; i++) {
    //some code
}
```

### for each

```java # 
for (Datentyp variablenname : Array) {
    //some code
}
```

## Konsole

### Ausgabe

```java # 
System.out.println("Text");
```

### Eingabe
    
```java #
import java.util.Scanner;

Klassenname {
        Scanner scanner = new Scanner(System.in);
        String eingabe = scanner.next();
        String eingabe = scanner.nextLine();
        int eingabe = scanner.nextInt();
        double eingabe = scanner.nextDouble();
        char eingabe = scanner.next().charAt(0);
}
```