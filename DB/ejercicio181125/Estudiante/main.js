function cargar(seccion) {
    const cont = document.getElementById("contenido");
    let html = "";

    switch (seccion) {

        case "aula":
            html = `
                <h2>Mi Aula Virtual</h2>
                <div class="tarjeta">
                    <ul>
                        <li>💻 Programación I</li>
                        <li>📘 Matemáticas Discretas</li>
                        <li>🧮 Algoritmia</li>
                        <li>📊 Estadística Aplicada</li>
                    </ul>
                </div>
            `;
        break;

        case "materias":
            html = `
                <h2>Mis Asignaturas</h2>
                <div class="tarjeta">
                    <p>Semestre actual: <strong>3° Semestre</strong></p>
                    <ul>
                        <li>📚 Programación I</li>
                        <li>📚 Base de Datos</li>
                        <li>📚 Redes I</li>
                        <li>📚 Emprendimiento</li>
                    </ul>
                </div>
            `;
        break;

        case "notas":
            html = `
                <h2>Notas y Evaluaciones</h2>
                <div class="tarjeta">
                    <p><strong>Programación I:</strong> 4.3</p>
                    <p><strong>Base de Datos:</strong> 4.8</p>
                    <p><strong>Redes I:</strong> 4.0</p>
                </div>
            `;
        break;

        case "horario":
            html = `
                <h2>Horario Académico</h2>
                <div class="tarjeta">
                    <ul>
                        <li>📅 Lunes – Programación I – 8:00 AM</li>
                        <li>📅 Martes – Redes I – 10:00 AM</li>
                        <li>📅 Miércoles – Base de Datos – 2:00 PM</li>
                        <li>📅 Viernes – Emprendimiento – 11:00 AM</li>
                    </ul>
                </div>
            `;
        break;

        case "progreso":
            html = `
                <h2>Progreso en el Programa</h2>
                <div class="tarjeta">
                    <p>Carrera: <strong>Ingeniería de Sistemas</strong></p>
                    <p>Créditos completos: 45</p>
                    <p>Progreso: <strong>38%</strong></p>
                </div>
            `;
        break;

        case "material":
            html = `
                <h2>Material de Estudio</h2>
                <div class="tarjeta">
                    <button>Descargar PDF de Programación</button>
                    <button>Ver guías de Base de Datos</button>
                </div>
            `;
        break;

        case "mensajes":
            html = `
                <h2>Mensajes</h2>
                <div class="tarjeta">
                    <button>Ver bandeja de entrada</button>
                    <button>Contactar docente</button>
                </div>
            `;
        break;

        case "pagos":
            html = `
                <h2>Pagos y Finanzas</h2>
                <div class="tarjeta">
                    <p>Estado de matrícula: <strong>ACTIVA</strong></p>
                    <button>Generar recibo de pago</button>
                </div>
            `;
        break;

        case "ayuda":
            html = `
                <h2>Ayuda Estudiantil</h2>
                <div class="tarjeta">
                    <button>Chat de soporte</button>
                    <button>Preguntas frecuentes</button>
                </div>
            `;
        break;

    }

    cont.innerHTML = html;

    document.querySelectorAll(".menu a").forEach(a => a.classList.remove("activo"));
    document.querySelector(`.menu a[onclick="cargar('${seccion}')"]`).classList.add("activo");
}

cargar("aula");
