public class Sueldo {
    //Atributos
    private String name;
    private double salaryPerHour;
    private double diaryHoursWorked;
    private int daysWorked;
    private double weeklySalary;

    //Constructores

    public Sueldo(String name, double salaryPerHour, double diaryHoursWorked, int daysWorked) {
        this.name = name;
        this.salaryPerHour = salaryPerHour;
        this.diaryHoursWorked = diaryHoursWorked;
        this.daysWorked = daysWorked;
    }

    //Getters
    public double getWeeklySalary() {
        salaryCalculator();
        return this.weeklySalary;
    }

    //Métodos
    private double calculator() {
        return (this.salaryPerHour * this.diaryHoursWorked) * this.daysWorked;
    }

    public void salaryCalculator(){

        //Si los días ingresados son mayores a 7, se asigna daysWorked = 7
        if(this.daysWorked > 7){
            this.daysWorked = 7;
        }

        //Según las horas trabajadas se hace el cálculo
        if (this.diaryHoursWorked <= 8){
            weeklySalary = calculator();
        } else if (this.diaryHoursWorked > 8 && this.diaryHoursWorked <= 12) {
            double horasDiferencia = this.diaryHoursWorked - 8;
            double pagoHorasExtra = horasDiferencia * (this.salaryPerHour * 2);
            weeklySalary = ;
        }else if (this.diaryHoursWorked > 12){
            this.salaryPerHour *= 3;
            weeklySalary = calculator();
        }
    }

}
