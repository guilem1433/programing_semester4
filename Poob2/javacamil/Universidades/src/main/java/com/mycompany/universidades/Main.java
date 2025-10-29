
package com.mycompany.universidades;

public class Main {
    public static void main(String[] args) {
        Universidad u1 = new UniversidadPublica("Universidad Nacional");
        Universidad u2 = new UniversidadPrivada("Universidad de los Andes");
        Universidad u3 = new UniversidadTecnologica("SENA");
        Universidad u4 = new UniversidadInternacional("Universidad Internacional de Bogota");
        Universidad u5 = new UniversidadVirtual("UNAD");

        u1.mostrarNombre();
        u1.tipoUniversidad();

        u2.mostrarNombre();
        u2.tipoUniversidad();

        u3.mostrarNombre();
        u3.tipoUniversidad();

        u4.mostrarNombre();
        u4.tipoUniversidad();

        u5.mostrarNombre();
        u5.tipoUniversidad();
    }
}
