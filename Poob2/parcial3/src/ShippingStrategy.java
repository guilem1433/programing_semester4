// Interface para las estrategias de envío
public interface ShippingStrategy {
    double calculateShippingCost(double weightKg);
    String getShippingType();
}