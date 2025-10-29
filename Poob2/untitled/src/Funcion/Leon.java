package Funcion;

public class Leon extends Animal{
    public Leon(String nombre){
        super(nombre);
    }
    @Override
    public void hacerSonido(){
        System.out.println("El Leon ruge");
    }
}
