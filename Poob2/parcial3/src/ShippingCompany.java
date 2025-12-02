import java.util. Scanner;

// Responsabilidad: Interactuar con el usuario y coordinar el flujo de la aplicación
public class ShippingCompany {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Bienvenido a Shipping Company");

        try {
            System.out.print("Ingrese el valor del producto en COP: ");
            double productValue = scanner.nextDouble();

            System.out. print("Ingrese el peso del paquete en kg: ");
            double weightKg = scanner. nextDouble();
            scanner.nextLine();

            System.out. println("\nTipos de envio disponibles:");
            System.out.println("STANDARD - 5000 fijos + 2000 por kg");
            System.out.println("EXPRESS - 10000 fijos + 5000 por kg");
            System.out.println("PREMIUM - 15000 fijos + 7000 por kg");
            System.out.print("Seleccione el tipo de envio: ");
            String shippingType = scanner.nextLine();

            // Usar el Factory para crear la estrategia
            ShippingStrategy strategy = ShippingStrategyFactory.createStrategy(shippingType);


            ShippingService shippingService = new ShippingService(
                    productValue,
                    weightKg,
                    strategy
            );

            shippingService.displayOrderSummary();

        } catch (IllegalArgumentException e) {
            System.out.println("Error: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("Error: Por favor ingrese datos validos.");
        } finally {
            scanner.close();
        }
    }
}