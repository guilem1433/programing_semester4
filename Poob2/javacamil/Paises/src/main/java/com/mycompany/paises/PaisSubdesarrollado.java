
package com.mycompany.paises;

    public class PaisSubdesarrollado extends Pais {

    public PaisSubdesarrollado(String nombre) {
        super(nombre);
    }

    @Override
    public void tipoPais() {
        System.out.println("Es un pais subdesarrollado con bajos indicadores economicos.");
    }
}
