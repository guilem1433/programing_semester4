
package com.mycompany.paises;

public class PaisDesarrollado extends Pais {

    public PaisDesarrollado(String nombre) {
        super(nombre);
    }

    @Override
    public void tipoPais() {
        System.out.println("Es un pais desarrollado con alto nivel economico y social.");
    }
}
