document.addEventListener("DOMContentLoaded", () => {

    // Cambio dinámico de secciones
    document.querySelectorAll(".menu li").forEach(item => {
        item.addEventListener("click", () => {
            document.querySelectorAll(".menu li").forEach(li => li.classList.remove("active"));
            item.classList.add("active");

            let section = item.getAttribute("data-section");
            showSection(section);
        });
    });

    // Toggle del menú
    document.getElementById("toggle").addEventListener("click", () => {
        const sb = document.getElementById("sidebar");
        sb.style.width = sb.style.width === "70px" ? "260px" : "70px";
    });

    // Sección inicial
    showSection("dashboard");
});

function showSection(id){
    document.querySelectorAll(".section").forEach(s => s.classList.add("hidden"));

    const sections = {
        dashboard:"dashboardSection",
        finanzas:"finanzasSection",
        operaciones:"operacionesSection",
        usuarios:"usuariosSection",
        riesgos:"riesgosSection",
        infraestructura:"infraestructuraSection",
        alertas:"alertasSection",
        reportes:"reportesSection",
        config:"configSection",
        perfil:"perfilSection",
        salir:"salirSection"
    };

    document.getElementById(sections[id]).classList.remove("hidden");
}
