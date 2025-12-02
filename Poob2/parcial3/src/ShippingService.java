// Responsabilidad: Gestionar el producto y calcular el costo total
// Recibe la estrategia por constructor (Inversión de Control)
public class ShippingService {
    private double productValue;
    private double weightKg;
    private final ShippingStrategy shippingStrategy;

    // Inyección de dependencias por constructor
    public ShippingService(double productValue, double weightKg,
                           ShippingStrategy shippingStrategy) {
        if (shippingStrategy == null) {
            throw new IllegalArgumentException("La estrategia de envio no puede ser nula");
        }
        if (productValue <= 0) {
            throw new IllegalArgumentException("El valor del producto debe ser mayor a 0");
        }
        if (weightKg <= 0) {
            throw new IllegalArgumentException("El peso debe ser mayor a 0");
        }

        this.productValue = productValue;
        this.weightKg = weightKg;
        this.shippingStrategy = shippingStrategy;
    }

    public double calculateShippingCost() {
        return shippingStrategy.calculateShippingCost(weightKg);
    }

    public double calculateTotalCost() {
        return productValue + calculateShippingCost();
    }

    public void displayOrderSummary() {
        System. out.println("\nResumen del pedido:");
        System.out.println("Valor del producto: $" + String.format("%.0f", productValue) + " COP");
        System.out.println("Peso del paquete: " + weightKg + " kg");
        System.out.println("Tipo de envio: " + shippingStrategy.getShippingType());
        System.out.println("Costo de envio: $" + String.format("%.0f", calculateShippingCost()) + " COP");
        System.out.println("Total a pagar: $" + String. format("%.0f", calculateTotalCost()) + " COP");
    }

    public double getProductValue() {
        return productValue;
    }

    public double getWeightKg() {
        return weightKg;
    }

    public ShippingStrategy getShippingStrategy() {
        return shippingStrategy;
    }
}