package transporte;


import componentescomunes.LoggerSistema;

import java.util.Arrays;

public class Transport_main {
    public static void main(String[] args) {
        LoggerSistema logger = new LoggerSistema();
        logger.registrar("Iniciando sistema transporte");
        logger.registrar("vehiculo en ruta: bus 4353");
        logger.registrar("Se ha finzalizado el recorrido");

        System.out.println("Sistema de transportes funcional");

    }
}
