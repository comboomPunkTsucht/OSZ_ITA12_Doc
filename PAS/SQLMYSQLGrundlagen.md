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
