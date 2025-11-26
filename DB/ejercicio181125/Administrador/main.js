function cargar(seccion) {
    const cont = document.getElementById("contenido");

    let html = "";

    switch(seccion) {

        case "panel":
            html = `
                <h2>Panel Administrativo</h2>
                <div class='tarjeta'>
                    <h3>Bienvenido</h3>
                    <p>Panel central de operaciones administrativas de ESEIT.</p>
                </div>
                <div class='tarjeta'>
                    <h3>Accesos rápidos</h3>
                    <button>Gestionar Personal</button>
                    <button>Revisar Facturación</button>
                    <button>Ver Inventario</button>
                </div>
                <div class='tarjeta'>
                    <h3>Últimos eventos</h3>
                    <ul>
                        <li>[OK] Sistema cargado correctamente</li>
                        <li>[INFO] Nuevos documentos pendientes</li>
                        <li>[WARN] Reporte mensual requiere revisión</li>
                    </ul>
                </div>
            `;
        break;

        case "documentos":
            html = `
                <h2>Gestión Documental</h2>
                <div class='tarjeta'>
                    <h3>Documentos Institucionales</h3>
                    <ul>
                        <li>📄 Contratos activos</li>
                        <li>📄 Reglamentos internos</li>
                        <li>📄 Actas administrativas</li>
                        <li>📄 Documentación contable</li>
                    </ul>
                </div>
                <div class='tarjeta'>
                    <h3>Subir documentos</h3>
                    <button>Subir archivo</button>
                </div>
            `;
        break;

        case "facturacion":
            html = `
                <h2>Facturación</h2>
                <div class='tarjeta'>
                    <h3>Resumen de pagos</h3>
                    <p>Facturas emitidas este mes: <strong>27</strong></p>
                    <p>Pagos pendientes: <strong>5</strong></p>
                </div>
                <div class='tarjeta'>
                    <h3>Opciones</h3>
                    <button>Generar factura</button>
                    <button>Ver historial</button>
                </div>
            `;
        break;

        case "personal":
            html = `
                <h2>Control de Personal</h2>
                <div class='tarjeta'>
                    <h3>Empleados Registrados</h3>
                    <ul>
                        <li>👤 Administrativos: 12</li>
                        <li>👤 Profesores: 34</li>
                        <li>👤 Servicios Generales: 7</li>
                    </ul>
                </div>
                <div class='tarjeta'>
                    <h3>Acciones</h3>
                    <button>Agregar empleado</button>
                    <button>Actualizar datos</button>
                </div>
            `;
        break;

        case "inventario":
            html = `
                <h2>Inventarios</h2>
                <div class='tarjeta'>
                    <h3>Equipos registrados</h3>
                    <ul>
                        <li>💻 Computadores: 41</li>
                        <li>🖨️ Impresoras: 16</li>
                        <li>🪑 Mobiliario: 89</li>
                    </ul>
                </div>
                <div class='tarjeta'>
                    <h3>Opciones</h3>
                    <button>Registrar activo</button>
                    <button>Revisar inventario</button>
                </div>
            `;
        break;

        case "reportes":
            html = `
                <h2>Reportes Administrativos</h2>
                <div class='tarjeta'>
                    <h3>Reportes Disponibles</h3>
                    <ul>
                        <li>📊 Reporte mensual de gastos</li>
                        <li>📊 Reporte anual financiero</li>
                        <li>📊 Reporte de personal</li>
                        <li>📊 Reporte de infraestructura</li>
                    </ul>
                </div>
                <div class='tarjeta'>
                    <h3>Generar nuevo reporte</h3>
                    <button>Generar PDF</button>
                </div>
            `;
        break;

        case "soporte":
            html = `
                <h2>Soporte Técnico</h2>
                <div class='tarjeta'>
                    <h3>Centro de soporte</h3>
                    <p>Si presenta problemas técnicos, seleccione una opción.</p>
                    <button>Crear ticket</button>
                    <button>Historial de tickets</button>
                </div>
            `;
        break;

        case "ayuda":
            html = `
                <h2>Ayuda</h2>
                <div class='tarjeta'>
                    <h3>Documentación del sistema</h3>
                    <p>Manual básico del panel administrativo.</p>
                    <button>Ver Manual</button>
                </div>
            `;
        break;
    }

    cont.innerHTML = html;

    // activar estilo activo
    document.querySelectorAll(".menu a").forEach(a => a.classList.remove("activo"));
    document.querySelector(`.menu a[onclick="cargar('${seccion}')"]`).classList.add("activo");
}

// cargar el panel principal al inicio
cargar("panel");
