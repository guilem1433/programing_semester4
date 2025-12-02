// Responsabilidad: Crear instancias de estrategias según el tipo solicitado
public class ShippingStrategyFactory {

    public static ShippingStrategy createStrategy(String shippingType) {
        if (shippingType == null) {
            throw new IllegalArgumentException("El tipo de envio no puede ser nulo");
        }

        String type = shippingType.toUpperCase(). trim();

        if (type.equals("STANDARD") || type.equals("ESTANDAR") || type.equals("1")) {
            return new StandardShipping();
        }

        if (type.equals("EXPRESS") || type.equals("2")) {
            return new ExpressShipping();
        }

        if (type.equals("PREMIUM") || type.equals("3")) {
            return new PremiumShipping();
        }

        throw new IllegalArgumentException("Tipo de envio no valido: " + shippingType);
    }
}