/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.universidades;

public class UniversidadPrivada extends Universidad {

    public UniversidadPrivada(String nombre) {
        super(nombre);
    }

    @Override
    public void tipoUniversidad() {
        System.out.println("Es una universidad privada, financiada por matriculas y donaciones.");
    }
}