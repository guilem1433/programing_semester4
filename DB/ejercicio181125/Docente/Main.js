function cargar(seccion) {
    const cont = document.getElementById("contenido");
    let html = "";

    switch (seccion) {

        case "aula":
            html = `
                <h2>Mi Aula Virtual</h2>
                <div class="tarjeta">
                    <h3>Clases activas</h3>
                    <ul>
                        <li>💻 Programación I – Grupo A</li>
                        <li>📘 Base de Datos – Grupo B</li>
                        <li>🧮 Algoritmia – Grupo C</li>
                    </ul>
                </div>
            `;
        break;

        case "calificaciones":
            html = `
                <h2>Gestión de Calificaciones</h2>
                <div class="tarjeta">
                    <button>Ingresar notas</button>
                    <button>Modificar calificaciones</button>
                    <button>Exportar reportes</button>
                </div>
            `;
        break;

        case "estudiantes":
            html = `
                <h2>Lista de Estudiantes</h2>
                <div class="tarjeta">
                    <ul>
                        <li>👤 Juan Pérez</li>
                        <li>👤 Mariana López</li>
                        <li>👤 Carlos Gómez</li>
                        <li>👤 Laura Ramírez</li>
                    </ul>
                </div>
            `;
        break;

        case "contenido":
            html = `
                <h2>Contenido Académico</h2>
                <div class="tarjeta">
                    <button>Subir material</button>
                    <button>Crear actividad</button>
                    <button>Gestionar módulos</button>
                </div>
            `;
        break;

        case "horarios":
            html = `
                <h2>Programación & Horarios</h2>
                <div class="tarjeta">
                    <ul>
                        <li>📅 Lunes – Programación I – 8:00 AM</li>
                        <li>📅 Martes – Algoritmia – 10:00 AM</li>
                        <li>📅 Viernes – Base de Datos – 2:00 PM</li>
                    </ul>
                </div>
            `;
        break;

        case "seguimiento":
            html = `
                <h2>Seguimiento Académico</h2>
                <div class="tarjeta">
                    <ul>
                        <li>🎓 Estudiante destacado del mes: <strong>Mariana López</strong></li>
                        <li>📉 Alertas académicas: <strong>3 estudiantes</strong></li>
                    </ul>
                </div>
            `;
        break;

        case "mensajes":
            html = `
                <h2>Mensajes</h2>
                <div class="tarjeta">
                    <button>Revisar Bandeja de Entrada</button>
                    <button>Enviar comunicado</button>
                </div>
            `;
        break;

        case "reportes":
            html = `
                <h2>Reportes Académicos</h2>
                <div class="tarjeta">
                    <button>Descargar reporte mensual</button>
                    <button>Estado del curso</button>
                </div>
            `;
        break;

        case "ayuda":
            html = `
                <h2>Centro de Ayuda</h2>
                <div class="tarjeta">
                    <button>Abrir manual docente</button>
                </div>
            `;
        break;
    }

    cont.innerHTML = html;

    document.querySelectorAll(".menu a").forEach(a => a.classList.remove("activo"));
    document.querySelector(`.menu a[onclick="cargar('${seccion}')"]`).classList.add("activo");
}

cargar("aula");
