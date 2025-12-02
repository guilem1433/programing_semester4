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
        sb.style.width = sb.style.width === "60px" ? "240px" : "60px";
    });

    showSection("inicio");
});

function showSection(id){
    document.querySelectorAll(".section").forEach(s => s.classList.add("hidden"));

    const sections = {
        "inicio":"inicioSection",
        "clientes":"clientesSection",
        "operaciones":"operacionesSection",
        "crediticio":"crediticioSection",
        "operativo":"operativoSection",
        "tecnologico":"tecnologicoSection",
        "reportes":"reportesSection",
        "perfil":"perfilSection",
        "salir":"salirSection"
    };

    document.getElementById(sections[id]).classList.remove("hidden");
}
