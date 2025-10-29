package Funcion;

public class Main {
    public static void main(String[] args) {
        Animal a1 = new Leon("bimba");
        Animal a2 = new Perro("Rexo");
        Animal a3 = new Gato("Mimisucu");

        a1.mostrarNombre();
        a1.hacerSonido();

        a2.mostrarNombre();
        a2.hacerSonido();

        a3.mostrarNombre();
        a3.hacerSonido();
    }
}
