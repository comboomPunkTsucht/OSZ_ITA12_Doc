# Using SQL in Java

## 1. **MySQL Connector/J herunterladen:**
   Zuerst müssen Sie den MySQL Connector/J JDBC-Treiber herunterladen und in Ihrem Projekt einbinden. Sie können es von der offiziellen MySQL-Website herunterladen.

## 2. **Projekt einrichten:**
   Erstellen Sie ein neues Java-Projekt in Ihrer bevorzugten Entwicklungsumgebung und fügen Sie den heruntergeladenen JDBC-Treiber zu den externen Bibliotheken hinzu.

## 3. **Datenbankverbindung herstellen:**
   Verwenden Sie die `java.sql.Connection`-Schnittstelle, um eine Verbindung zur MySQL-Datenbank herzustellen. Geben Sie dabei die Datenbank-URL, den Benutzernamen und das Passwort an.

   ```java
   import java.sql.Connection;
   import java.sql.DriverManager;
   import java.sql.SQLException;

   public class DatabaseConnector {
       private static final String JDBC_URL = "jdbc:mysql://localhost:3306/deineDatenbank";
       private static final String USER = "deinBenutzername";
       private static final String PASSWORD = "deinPasswort";

       public static Connection connect() throws SQLException {
           return DriverManager.getConnection(JDBC_URL, USER, PASSWORD);
       }
   }
   ```

## 4. **SQL-Abfragen ausführen:**
   Nutzen Sie die `java.sql.Statement`-Schnittstelle, um SQL-Abfragen auszuführen. Hier ist ein einfaches Beispiel zum Abrufen von Daten:

   ```java
   import java.sql.Connection;
   import java.sql.ResultSet;
   import java.sql.SQLException;
   import java.sql.Statement;

   public class Main {
       public static void main(String[] args) {
           try {
               Connection connection = DatabaseConnector.connect();
               Statement statement = connection.createStatement();

               String query = "SELECT * FROM deineTabelle";
               ResultSet resultSet = statement.executeQuery(query);

               while (resultSet.next()) {
                   // Verarbeite die Ergebnisse hier
                   System.out.println(resultSet.getString("spaltenName"));
               }

               // Aufräumen
               resultSet.close();
               statement.close();
               connection.close();
           } catch (SQLException e) {
               e.printStackTrace();
           }
       }
   }
   ```