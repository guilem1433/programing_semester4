package biblioteca;

import componentescomunes.LoggerSistema;

import java.util.Arrays;

public class BiblioMain {
    public static void main(String[] args) {
        LoggerSistema logger = new LoggerSistema();

        logger.registrar("Init biblio sistem");
        logger.registrar("Usuario solicito prestamo de libro");
        logger.registrar("Libro devuelto correctamente.");

        System.out.println("Sistema ejecutado correctamente");
    }
}
