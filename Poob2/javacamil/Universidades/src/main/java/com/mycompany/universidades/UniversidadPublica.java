/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.universidades;

public class UniversidadPublica extends Universidad {

    public UniversidadPublica(String nombre) {
        super(nombre);
    }

    @Override
    public void tipoUniversidad() {
        System.out.println("Es una universidad publica, financiada por el Estado.");
    }
}