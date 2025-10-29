package Vehiculesss;

public class Barco implements Vehicule{
    private  String estado;

    public Barco(String estado){
        this.estado = estado;

    }

    public void reportar_estado(){
        System.out.println("Barco, Estado: "+ estado);
    }

    @Override
    public void mover() {
        System.out.println("El Barco esta en movimiento ");


    }
    @Override
    public void frenar(){
        System.out.println("El Barco ha frenado de forma segura.");
    }
}

