package Polimorfismo;

public class Coche implements Vehiculo{
    private  int capacidad;
    private double cilindraje;

    public Coche(int capacidad, double cilindraje){
        this.capacidad = capacidad;
        this.cilindraje = cilindraje;
    }

    @Override
    public void mover(){
        System.out.println("El coche esta en movimiento con un motor de"+cilindraje+
                "cc.");}
    @Override
    public void frenar(){
        System.out.println("El coche ha frenado de forma segura.");

    }
    public void mostrarInfo(){
        System.out.println("Capacidad: "+ capacidad+ "personas");
        System.out.println("cilindraje: "+ cilindraje + "cc");
    }
}
