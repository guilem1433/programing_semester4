
package com.mycompany.paises;

public class PaisEnDesarrollo extends Pais {

    public PaisEnDesarrollo(String nombre) {
        super(nombre);
    }

    @Override
    public void tipoPais() {
        System.out.println("Es un pais en desarrollo con crecimiento economico moderado.");
    }
}
