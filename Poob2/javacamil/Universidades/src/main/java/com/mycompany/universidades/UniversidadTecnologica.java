/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.universidades;

public class UniversidadTecnologica extends Universidad {

    public UniversidadTecnologica(String nombre) {
        super(nombre);
    }

    @Override
    public void tipoUniversidad() {
        System.out.println("Es una universidad tecnologica, enfocada en carreras tecnicas y de innovacion.");
    }
}