# SQL (MySQL) Grundlagen

<div style="padding-bottom: 56.25%; position: relative;">
  <iframe 
    width="100%" 
    height="100%" 
    src="https://www.youtube.com/embed/5OdVJbNCSso?si=x8AdAi6LBZBOt0QI&vq=hd1080&loop=1" 
    frameborder="0" 
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture; fullscreen" 
    style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
  ></iframe>
  </div>

## 1. Datenbank und Tabelle erstellen:

```sql
-- Datenbank erstellen
CREATE DATABASE IF NOT EXISTS meine_datenbank;

-- Tabelle erstellen
USE meine_datenbank;
CREATE TABLE IF NOT EXISTS meine_tabelle (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    alter INT
);
```

## 2. Datensatz einfügen:

```sql
INSERT INTO meine_tabelle (id, name, alter)
VALUES (1, 'Max Mustermann', 30);
```

## 3. Daten abfragen:

```sql
SELECT * FROM meine_tabelle;
```

## 4. Bedingte Abfrage (WHERE-Klausel):

```sql
SELECT * FROM meine_tabelle WHERE alter > 25;
```

## 5. Daten aktualisieren:

```sql
UPDATE meine_tabelle SET alter = 31 WHERE id = 1;
```

## 6. Daten löschen:

```sql
DELETE FROM meine_tabelle WHERE id = 1;
```

## 7. Join (INNER JOIN):

```sql
SELECT t1.id, t1.name, t2.adresse
FROM tabelle1 t1
INNER JOIN tabelle2 t2 ON t1.id = t2.id;
```

## 8. Join (LEFT JOIN):

```sql
SELECT t1.id, t1.name, t2.adresse
FROM tabelle1 t1
LEFT JOIN tabelle2 t2 ON t1.id = t2.id;
```

## 9. Unterabfrage (Subquery):

```sql
SELECT spalte1, spalte2
FROM tabelle1
WHERE spalte1 IN (SELECT spalte1 FROM tabelle2);
```

## 10. Aggregatfunktion (COUNT):

```sql
SELECT COUNT(*) FROM meine_tabelle;
```

## 11. Transaktionen:

```sql
-- Transaktion starten
START TRANSACTION;

-- SQL-Befehle hier ausführen

-- Transaktion beenden (Commit)
COMMIT;

-- Transaktion rückgängig machen (Rollback)
ROLLBACK;
```

## 12. Index erstellen:

```sql
CREATE INDEX index_name ON meine_tabelle(spalte);
```

## 13. Datenbank löschen:

```sql
-- Datenbank löschen
DROP DATABASE IF EXISTS meine_datenbank;
```

## 14. Tabelle löschen:

```sql
-- Tabelle löschen
DROP TABLE IF EXISTS meine_tabelle;
```

## 15. Bedingte Abfrage (AND, OR):

```sql
SELECT * FROM meine_tabelle WHERE alter > 25 AND geschlecht = 'weiblich';
SELECT * FROM meine_tabelle WHERE ort = 'Berlin' OR ort = 'Hamburg';
```

## 16. Bedingte Abfrage (LIKE):

```sql
-- Alle Namen, die mit "M" beginnen
SELECT * FROM meine_tabelle WHERE name LIKE 'M%';

-- Alle Namen, die "e" als dritten Buchstaben haben
SELECT * FROM meine_tabelle WHERE name LIKE '__e%';
```

## 17. Sortieren (ORDER BY):

```sql
-- Aufsteigend nach Alter sortieren
SELECT * FROM meine_tabelle ORDER BY alter ASC;

-- Absteigend nach Namen sortieren
SELECT * FROM meine_tabelle ORDER BY name DESC;
```

## 18. Datensätze gruppieren (GROUP BY):

```sql
-- Anzahl der Personen pro Ort ermitteln
SELECT ort, COUNT(*) as anzahl_personen FROM meine_tabelle GROUP BY ort;
```

## 19. Aggregatfunktionen (SUM, AVG, MIN, MAX):

```sql
-- Summe der Gehälter berechnen
SELECT SUM(gehalt) FROM mitarbeiter;

-- Durchschnittsalter berechnen
SELECT AVG(alter) FROM meine_tabelle;

-- Älteste Person finden
SELECT MAX(alter) FROM meine_tabelle;
```

## 20. Daten aktualisieren (CASE-Anweisung):

```sql
-- Alter basierend auf einer Bedingung aktualisieren
UPDATE meine_tabelle
SET alter = CASE
    WHEN geschlecht = 'weiblich' THEN alter + 1
    ELSE alter
END;
```

## 21. Benutzer und Berechtigungen erstellen (für Administratoren):

```sql
-- Benutzer erstellen
CREATE USER 'neuer_benutzer'@'localhost' IDENTIFIED BY 'passwort';

-- Berechtigungen zuweisen
GRANT SELECT, INSERT, UPDATE ON meine_datenbank.meine_tabelle TO 'neuer_benutzer'@'localhost';

-- Berechtigungen widerrufen
REVOKE INSERT ON meine_datenbank.meine_tabelle FROM 'neuer_benutzer'@'localhost';

-- Benutzer löschen
DROP USER 'neuer_benutzer'@'localhost';
```

## 22. Datenbankverbindung herstellen:

```sql
-- Verbindung zur Datenbank herstellen
mysql -u benutzername -p passwort -h host -D datenbankname
```

## 23. Zeichenkodierung festlegen:

```sql
-- Zeichenkodierung in der Datenbank setzen
ALTER DATABASE meine_datenbank CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Zeichenkodierung in der Tabelle setzen
ALTER TABLE meine_tabelle CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

## 24. Sichere Passwörter verwenden:

```sql
-- Ein sicheres Passwort setzen
ALTER USER 'benutzer'@'localhost' IDENTIFIED WITH mysql_native_password BY 'sicheres_passwort';
```

## 25. Backups erstellen und wiederherstellen:

```sql
-- Backup erstellen
mysqldump -u benutzername -p passwort meine_datenbank > backup.sql

-- Datenbank wiederherstellen
mysql -u benutzername -p passwort meine_datenbank < backup.sql
```

## 26. Indizes richtig verwenden:

```sql
-- Indexe anlegen
CREATE INDEX index_name ON meine_tabelle(spalte);

-- Indexe entfernen
DROP INDEX index_name ON meine_tabelle;
```

## 27. Views erstellen:

```sql
-- View erstellen
CREATE VIEW mein_view AS
SELECT spalte1, spalte2 FROM meine_tabelle WHERE bedingung;

-- View aktualisieren
CREATE OR REPLACE VIEW mein_view AS
SELECT spalte1, spalte2 FROM meine_tabelle WHERE bedingung;
```

## 28. Trigger definieren:

```sql
-- Trigger erstellen
DELIMITER //
CREATE TRIGGER mein_trigger BEFORE INSERT ON meine_tabelle
FOR EACH ROW
BEGIN
    -- Trigger-Code hier
END;
//

-- Trigger entfernen
DROP TRIGGER IF EXISTS mein_trigger;
```

## 29. Datenbankrechte verwalten:

```sql
-- Berechtigungen zuweisen
GRANT SELECT, INSERT ON meine_datenbank.meine_tabelle TO 'benutzer'@'localhost';

-- Berechtigungen widerrufen
REVOKE INSERT ON meine_datenbank.meine_tabelle FROM 'benutzer'@'localhost';
```

## 30. Fehlerbehandlung mit Stored Procedures:

```sql
-- Stored Procedure erstellen
DELIMITER //
CREATE PROCEDURE meine_prozedur()
BEGIN
    -- Prozedur-Code hier
END;
//

-- Stored Procedure aufrufen
CALL meine_prozedur();
```

## 31. Verwendung der `IN`-Klausel:

### Abfrage nach bestimmten IDs:

```sql
SELECT * FROM meine_tabelle WHERE id IN (1, 3, 5);
```

### Abfrage mit einer Unterabfrage:

```sql
SELECT * FROM meine_tabelle WHERE id IN (SELECT id FROM andere_tabelle WHERE bedingung);
```

### Verwendung mit Zeichenketten:

```sql
SELECT * FROM meine_tabelle WHERE name IN ('Max', 'Anna', 'Peter');
```

### Verwendung mit Subquery und `NOT IN`:

```sql
SELECT * FROM meine_tabelle WHERE id NOT IN (SELECT id FROM andere_tabelle WHERE bedingung);
```

## 32. Datentypen

| Datentyp  | Minimale Größe          | Maximale Größe           | Beispiel                          |
| --------- | ------------------------- | -------------------------- | --------------------------------- |
| TINYINT   | 1 Byte                    | 255                        | -128                              |
| SMALLINT  | 2 Byte                    | 65535                      | 127                               |
| MEDIUMINT | 3 Byte                    | 16777215                   | 32767                             |
| INT       | 4 Byte                    | 4294967295                 | 2147483647                        |
| BIGINT    | 8 Byte                    | 18446744073709551615       | 9223372036854775807               |
| FLOAT     | 4 Byte                    | 1.1754943508222875e-38 to  | 314.159                           |
|           |                           | 3.4028234663852886e+38     |                                   |
| DOUBLE    | 8 Byte                    | 1.7976931348623158e+308 to | 14.142.135.623.730.900            |
|           |                           | -1.7976931348623158e+308   |                                   |
| DECIMAL   | 1 Byte to 64 Byte         | -10^38 to 10^38            | 123.456.789                       |
| DATE      | 3 Byte                    | YYYY-MM-DD                 | 2023-07-20                        |
| TIME      | 3 Byte                    | HH:MM:SS                   | 12:00:00                          |
| DATETIME  | 8 Byte                    | YYYY-MM-DD HH:MM:SS        | 2023-07-20 12:00:00               |
| TIMESTAMP | 4 Byte                    | YYYY-MM-DD HH:MM:SS        | 2023-07-20 12:00:00               |
| CHAR      | 1 Byte to 255 Byte        | 1 Byte to 255 Byte         | "Max Mustermann"                  |
| VARCHAR   | 1 Byte to 65535 Byte      | 1 Byte to 65535 Byte       | "Musterstraße 1"                 |
| BINARY    | 1 Byte to 255 Byte        | 1 Byte to 255 Byte         | "1234567890"                      |
| VARBINARY | 1 Byte to 65535 Byte      | 1 Byte to 65535 Byte       | "Musterstadt"                     |
| BLOB      | 1 Byte to 4294967295 Byte | 1 Byte to 4294967295 Byte  | "Musterfoto.jpg"                  |
| TEXT      | 1 Byte to 65535 Byte      | 1 Byte to 65535 Byte       | "Musterbeschreibung"              |
| ENUM      | 1 Byte to 64 Byte         | 1 Byte to 64 Byte          | "männlich", "weiblich"           |
| SET       | 1 Byte to 64 Byte         | 1 Byte to 64 Byte          | "männlich", "weiblich", "divers" |
