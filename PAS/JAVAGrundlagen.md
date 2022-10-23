# Java Grundlagen

### Konsole
    
```java # Ausgabe
System.out.println("Text");
```
    
```java # Eingabe
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


## Klassen

```java #
public class Klassenname {
    //some code
    // Attribute
    // Methoden
}
```

## Methoden

```java # Wertrückgabe
public Datentyp methodenname(Datentyp parametername, ...) {
    //some code
    return Wert;
}
```

```java # Wertrückgabe per Variable
public Datentyp methodenname(Datentyp parametername, ...) {
    //some code
    return variable;
}
```

```java # Keine Wertrückgabe
public void methodenname(Datentyp parametername, ...) {
    //some code
}
```
```java # Methodenaufruf aus Testklasse
methodenname(parametername, ...);
```

```java # Methodenaufruf aus Objektklasse
Objektname.methodenname(parametername, ...);
```
```java # Methodenaufruf in Objektklasse
this.methodenname(parametername, ...);
```


## Variablen

```java # Ohne Initialisierung
Datentyp variablenname;
```

 ```java # Mit Initialisierung
Datentyp variablenname = Wert;
```
```java # Wertzuweisung einer Variable aus Testklasse
variablenname = Wert;
```
    


```java # Konstante
final Datentyp variablenname = Wert;
```

```java # Array
Datentyp[] variablenname = new Datentyp[Anzahl];
```

```java # Array mit Initialisierung
Datentyp[] variablenname = {Wert1, Wert2, ...};
```

```java # Wertzuweisung eines Array-Elements aus Testklasse
variablenname[Arrayindex] = Wert;
```

```java # Wertzuweisung einer Variable eines Objekts aus Testklasse
Objektname.variablenname = Wert;
```

```java # Wertzuweisung eines Array-Elements eines Objekts
Objektname.variablenname[Arrayindex] = Wert;
```
```java # Wertzuweisung einer Variable in Objektklasse
this.variablenname = Wert;
```

```java # Wertzuweisung einer Variable eines Array-Objektes
Objektname[Arrayindex].variablenname = Wert;
```

```java # Wertzuweisung eines Array-Elements eines Array-Objektes
Objektname[Arrayindex].variablenname[Arrayindex] = Wert;
```

```java # Wertzuweisung eines Array-Elements in Objektklasse
this.variablenname[Arrayindex] = Wert;
```

## Konstruktoren

```java # Normal
Klassenname variablenname = new Klassenname(parametername, ...);
```

```java # Array
Datentyp[] variablenname = new Datentyp[Anzahl];

for (int i = 0; i < Anzahl; i++) {
    variablenname[i] = new Datentyp(parametername, ...);
}
```

```java # in Objectklasse
public Klassenname {

    klassenname(Datentyp parametername, ...) {
        //some code
    }
}
```

## Kontrollstrukturen / Schleifen

```java # if
if (Bedingung) {
    //some code
}
```

```java # if else
if (Bedingung) {
    //some code
} else {
    //some code
}
```

```java # if else if
if (Bedingung) {
    //some code
} else if (Bedingung) {
    //some code
} else {
    //some code
}
```

```java # switch
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

```java # while
while (Bedingung) {
    //some code
}
```

```java # do while
do {
    //some code
} while (Bedingung);
```

```java # for
for (int i = 0; i < Anzahl; i++) {
    //some code
}
```

```java # for each
for (Datentyp variablenname : Array) {
    //some code
}
```


