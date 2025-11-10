package Carros;

public class Tanque extends Vehiculo{
    public Tanque(String tipo, String cilindraje, String capacidad) {
        super(tipo, cilindraje, capacidad);
    }
    @Override
    public void tipo(){
        System.out.println("tanque");
    }
    @Override
    public void cilindraje(){
        System.out.println("8000cc");

    }
    @Override
    public void capacidad(){
        System.out.println("8");

    }
}
