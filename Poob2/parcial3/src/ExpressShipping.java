// Envío Express
public class ExpressShipping implements ShippingStrategy {
    private static final double BASE_COST = 10000; // COP
    private static final double COST_PER_KG = 5000; // COP

    @Override
    public double calculateShippingCost(double weightKg) {
        return BASE_COST + (COST_PER_KG * weightKg);
    }

    @Override
    public String getShippingType() {
        return "Express";
    }
}