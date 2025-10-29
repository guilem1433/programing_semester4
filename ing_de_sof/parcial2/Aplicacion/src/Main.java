// java
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        List<String> list = new ArrayList<>();
        try (Scanner sc = new Scanner(System.in)) {
            while (list.size() < 7) {
                anadirContactos(list, sc);
                System.out.println("Tamaño de lista: " + list.size());
            }

            System.out.println("Lista original" + list);

            Organizar(list);
            System.out.println("Organizar: " + list);

            System.out.print("Enter value to search: ");
            String value = sc.nextLine().trim();
            int idx = buscarInformacion(list, value);
            if (idx >= 0) {
                System.out.println("Dato encontrado: " + idx);
            } else {
                System.out.println("Valor no encontrado");
            }
        }
    }

    static void anadirContactos(List<String> list, Scanner sc) {
        System.out.print("Ingresar contacto: ");
        String input = sc.nextLine().trim();
        if (!input.isEmpty()) {
            list.add(input);
        } else {
            System.out.println("Ningun dato añadido");
        }
    }

    static void Organizar(List<String> list) {
        if (list.isEmpty()) return;

        boolean allNumeric = true;
        for (String s : list) {
            if (s == null || s.isEmpty()) {
                allNumeric = false;
                break;
            }
            try {
                Double.parseDouble(s);
            } catch (NumberFormatException e) {
                allNumeric = false;
                break;
            }
        }

        if (allNumeric) {
            list.sort((a, b) -> {
                double da = Double.parseDouble(a);
                double db = Double.parseDouble(b);
                return Double.compare(db, da); // numeric descending
            });
        } else {
            list.sort((a, b) -> b.compareToIgnoreCase(a)); // lexicographic descending, case-insensitive
        }
    }

    static int buscarInformacion(List<String> list, String value) {
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
