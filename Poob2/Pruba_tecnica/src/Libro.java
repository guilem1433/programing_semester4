public class Libro {
    private int id;
    private String titulo;
    private String autor;
    private int ano_pub;
    private int cantidad_paginas;
    private String portada;
    private String editorial;
    private String genero;

    public Libro( int id,
        String titulo,
        String autor,
        int ano_pub,
        int cantidad_paginas,
        String portada,
        String editorial,
        String genero )

    {
        this.id = id;
        this.titulo = titulo;
        this.autor= autor;
        this.ano_pub = ano_pub;
        this.cantidad_paginas = cantidad_paginas;
        this.portada = portada;
        this.editorial = editorial;
        this.genero = genero;
    }
}


