package Carros;

public abstract class Vehiculo {
    protected String tipo;
    protected String cilindraje;
    protected String capacidad;
    public Vehiculo(String tipo, String cilindraje, String capacidad) {
        this.tipo = tipo;
        this.cilindraje = cilindraje;
        this.capacidad = capacidad;

    }
    public abstract void tipo();
    public void mostrarTipo(){
        System.out.println("Tipo de vehiculo: " + tipo);
    }
    public abstract void cilindraje();
    public void mostrarCilindraje(){
        System.out.println("Tipo de vehiculo: " + cilindraje);
    }
    public abstract void capacidad();
    public void mostrarCapacidad(){
        System.out.println("Tipo de vehiculo: " + capacidad);
    }

}
