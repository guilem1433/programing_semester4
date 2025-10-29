package Carros;

public class Camion extends Vehiculo{
    public Camion(String tipo, String cilindraje, String capacidad) {
        super(tipo, cilindraje, capacidad);
    }
    @Override
    public void tipo(){
        System.out.println("Camion");
    }
    @Override
    public void cilindraje(){
        System.out.println("5000cc");

    }
    @Override
    public void capacidad(){
        System.out.println("5");

    }
}
