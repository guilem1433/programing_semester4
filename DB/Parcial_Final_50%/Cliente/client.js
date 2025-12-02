document.addEventListener("DOMContentLoaded", () => {

    // Cargar nombre del usuario
    let data = JSON.parse(localStorage.getItem("usuario") || "{}");
    if (data.nombre) document.getElementById("nombreUsuario").innerText = data.nombre;

    // Menú lateral
    document.querySelectorAll(".menu li").forEach(item => {
        item.addEventListener("click", () => {
            document.querySelectorAll(".menu li").forEach(i => i.classList.remove("active"));
            item.classList.add("active");

            let section = item.getAttribute("data-section");
            showSection(section);
        });
    });

    // Toggle menú
    document.getElementById("toggle").addEventListener("click", () => {
        let sb = document.getElementById("sidebar");
        sb.style.width = sb.style.width === "60px" ? "240px" : "60px";
    });

    showSection("inicio");
});

// Mostrar sección
function showSection(id){
    document.querySelectorAll(".section").forEach(s => s.classList.add("hidden"));

    let map = {
        "inicio": "inicioSection",
        "cuentas": "cuentasSection",
        "transferencias": "transferenciasSection",
        "tarjetas": "tarjetasSection",
        "movimientos": "movimientosSection",
        "pagos": "pagosSection",
        "perfil": "perfilSection",
        "config": "configSection",
        "salir": "salirSection"
    };

    document.getElementById(map[id]).classList.remove("hidden");
}
