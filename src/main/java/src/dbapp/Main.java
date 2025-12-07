package src.dbapp;

import org.flywaydb.core.Flyway;

public class Main {
    public static void main(String[] args) {
        System.out.println("Running Flyway migrations...");

        Flyway flyway = Flyway.configure()
                .dataSource("jdbc:postgresql://localhost:5432/testmigdb", "postgres", "qwerty007")
                .locations("classpath:db/migration")
                .load();

        flyway.migrate();

        System.out.println("Migration completed!");
    }
}
