/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.universidades;

public class UniversidadVirtual extends Universidad {

    public UniversidadVirtual(String nombre) {
        super(nombre);
    }

    @Override
    public void tipoUniversidad() {
        System.out.println("Es una universidad virtual que ofrece programas en linea.");
    }
}