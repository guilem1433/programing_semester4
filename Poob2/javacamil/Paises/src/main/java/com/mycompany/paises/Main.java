
package com.mycompany.paises;

public class Main {
    public static void main(String[] args) {
        Pais p1 = new PaisDesarrollado("Estados Unidos");
        Pais p2 = new PaisEnDesarrollo("Colombia");
        Pais p3 = new PaisSubdesarrollado("Haiti");
        Pais p4 = new PaisIsla("Japon");
        Pais p5 = new PaisPetrolero("Arabia Saudita");

        p1.mostrarNombre();
        p1.tipoPais();

        p2.mostrarNombre();
        p2.tipoPais();

        p3.mostrarNombre();
        p3.tipoPais();

        p4.mostrarNombre();
        p4.tipoPais();

        p5.mostrarNombre();
        p5.tipoPais();
    }
}