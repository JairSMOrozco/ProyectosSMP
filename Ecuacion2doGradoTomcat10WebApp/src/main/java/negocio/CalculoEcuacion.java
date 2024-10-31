package negocio;

public class CalculoEcuacion {
    //Atributos
    private double coeficienteA;
    private double coeficienteB;
    private double coeficienteC;

    public CalculoEcuacion(String coeficienteA, String coeficienteB, String coeficienteC) {
        this.coeficienteA = Double.parseDouble(coeficienteA);
        this.coeficienteB = Double.parseDouble(coeficienteB);
        this.coeficienteC = Double.parseDouble(coeficienteC);
    }

    //Calcular raices reales
    public double calculoX1RaizReal(){
        double x1;
        double menosB = (-coeficienteB);
        double restaRaiz = Math.pow(coeficienteB,2) - (4 * coeficienteA * coeficienteC);
        double calculoRaiz = Math.sqrt(restaRaiz);
        double divisor = (2 * coeficienteA);

        x1 = (menosB + calculoRaiz) / divisor;
        return x1;
    }

    public double calculoX2RaizReal(){
        double x1;
        double menosB = (-coeficienteB);
        double restaRaiz = Math.pow(coeficienteB,2) - (4 * coeficienteA * coeficienteC);
        double calculoRaiz = Math.sqrt(restaRaiz);
        double divisor = (2 * coeficienteA);

        x1 = (menosB - calculoRaiz) / divisor;
        return x1;
    }

}
