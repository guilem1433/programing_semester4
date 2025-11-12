package tienda;

import componentescomunes.LoggerSistema;

public class TiendaMain {
    public static void main(String[] args) {
        LoggerSistema logger = new LoggerSistema();
        logger.registrar("Iniciando sys de la tienda");
        logger.registrar("Prodcucto registrado");
        logger.registrar("cerrrar sesión");
        System.out.println("el sistema de tienda fue ejecutado perfectamente");
    }
}
