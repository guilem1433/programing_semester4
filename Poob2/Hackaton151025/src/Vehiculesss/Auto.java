package Vehiculesss;
public class Auto implements Vehicule{
    private  String estado;

    public Auto(String estado){
        this.estado = estado;

    }

    public void reportar_estado(){
        System.out.println("Estado: "+ estado);
    }

    @Override
    public void mover() {
        System.out.println("El Auto esta en movimiento ");


    }
    @Override
    public void frenar(){
        System.out.println("El Auto ha frenado de forma segura.");
    }
}