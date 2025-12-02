// Envío Premium
public class PremiumShipping implements ShippingStrategy {
    private static final double BASE_COST = 15000; // COP
    private static final double COST_PER_KG = 7000; // COP

    @Override
    public double calculateShippingCost(double weightKg) {
        return BASE_COST + (COST_PER_KG * weightKg);
    }

    @Override
    public String getShippingType() {
        return "Premium";
    }
}