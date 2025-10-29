
package com.mycompany.paises;

public class PaisIsla extends Pais {

    public PaisIsla(String nombre) {
        super(nombre);
    }

    @Override
    public void tipoPais() {
        System.out.println("Es un pais insular rodeado de agua.");
    }
}
