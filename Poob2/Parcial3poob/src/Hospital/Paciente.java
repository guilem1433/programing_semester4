// Java
package Hospital;

import java.util.Scanner;

public class Paciente implements Persona {
    private int id;
    private int id_paciente;
    private String rol;
    private String nom;
    private String email;

    public Paciente(int id, String rol, String nom, String email, int id_paciente) {
        this.id = id;
        this.rol = rol;
        this.nom = nom;
        this.email = email;
        this.id_paciente = id_paciente;
    }

    public static Paciente createFromInput() {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter id (int): ");
        int id = Integer.parseInt(sc.nextLine().trim());

        System.out.print("Enter rol: ");
        String rol = sc.nextLine().trim();

        System.out.print("Enter name: ");
        String nom = sc.nextLine().trim();

        System.out.print("Enter email: ");
        String email = sc.nextLine().trim();

        System.out.print("Enter id_paciente (int): ");
        int id_paciente = Integer.parseInt(sc.nextLine().trim());

        return new Paciente(id, rol, nom, email, id_paciente);
    }

    public int getId() { return id; }
    public int getIdPaciente() { return id_paciente; }
    public String getRol() { return rol; }
    public String getNom() { return nom; }
    public String getEmail() { return email; }

    @Override
    public String toString() {
        return "Paciente{" +
                "id=" + id +
                ", rol='" + rol + '\'' +
                ", nom='" + nom + '\'' +
                ", email='" + email + '\'' +
                ", id_paciente=" + id_paciente +
                '}';
    }
}
