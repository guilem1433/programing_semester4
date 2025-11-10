package Carros;

public class Bus extends Vehiculo{
    public Bus(String tipo, String cilindraje, String capacidad) {
        super(tipo, cilindraje, capacidad);
    }
    @Override
    public void tipo(){
        System.out.println("Bus");
    }
    @Override
    public void cilindraje(){
        System.out.println("2500cc");

    }
    @Override
    public void capacidad(){
        System.out.println("30");

    }
}

