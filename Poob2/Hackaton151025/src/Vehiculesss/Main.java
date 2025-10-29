package Vehiculesss;

public class Main {
    public static void main(String[] args) {
        Vehicule auto = new Auto("Encendido");
        Vehicule barco = new Barco("Encendido");
        Vehicule dron = new Dron("Encendido");
        System.out.println("Resultados del polimorfismo de los vehiculos ==\n");

        System.out.println("Auto");
        auto.mover();
        auto.frenar();
        ((Auto) auto).reportar_estado();

        System.out.println("\n Barco");
        barco.mover();
        barco.frenar();
        ((Barco) barco).reportar_estado();

        System.out.println("\n Dron");
        dron.mover();
        dron.frenar();
        ((Dron) dron).reportar_estado();


    }


}
