// Java
package Hospital;

import java.util.Scanner;

public class Medico {
    private int id;
    private String rol;
    private String name;
    private String email;

    public Medico(int id, String rol, String name, String email) {
        this.id = id;
        this.rol = rol;
        this.name = name;
        this.email = email;
    }

    public static Medico createFromInput() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter id (int): ");
        int id = Integer.parseInt(sc.nextLine().trim());
        System.out.print("Enter rol: ");
        String rol = sc.nextLine().trim();
        System.out.print("Enter name: ");
        String name = sc.nextLine().trim();
        System.out.print("Enter email: ");
        String email = sc.nextLine().trim();
        return new Medico(id, rol, name, email);
    }

    public void diagnostico() {
        System.out.println("Realizando diagnostico...");
    }

    public void procedimiento() {
        System.out.println("Realizando procedimiento...");
    }

    @Override
    public String toString() {
        return "Medico{" +
                "id=" + id +
                ", rol='" + rol + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
