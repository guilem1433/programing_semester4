
package com.mycompany.universidades;

public abstract class Universidad {
    protected String nombre;

    public Universidad(String nombre) {
        this.nombre = nombre;
    }

    public abstract void tipoUniversidad();

    public void mostrarNombre() {
        System.out.println("Nombre de la universidad: " + nombre);
    }
}