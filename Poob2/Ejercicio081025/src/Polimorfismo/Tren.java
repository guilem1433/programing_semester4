package Polimorfismo;

public class Tren implements Vehiculo{
    private  int cantindad_vagones;
    private double locomotora;

    public Tren(int tipo, double locomotora){
        this.cantindad_vagones = tipo;
        this.locomotora = locomotora;
    }

    @Override
    public void mover(){
        System.out.println("El coche esta en movimiento con un motor de"+ locomotora +
                "cc.");}
    @Override
    public void frenar(){
        System.out.println("El coche ha frenado de forma segura.");

    }
    public void mostrarInfo(){
        System.out.println("Capacidad: "+ cantindad_vagones + "personas");
        System.out.println("locomotora: "+ locomotora + "cc");
    }
}