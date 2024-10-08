package com.jairorozco.salariowebapp;

public class Sueldo {
    //Atributos
    private String nombre;
    private Double salarioPorHora;
    private Double horasTrabajadasDia;
    private Integer diasTrabajadosSemana;
    private double salarioSemanal;

    //Constructores

    public Sueldo(String nombre, String salarioPorHora, String horasTrabajadasDia, String diasTrabajadosSemana) {
        this.nombre = nombre;
        this.salarioPorHora = Double.valueOf(salarioPorHora);
        this.horasTrabajadasDia = Double.valueOf(horasTrabajadasDia);
        this.diasTrabajadosSemana = Integer.valueOf(diasTrabajadosSemana);
    }

    //Getters
    public double getsalarioSemanal() {
        return salarioSemanal;
    }

    //Métodos
    public void salaryCalculator(){

        //Si los días ingresados son mayores a 7, se asigna diasTrabajadosSemana = 7
        if(diasTrabajadosSemana > 7){
            diasTrabajadosSemana = 7;
        }

        //Según las horas trabajadas se hace el cálculo
        if (horasTrabajadasDia <= 8){
            salarioSemanal = (salarioPorHora * horasTrabajadasDia) * diasTrabajadosSemana;
        } else if (horasTrabajadasDia > 8 && horasTrabajadasDia <= 12) {
            double horasDiferencia = horasTrabajadasDia - 8;
            double pagoHorasExtra = horasDiferencia * (salarioPorHora * 2);
            double salarioTotalDia = (salarioPorHora * 8) + pagoHorasExtra;
            salarioSemanal = salarioTotalDia * diasTrabajadosSemana;
        }else if (horasTrabajadasDia > 12){
            double horasDiferencia = horasTrabajadasDia - 8;
            double pagoHorasExtra = horasDiferencia * (salarioPorHora * 3);
            double salarioTotalDia = (salarioPorHora * 8) + pagoHorasExtra;
            salarioSemanal = salarioTotalDia * diasTrabajadosSemana;
        }
    }

}