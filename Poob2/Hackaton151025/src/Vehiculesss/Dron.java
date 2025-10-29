package Vehiculesss;

public class Dron implements Vehicule{
    private  String estado;

    public Dron(String estado){
        this.estado = estado;

    }

    public void reportar_estado(){
        System.out.println("Dron, Estado: "+ estado);
    }

    @Override
    public void mover() {
        System.out.println("El Dron esta en movimiento ");


    }
    @Override
    public void frenar(){
        System.out.println("El Dron ha frenado de forma segura.");
    }
}
