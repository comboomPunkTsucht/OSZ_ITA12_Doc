# SQL (MySQL) Grundlagen
<iframe 
  width="100%" 
  height="100%" 
  src="https://www.youtube.com/embed/5OdVJbNCSso?si=x8AdAi6LBZBOt0QI&vq=hd1080&loop=1" 
  title="YouTube video player" 
  frameborder="0" 
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
  allowfullscreen
></iframe>

### Datenbank erstellen

```sql
CREATE DATABASE databasename;
```

### Datenbank auswählen

```sql
USE databasename;
```

### Tabelle erstellen

```sql
CREATE TABLE tablename (
    column1 datatype1 constraints,
    column2 datatype2 constraints,
    ...
);
```

### Datentypen

- `INT` - Ganzzahl
- `VARCHAR(n)` - Zeichenkette mit maximaler Länge `n`
- `DATE` - Datum
- `FLOAT` - Gleitkommazahl

### Constraints

- `PRIMARY KEY` - Primärschlüssel
- `AUTO_INCREMENT` - Automatische Inkrementierung
- `NOT NULL` - Wert darf nicht NULL sein
- `UNIQUE` - Wert muss eindeutig sein
- `FOREIGN KEY` - Fremdschlüssel

### Datensätze einfügen

```sql
INSERT INTO tablename (column1, column2, ...) VALUES (value1, value2, ...);
```

### Datensätze abfragen

```sql
SELECT * FROM tablename;
```

### Bedingte Abfrage

```sql
SELECT * FROM tablename WHERE condition;
```

### Datensätze aktualisieren

```sql
UPDATE tablename SET column1 = value1, column2 = value2 WHERE condition;
```

### Datensätze löschen

```sql
DELETE FROM tablename WHERE condition;
```

### Verknüpfungen

- `INNER JOIN` - Nur übereinstimmende Zeilen
- `LEFT JOIN` - Alle Zeilen aus der linken Tabelle und übereinstimmende aus der rechten
- `RIGHT JOIN` - Alle Zeilen aus der rechten Tabelle und übereinstimmende aus der linken
- `FULL OUTER JOIN` - Alle Zeilen, wenn es Übereinstimmungen gibt

```sql
SELECT * FROM table1 JOIN table2 ON table1.column = table2.column;
```

### Gruppieren und Aggregatfunktionen

```sql
SELECT column, COUNT(*) FROM tablename GROUP BY column;
```

### Unterabfragen

```sql
SELECT * FROM tablename WHERE column IN (SELECT column FROM anothertable WHERE condition);
```

### Indizes

```sql
CREATE INDEX indexname ON tablename (column);
```

### Transaktionen

```sql
START TRANSACTION;
-- SQL-Anweisungen
COMMIT;
```

### Sichten (Views)

```sql
CREATE VIEW viewname AS SELECT column1, column2 FROM tablename WHERE condition;
```

### Benutzer verwalten

```sql
CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON databasename.* TO 'username'@'localhost';
FLUSH PRIVILEGES;
```

### Datenbank sichern und wiederherstellen

```bash
mysqldump -u username -p databasename > dump.sql
mysql -u username -p databasename < dump.sql
```

### Hinweis

- Ersetze `databasename`, `tablename`, `column`, `value`, etc. mit den entsprechenden Namen und Werten.
- Achte auf die Groß- und Kleinschreibung, da SQL case-sensitive ist.
- Dies ist nur eine grundlegende Übersicht. Es gibt viele weitere fortgeschrittene Konzepte in MySQL.
