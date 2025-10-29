package Polimorfismo;

import java.util.Arrays;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Vehiculo coche = new Coche(5,1600);
        Vehiculo barco = new Barco(20,50.5);
        Vehiculo tren = new Tren(10,200);
        System.out.println("Resultados del polimorfismo de los vehiculos ==\n");

        System.out.println("Coche");
        coche.mover();
        coche.frenar();
        ((Coche) coche).mostrarInfo();

        System.out.println("\n Barco");
        barco.mover();
        barco.frenar();
        ((Barco) barco).mostrarInfo();

        System.out.println("\n Tren");
        barco.mover();
        barco.frenar();
        ((Tren) tren).mostrarInfo();

    }
}