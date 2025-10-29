package Polimorfismo;

public class Barco implements Vehiculo{
    private int tipo;
    private double propulsion;

    public Barco(int tipo, double propulsion){
        this.tipo = tipo;
        this.propulsion = propulsion;
    }

    @Override
    public void mover(){
        System.out.println("El coche esta en movimiento con un motor de"+ propulsion +
                "cc.");}
    @Override
    public void frenar(){
        System.out.println("El coche ha frenado de forma segura.");

    }
    public void mostrarInfo(){
        System.out.println("Capacidad: "+ tipo + "personas");
        System.out.println("propulsion: "+ propulsion + "cc");
    }
}