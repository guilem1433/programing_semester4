function cargar(seccion) {
    const cont = document.getElementById("contenido");
    let html = "";

    switch(seccion) {

        case "panel":
            html = `
                <h2>Panel Contable</h2>
                <div class="tarjeta">
                    <h3>Resumen General</h3>
                    <ul>
                        <li>💵 Facturación del mes: <strong>$18,500,000</strong></li>
                        <li>📄 Pagos pendientes: <strong>12</strong></li>
                        <li>📝 Nómina actualizada: <strong>Sí</strong></li>
                    </ul>
                </div>
            `;
        break;

        case "facturacion":
            html = `
                <h2>Facturación y Pagos</h2>
                <div class="tarjeta">
                    <h3>Opciones</h3>
                    <button>Registrar Factura</button>
                    <button>Ver Pagos Pendientes</button>
                    <button>Descargar Historial</button>
                </div>
            `;
        break;

        case "nomina":
            html = `
                <h2>Gestión de Nómina</h2>
                <div class="tarjeta">
                    <h3>Procesos disponibles</h3>
                    <ul>
                        <li>🧾 Generar nómina mensual</li>
                        <li>📤 Exportar nómina</li>
                        <li>👥 Gestión de empleados</li>
                    </ul>
                </div>
            `;
        break;

        case "inventarios":
            html = `
                <h2>Inventarios y Costos</h2>
                <div class="tarjeta">
                    <h3>Estado actual</h3>
                    <ul>
                        <li>📦 134 artículos en inventario</li>
                        <li>💲 Costos operativos actualizados</li>
                    </ul>
                </div>
            `;
        break;

        case "reportes":
            html = `
                <h2>Reportes Financieros</h2>
                <div class="tarjeta">
                    <h3>Generar reportes</h3>
                    <button>Estado de Resultados</button>
                    <button>Balance General</button>
                    <button>Flujo de Caja</button>
                </div>
            `;
        break;

        case "tributacion":
            html = `
                <h2>Tributación y Obligaciones</h2>
                <div class="tarjeta">
                    <h3>Obligaciones próximas</h3>
                    <ul>
                        <li>📌 Declaración IVA – 10 de Marzo</li>
                        <li>📌 Retefuente – 20 de Marzo</li>
                        <li>📌 Información exógena – Abril</li>
                    </ul>
                </div>
            `;
        break;

        case "documentos":
            html = `
                <h2>Documentos Contables</h2>
                <div class="tarjeta">
                    <h3>Gestión documental</h3>
                    <button>Subir documento</button>
                    <button>Buscar documentos</button>
                </div>
            `;
        break;

        case "cuentas":
            html = `
                <h2>Contabilidad General</h2>
                <div class="tarjeta">
                    <h3>Procesos disponibles</h3>
                    <ul>
                        <li>📘 Libro Diario</li>
                        <li>📙 Libro Mayor</li>
                        <li>📗 Auxiliares</li>
                    </ul>
                </div>
            `;
        break;

        case "ayuda":
            html = `
                <h2>Ayuda del Sistema</h2>
                <div class="tarjeta">
                    <h3>Documentación y soporte</h3>
                    <button>Abrir Manual</button>
                </div>
            `;
        break;
    }

    cont.innerHTML = html;

    document.querySelectorAll(".menu a").forEach(a => a.classList.remove("activo"));
    document.querySelector(`.menu a[onclick="cargar('${seccion}')"]`).classList.add("activo");
}

cargar("panel");
