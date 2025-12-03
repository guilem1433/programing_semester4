// Java
package Empresa_envios;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        boolean running = true;

        while (running) {
            System.out.println("=== Menu ===");
            System.out.println("1) Estandar");
            System.out.println("2) Express");
            System.out.println("3) Refrigerado");
            System.out.println("4) Internacional");
            System.out.println("5) Crear envio (custom)");
            System.out.println("6) Camion");
            System.out.println("7) Moto");
            System.out.println("8) Dron");
            System.out.println("9) Autonomo");
            System.out.println("10) Crear transporte (custom)");
            System.out.println("0) Exit");
            System.out.print("Choice: ");
            String choice = sc.nextLine().trim();

            switch (choice) {
                case "1": {
                    Estandar estandar = new Estandar();
                    System.out.println("Estandar:");
                    System.out.println("ID: " + estandar.getId());
                    System.out.println("Costo: " + estandar.getCosto());
                    System.out.println("Tiempo (horas): " + estandar.getTiempo());
                    System.out.println("Manejo: " + estandar.getManejo());
                    break;
                }
                case "2": {
                    Express express = new Express();
                    System.out.println("Express:");
                    System.out.println("ID: " + express.getId());
                    System.out.println("Costo: " + express.getCosto());
                    System.out.println("Tiempo (horas): " + express.getTiempo());
                    System.out.println("Manejo: " + express.getManejo());
                    break;
                }
                case "3": {
                    Refrigerado refrigerado = new Refrigerado();
                    System.out.println("Refrigerado:");
                    System.out.println("ID: " + refrigerado.getId());
                    System.out.println("Costo: " + refrigerado.getCosto());
                    System.out.println("Tiempo (horas): " + refrigerado.getTiempo());
                    System.out.println("Manejo: " + refrigerado.getManejo());
                    break;
                }
                case "4": {
                    Internacional internacional = new Internacional();
                    System.out.println("Internacional:");
                    System.out.println("ID: " + internacional.getId());
                    System.out.println("Costo: " + internacional.getCosto());
                    System.out.println("Tiempo (horas): " + internacional.getTiempo());
                    System.out.println("Manejo: " + internacional.getManejo());
                    break;
                }
                case "5": {
                    System.out.println("Crear envio (custom):");
                    Crear_envio customEnvio = Crear_envio.createFromInput(sc);
                    System.out.println("ID: " + customEnvio.getId());
                    System.out.println("Costo: " + customEnvio.getCosto());
                    System.out.println("Tiempo (minutos): " + customEnvio.getTiempo());
                    System.out.println("Manejo: " + customEnvio.getManejo());
                    break;
                }
                case "6": {
                    Camion camion = new Camion();
                    System.out.println("Vehiculo: Camion");
                    System.out.println("ID: " + camion.getId());
                    System.out.println("Name: " + camion.getName());
                    break;
                }
                case "7": {
                    Moto moto = new Moto();
                    System.out.println("Vehiculo: Moto");
                    System.out.println("ID: " + moto.getId());
                    System.out.println("Name: " + moto.getName());
                    break;
                }
                case "8": {
                    Dron dron = new Dron();
                    System.out.println("Vehiculo: Dron");
                    System.out.println("ID: " + dron.getId());
                    System.out.println("Name: " + dron.getName());
                    break;
                }
                case "9": {
                    Autonomo autonomo = new Autonomo();
                    System.out.println("Vehiculo: Autonomo");
                    System.out.println("ID: " + autonomo.getId());
                    System.out.println("Name: " + autonomo.getName());
                    break;
                }
                case "10": {
                    System.out.println("Crear transporte (custom):");
                    Crear_transporte customTransporte = Crear_transporte.createFromInput(sc);
                    System.out.println("ID: " + customTransporte.getId());
                    System.out.println("Name: " + customTransporte.getName());
                    break;
                }
                case "0":
                    running = false;
                    break;
                default:
                    System.out.println("Unknown option.");
            }
            System.out.println();
        }

        sc.close();
    }
}
