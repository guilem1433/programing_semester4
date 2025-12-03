// Java
package Hospital;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Main_hospital {

    // Helper to enter data for a new profession (no new class created)
    private static Map<String, String> crearNuevaProfesion(Scanner sc) {
        Map<String, String> prof = new HashMap<>();
        System.out.println("=== Crear Nueva Profesion ===");
        System.out.print("Enter id: ");
        prof.put("id", sc.nextLine().trim());
        System.out.print("Enter name: ");
        prof.put("name", sc.nextLine().trim());
        System.out.print("Enter job: ");
        prof.put("job", sc.nextLine().trim());
        System.out.print("Enter email: ");
        prof.put("email", sc.nextLine().trim());
        return prof;
    }

    private static void mostrarProfesion(Map<String, String> prof) {
        if (prof == null || prof.isEmpty()) {
            System.out.println("No hay profesion personalizada creada.");
            return;
        }
        System.out.println("=== Profesion Personalizada ===");
        System.out.println("ID: " + prof.getOrDefault("id", ""));
        System.out.println("Name: " + prof.getOrDefault("name", ""));
        System.out.println("Job: " + prof.getOrDefault("job", ""));
        System.out.println("Email: " + prof.getOrDefault("email", ""));
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Medico medico = null;
        Administrativo administrativo = null;
        Enfermero enfermero = null;
        Paciente paciente = null;

        Map<String, String> profesionPersonalizada = null;

        boolean running = true;
        while (running) {
            System.out.println("=== Hospital Menu ===");
            System.out.println("1) Crear Medico");
            System.out.println("2) Mostrar info Medico");
            System.out.println("3) Llamar metodo Medico (diagnostico / procedimiento)");
            System.out.println("4) Crear Administrativo");
            System.out.println("5) Mostrar info Administrativo");
            System.out.println("6) Llamar metodo Administrativo (gestion_cita / historia_clinica / documentacion)");
            System.out.println("7) Crear Enfermero");
            System.out.println("8) Mostrar info Enfermero");
            System.out.println("9) Llamar metodo Enfermero (registrar_signos / admin_medicamentos)");
            System.out.println("10) Crear Paciente");
            System.out.println("11) Mostrar info Paciente");
            System.out.println("12) Crear nueva profesion (id, name, job, email)");
            System.out.println("13) Mostrar nueva profesion");
            System.out.println("0) Salir");
            System.out.print("Opcion: ");
            String choice = sc.nextLine().trim();

            switch (choice) {
                case "1": {
                    System.out.println("=== Crear Medico ===");
                    medico = Medico.createFromInput();
                    System.out.println("Medico creado.");
                    break;
                }
                case "2": {
                    if (medico == null) {
                        System.out.println("Medico no creado. Use opcion 1.");
                    } else {
                        System.out.println("=== Info Medico ===");
                        System.out.println(medico.toString());
                    }
                    break;
                }
                case "3": {
                    if (medico == null) {
                        System.out.println("Medico no creado. Use opcion 1.");
                    } else {
                        System.out.println("1) diagnostico");
                        System.out.println("2) procedimiento");
                        System.out.print("Elegir metodo: ");
                        String m = sc.nextLine().trim();
                        if ("1".equals(m)) {
                            medico.diagnostico();
                        } else if ("2".equals(m)) {
                            medico.procedimiento();
                        } else {
                            System.out.println("Metodo no valido.");
                        }
                    }
                    break;
                }
                case "4": {
                    System.out.println("=== Crear Administrativo ===");
                    administrativo = Administrativo.createFromInput();
                    System.out.println("Administrativo creado.");
                    break;
                }
                case "5": {
                    if (administrativo == null) {
                        System.out.println("Administrativo no creado. Use opcion 4.");
                    } else {
                        System.out.println("=== Info Administrativo ===");
                        System.out.println(administrativo.toString());
                    }
                    break;
                }
                case "6": {
                    if (administrativo == null) {
                        System.out.println("Administrativo no creado. Use opcion 4.");
                    } else {
                        System.out.println("1) gestion_cita");
                        System.out.println("2) historia_clinica");
                        System.out.println("3) documentacion");
                        System.out.print("Elegir metodo: ");
                        String m = sc.nextLine().trim();
                        switch (m) {
                            case "1": administrativo.gestion_cita(); break;
                            case "2": administrativo.historia_clinica(); break;
                            case "3": administrativo.documentacion(); break;
                            default: System.out.println("Metodo no valido.");
                        }
                    }
                    break;
                }
                case "7": {
                    System.out.println("=== Crear Enfermero ===");
                    enfermero = Enfermero.createFromInput();
                    System.out.println("Enfermero creado.");
                    break;
                }
                case "8": {
                    if (enfermero == null) {
                        System.out.println("Enfermero no creado. Use opcion 7.");
                    } else {
                        System.out.println("=== Info Enfermero ===");
                        System.out.println(enfermero.toString());
                    }
                    break;
                }
                case "9": {
                    if (enfermero == null) {
                        System.out.println("Enfermero no creado. Use opcion 7.");
                    } else {
                        System.out.println("1) registrar_signos");
                        System.out.println("2) admin_medicamentos");
                        System.out.print("Elegir metodo: ");
                        String m = sc.nextLine().trim();
                        if ("1".equals(m)) {
                            enfermero.registrar_signos();
                        } else if ("2".equals(m)) {
                            enfermero.admin_medicamentos();
                        } else {
                            System.out.println("Metodo no valido.");
                        }
                    }
                    break;
                }
                case "10": {
                    System.out.println("=== Crear Paciente ===");
                    paciente = Paciente.createFromInput();
                    System.out.println("Paciente creado.");
                    break;
                }
                case "11": {
                    if (paciente == null) {
                        System.out.println("Paciente no creado. Use opcion 10.");
                    } else {
                        System.out.println("=== Info Paciente ===");
                        System.out.println(paciente.toString());
                    }
                    break;
                }
                case "12": {
                    profesionPersonalizada = crearNuevaProfesion(sc);
                    System.out.println("Profesion personalizada creada.");
                    break;
                }
                case "13": {
                    mostrarProfesion(profesionPersonalizada);
                    break;
                }
                case "0": {
                    running = false;
                    break;
                }
                default:
                    System.out.println("Opcion desconocida.");
            }
            System.out.println();
        }

        sc.close();
    }
}