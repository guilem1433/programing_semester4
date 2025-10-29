
package com.mycompany.paises;

public class PaisPetrolero extends Pais {

    public PaisPetrolero(String nombre) {
        super(nombre);
    }

    @Override
    public void tipoPais() {
        System.out.println("Es un pais petrolero cuya economia depende del crudo.");
    }
}
