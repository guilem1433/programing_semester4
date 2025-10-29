package Pagos_pack;

public class Pagos implements Abstraction{
    private String tipo;

    public Pagos(String tipo){
        this.tipo = tipo;
    }

    @Override
    public void mostrar_info_user() {

    }

    public void mostrar_infor_pagos(){
        System.out.println("tipo de pago: "+ tipo);
    }
}
