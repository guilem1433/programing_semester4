
package com.mycompany.universidades;

public class UniversidadInternacional extends Universidad {

    public UniversidadInternacional(String nombre) {
        super(nombre);
    }

    @Override
    public void tipoUniversidad() {
        System.out.println("Es una universidad internacional con convenios en varios paises.");
    }
}