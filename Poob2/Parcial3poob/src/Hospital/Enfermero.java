// Java
package Hospital;

import java.util.Scanner;

public class Enfermero implements Persona {
    private int id;
    private String rol;
    private String nom;
    private String email;

    public Enfermero(int id, String rol, String nom, String email) {
        this.id = id;
        this.rol = rol;
        this.nom = nom;
        this.email = email;
    }

    // Factory: create an Enfermero from terminal input
    public static Enfermero createFromInput() {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter id (int): ");
        int id = Integer.parseInt(sc.nextLine().trim());

        System.out.print("Enter rol: ");
        String rol = sc.nextLine().trim();

        System.out.print("Enter name: ");
        String nom = sc.nextLine().trim();

        System.out.print("Enter email: ");
        String email = sc.nextLine().trim();

        return new Enfermero(id, rol, nom, email);
    }

    public void registrar_signos() {
        System.out.println("toma de signos, correcto.");
    }

    public void admin_medicamentos() {
        System.out.println("admin de medicamentos, correcto.");
    }

    public int getId() { return id; }
    public String getRol() { return rol; }
    public String getNom() { return nom; }
    public String getEmail() { return email; }

    @Override
    public String toString() {
        return "Enfermero{" +
                "id=" + id +
                ", rol='" + rol + '\'' +
                ", nom='" + nom + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
