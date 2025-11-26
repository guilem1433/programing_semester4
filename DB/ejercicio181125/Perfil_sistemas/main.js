function cargar(seccion) {
    const cont = document.getElementById("contenido");
    let html = "";

    switch(seccion) {

        case "panel":
            html = `
                <h2>Panel de Sistemas</h2>
                <div class='tarjeta'>
                    <h3>Estado del Sistema</h3>
                    <ul>
                        <li>🟢 Servidores en funcionamiento</li>
                        <li>🟢 Servicios activos</li>
                        <li>🟠 1 módulo requiere actualización</li>
                    </ul>
                </div>
                <div class='tarjeta'>
                    <h3>Accesos rápidos</h3>
                    <button>Ver Logs</button>
                    <button>Reiniciar Servicios</button>
                    <button>Monitoreo en Vivo</button>
                </div>
            `;
        break;

        case "config":
            html = `
                <h2>Configuración del Sistema</h2>
                <div class='tarjeta'>
                    <h3>Opciones principales</h3>
                    <ul>
                        <li>🔧 Ajustes del servidor</li>
                        <li>🌐 Parámetros de red</li>
                        <li>🛠️ Configuración de APIs</li>
                    </ul>
                </div>
            `;
        break;

        case "software":
            html = `
                <h2>Gestión de Software</h2>
                <div class='tarjeta'>
                    <h3>Aplicaciones instaladas</h3>
                    <ul>
                        <li>📦 Sistema de Registro</li>
                        <li>📦 Plataforma Académica</li>
                        <li>📦 Sistema Administrativo</li>
                    </ul>
                </div>
                <div class='tarjeta'>
                    <button>Instalar nuevo software</button>
                    <button>Actualizar módulos</button>
                </div>
            `;
        break;

        case "seguridad":
            html = `
                <h2>Seguridad Informática</h2>
                <div class='tarjeta'>
                    <h3>Estado de seguridad</h3>
                    <ul>
                        <li>🔐 Firewall activo</li>
                        <li>🛡️ Antivirus actualizado</li>
                        <li>🟢 No se detectaron amenazas</li>
                    </ul>
                </div>
            `;
        break;

        case "mantenimiento":
            html = `
                <h2>Mantenimiento Técnico</h2>
                <div class='tarjeta'>
                    <h3>Equipos en mantenimiento</h3>
                    <ul>
                        <li>🖥️ Laboratorio 1 – 4 equipos</li>
                        <li>💻 Sala de Sistemas – 2 equipos</li>
                    </ul>
                </div>
                <button>Registrar mantenimiento</button>
            `;
        break;

        case "redes":
            html = `
                <h2>Redes y Comunicaciones</h2>
                <div class='tarjeta'>
                    <h3>Estado actual</h3>
                    <ul>
                        <li>🌐 Conectividad estable</li>
                        <li>📡 12 routers activos</li>
                        <li>🔌 3 switches en uso</li>
                    </ul>
                </div>
            `;
        break;

        case "bd":
            html = `
                <h2>Bases de Datos</h2>
                <div class='tarjeta'>
                    <h3>Información</h3>
                    <ul>
                        <li>🗄️ MySQL — Online</li>
                        <li>🗄️ PostgreSQL — Online</li>
                        <li>🗄️ Backups configurados</li>
                    </ul>
                </div>
                <button>Generar Backup</button>
            `;
        break;

        case "soporte":
            html = `
                <h2>Soporte TI</h2>
                <div class='tarjeta'>
                    <h3>Centro de soporte</h3>
                    <p>Atención técnica para estudiantes y funcionarios.</p>
                    <button>Crear ticket</button>
                    <button>Historial de casos</button>
                </div>
            `;
        break;

        case "ayuda":
            html = `
                <h2>Ayuda del Sistema</h2>
                <div class='tarjeta'>
                    <h3>Manuales y guías</h3>
                    <button>Abrir documentación</button>
                </div>
            `;
        break;
    }

    cont.innerHTML = html;

    document.querySelectorAll(".menu a").forEach(a => a.classList.remove("activo"));
    document.querySelector(`.menu a[onclick="cargar('${seccion}')"]`).classList.add("activo");
}

cargar("panel");
