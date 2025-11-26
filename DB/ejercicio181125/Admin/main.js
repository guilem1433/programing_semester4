function cargar(seccion) {
    const cont = document.getElementById("contenido");
    let html = "";

    switch (seccion) {

        case "dashboard":
            html = `
                <h2>Dashboard General</h2>
                <div class='tarjeta'>
                    <p>Usuarios activos: 1280</p>
                    <p>Reportes del sistema: 34</p>
                    <p>Última copia de seguridad: Hoy 3:42 PM</p>
                </div>
            `;
        break;

        case "usuarios":
            html = `
                <h2>Gestión de Usuarios</h2>
                <div class='tarjeta'>
                    <button>Crear usuario</button>
                    <button>Editar usuario</button>
                    <button>Eliminar usuario</button>
                </div>
            `;
        break;

        case "roles":
            html = `
                <h2>Perfiles y Roles</h2>
                <div class='tarjeta'>
                    <p>• Administrador</p>
                    <p>• Docente</p>
                    <p>• Estudiante</p>
                    <p>• Sistemas</p>
                    <p>• Contabilidad</p>
                    <p>• Biblioteca</p>
                </div>
            `;
        break;

        case "bd":
            html = `
                <h2>Gestión de Bases de Datos</h2>
                <div class='tarjeta'>
                    <button>Respaldar BD</button>
                    <button>Restaurar BD</button>
                    <button>Optimizar Tablas</button>
                </div>
            `;
        break;

        case "reportes":
            html = `
                <h2>Reportes y Auditoría</h2>
                <div class='tarjeta'>
                    <p>Generar reportes del sistema</p>
                    <button>Generar reporte PDF</button>
                </div>
            `;
        break;

        case "academico":
            html = `
                <h2>Gestión Académica</h2>
                <div class='tarjeta'>
                    <button>Registrar Materias</button>
                    <button>Asignar Docentes</button>
                    <button>Administrar Horarios</button>
                </div>
            `;
        break;

        case "administrativo":
            html = `
                <h2>Gestión Administrativa</h2>
                <div class='tarjeta'>
                    <button>Registrar Contratos</button>
                    <button>Pagos</button>
                    <button>Gestión de Nómina</button>
                </div>
            `;
        break;

        case "biblioteca":
            html = `
                <h2>Biblioteca ESEIT</h2>
                <div class='tarjeta'>
                    <button>Registrar libro</button>
                    <button>Ver préstamos</button>
                </div>
            `;
        break;

        case "config":
            html = `
                <h2>Configuración del Sistema</h2>
                <div class='tarjeta'>
                    <button>Idioma</button>
                    <button>Temas</button>
                    <button>Parámetros Generales</button>
                </div>
            `;
        break;

        case "seguridad":
            html = `
                <h2>Seguridad del Sistema</h2>
                <div class='tarjeta'>
                    <button>Revisar actividad sospechosa</button>
                    <button>Bloquear usuarios</button>
                </div>
            `;
        break;

        case "soporte":
            html = `
                <h2>Centro de Soporte</h2>
                <div class='tarjeta'>
                    <button>Abrir ticket</button>
                    <button>Historial de soporte</button>
                </div>
            `;
        break;
    }

    cont.innerHTML = html;

    document.querySelectorAll(".menu a").forEach(a => a.classList.remove("activo"));
    document.querySelector(`.menu a[onclick="cargar('${seccion}')"]`).classList.add("activo");
}

cargar("dashboard");
