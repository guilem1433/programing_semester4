
package com.mycompany.paises;

public abstract class Pais {
    protected String nombre;

    public Pais(String nombre) {
        this.nombre = nombre;
    }

    public abstract void tipoPais();

    public void mostrarNombre() {
        System.out.println("Nombre del pais: " + nombre);
    }
}