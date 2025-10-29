import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Sitema {

    public static void main(String[] args) {
        List<String> list = new ArrayList<>();
        try (Scanner sc = new Scanner(System.in)) {
            while (list.size() < 7) {
                ingresarProducto(list, sc);
                System.out.println("Tamaño de lista: " + list.size());
            }

            System.out.println("Lista original" + list);

            System.out.print("producto de salid ");
            String toDelete = sc.nextLine().trim();
            salidaProducto(list, sc); // will prompt again if needed

            gen_inf(list);

            String value = sc.nextLine().trim();
            int idx = Seguimiento(list, value);
            if (idx >= 0) {
                System.out.println("Dato encontrado: " + idx);
            } else {
                System.out.println("Valor no encontrado");
            }
        }
    }

    private static void Seguimiento(List<String> list) {
    }

    static void ingresarProducto(List<String> list, Scanner sc) {
        System.out.print("Ingresar producto: ");
        String input = sc.nextLine().trim();
        if (!input.isEmpty()) {
            list.add(input);
        } else {
            System.out.println("Ningun producto");
        }
    }

    // Delete an element from the list by value (case-insensitive).
    static void salidaProducto(List<String> list, Scanner sc) {
        System.out.print("Ingresar producto saliente: ");
        String input = sc.nextLine().trim();
        if (input.isEmpty()) {
            System.out.println("Ningun dato especificado para eliminar");
            return;
        }
        int idx = Seguimiento(list, input);
        if (idx >= 0) {
            String removed = list.remove(idx);
            System.out.println("Eliminado: " + removed);
        } else {
            System.out.println("Valor no encontrado, no se elimino");
        }
    }

    // Print a simple report of the list contents.
    static void gen_inf(List<String> list) {
        System.out.println("Informe de lista (total: " + list.size() + "):");
        for (int i = 0; i < list.size(); i++) {
            System.out.println(i + ": " + list.get(i));
        }
    }

    static int Seguimiento(List<String> list, String value) {
        if (value == null) return -1;
        for (int i = 0; i < list.size(); i++) {
            String item = list.get(i);
            if (item != null && item.equalsIgnoreCase(value)) {
                return i;
            }
        }
        return -1;
    }
}

