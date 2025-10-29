package Pagos_pack;


public class Main {
    public static void main(String[] args) {
        Abstraction User = new User(89823,"Dayro");
        Abstraction Pagos = new Pagos("Tarjeta de credito");

        System.out.println("Resultados del polimorfismo de pagos ==\n");

        User.mostrar_info_user();
        Pagos.mostrar_infor_pagos();
    }
}