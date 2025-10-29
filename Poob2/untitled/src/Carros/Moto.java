package Carros;

public class Moto extends Vehiculo{
    public Moto(String tipo, String cilindraje, String capacidad) {
        super(tipo, cilindraje, capacidad);
    }
    @Override
    public void tipo(){
        System.out.println("Moto");
    }
    @Override
    public void cilindraje(){
        System.out.println("155cc");

    }
    @Override
    public void capacidad(){
        System.out.println("2");

    }
}
