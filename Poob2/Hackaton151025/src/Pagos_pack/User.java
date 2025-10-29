package Pagos_pack;

public class User implements Abstraction{
    private int cedula;
    private String nom;

    public User(int cedula, String nom){
        this.cedula = cedula;
        this.nom = nom;
    }
    public void mostrar_info_user(){
        System.out.println("nom: "+ nom + "cc"+ cedula);
    }

    @Override
    public void mostrar_infor_pagos() {

    }
}
