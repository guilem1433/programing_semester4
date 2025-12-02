document.addEventListener("DOMContentLoaded", () => {

    document.querySelectorAll(".menu li").forEach(item => {
      item.addEventListener("click", () => {
        document.querySelectorAll(".menu li").forEach(i => i.classList.remove("active"));
        item.classList.add("active");

        let section = item.getAttribute("data-section");
        showSection(section);
      });
    });

    document.getElementById("toggle").addEventListener("click", () => {
      let sb = document.getElementById("sidebar");
      sb.style.width = sb.style.width === "70px" ? "260px" : "70px";
    });

    showSection("dashboard");

    // Cargar datos ficticios
    document.getElementById("ticketsActivos").textContent = "18";
    document.getElementById("equiposMant").textContent = "7";
    document.getElementById("alertasCriticas").textContent = "3";
});

function showSection(id){
  document.querySelectorAll(".section").forEach(s => s.classList.add("hidden"));

  const sections = {
    dashboard:"dashboardSection",
    tickets:"ticketsSection",
    equipos:"equiposSection",
    infraestructura:"infraestructuraSection",
    incidentes:"incidentesSection",
    seguridad:"seguridadSection",
    reportes:"reportesSection",
    perfil:"perfilSection",
    salir:"salirSection"
  };

  document.getElementById(sections[id]).classList.remove("hidden");
}
