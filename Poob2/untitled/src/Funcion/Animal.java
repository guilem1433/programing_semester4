package Funcion;

public abstract class Animal {
    protected String nombre;

    public Animal(String nombre) {
        this.nombre = nombre;
    }
    public abstract void hacerSonido();

    public void mostrarNombre() {
        System.out.println("Nombre animal: " + nombre);
    }
}
