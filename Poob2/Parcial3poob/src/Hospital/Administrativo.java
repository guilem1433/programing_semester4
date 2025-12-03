// Java
package Hospital;

import java.util.Scanner;

public class Administrativo implements Persona {
    private int id;
    private String rol;
    private String nom;
    private String email;

    public Administrativo(int id, String rol, String nom, String email) {
        this.id = id;
        this.rol = rol;
        this.nom = nom;
        this.email = email;
    }

    // Factory: create an Administrativo from terminal input
    public static Administrativo createFromInput() {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter id (int): ");
        int id = Integer.parseInt(sc.nextLine().trim());

        System.out.print("Enter rol: ");
        String rol = sc.nextLine().trim();

        System.out.print("Enter name: ");
        String nom = sc.nextLine().trim();

        System.out.print("Enter email: ");
        String email = sc.nextLine().trim();

        return new Administrativo(id, rol, nom, email);
    }

    public void gestion_cita() {
        System.out.println("cita gestión, correcto.");
    }

    public void historia_clinica() {
        System.out.println("historia clinica, correcto.");
    }

    public void documentacion() {
        System.out.println("documentación, correcto.");
    }

    public int getId() { return id; }
    public String getRol() { return rol; }
    public String getNom() { return nom; }
    public String getEmail() { return email; }

    @Override
    public String toString() {
        return "Administrativo{" +
                "id=" + id +
                ", rol='" + rol + '\'' +
                ", nom='" + nom + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
