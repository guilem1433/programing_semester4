// Datos iniciales demo (se almacenan en localStorage)
const KEY_CLIENTS = "gt_clients";
const KEY_REQUESTS = "gt_requests";
const KEY_DOCS = "gt_docs";
const KEY_ADVISOR = "gt_asesor";

document.addEventListener("DOMContentLoaded", () => {
  initDemoData();
  bindUI();
  renderDashboard();
});

// Inicializa demo si no existe
function initDemoData() {
  if (!localStorage.getItem(KEY_CLIENTS)) {
    const clients = [
      { id: genId(), nombre: "Ana Ruiz", correo: "ana.ruiz@example.com", telefono: "3001112222", documento: "10223344" },
      { id: genId(), nombre: "Luis Mora", correo: "luis.mora@example.com", telefono: "3102223333", documento: "10998877" }
    ];
    localStorage.setItem(KEY_CLIENTS, JSON.stringify(clients));
  }
  if (!localStorage.getItem(KEY_REQUESTS)) {
    const reqs = [
      { id: genId(), tipo: "Tarjeta Crédito", cliente: "ana.ruiz@example.com", estado: "Pendiente", fecha: "2025-02-10" }
    ];
    localStorage.setItem(KEY_REQUESTS, JSON.stringify(reqs));
  }
  if (!localStorage.getItem(KEY_DOCS)) {
    const docs = [
      { id: genId(), cliente: "luis.mora@example.com", nombre: "Cedula Frente.pdf", fecha:"2025-02-09" }
    ];
    localStorage.setItem(KEY_DOCS, JSON.stringify(docs));
  }
  if (!localStorage.getItem(KEY_ADVISOR)) {
    localStorage.setItem(KEY_ADVISOR, JSON.stringify({ nombre: "Carlos Asesor", correo: "asesor@globaltrust.com" }));
  }
}

// Utilidades
function genId(){ return 'id_' + Math.random().toString(36).slice(2,9); }
function getClients(){ return JSON.parse(localStorage.getItem(KEY_CLIENTS) || "[]"); }
function getRequests(){ return JSON.parse(localStorage.getItem(KEY_REQUESTS) || "[]"); }
function getDocs(){ return JSON.parse(localStorage.getItem(KEY_DOCS) || "[]"); }
function saveClients(arr){ localStorage.setItem(KEY_CLIENTS, JSON.stringify(arr)); }
function saveRequests(arr){ localStorage.setItem(KEY_REQUESTS, JSON.stringify(arr)); }
function saveDocs(arr){ localStorage.setItem(KEY_DOCS, JSON.stringify(arr)); }

// UI bindings
function bindUI() {
  // Sidebar menu
  document.querySelectorAll('.menu li').forEach(li => {
    li.addEventListener('click', () => {
      document.querySelectorAll('.menu li').forEach(x => x.classList.remove('active'));
      li.classList.add('active');
      const sec = li.getAttribute('data-section');
      showSection(sec);
    });
  });

  // Toggle sidebar small
  document.getElementById('toggle').addEventListener('click', () => {
    const sb = document.getElementById('sidebar');
    sb.style.width = sb.style.width === '70px' ? '250px' : '70px';
  });

  // Search
  document.getElementById('searchInput').addEventListener('input', (e) => {
    const q = e.target.value.trim().toLowerCase();
    if (!q) renderClientsTable();
    else renderClientsTable(q);
  });

  // Nuevo cliente modal
  document.getElementById('btnNuevoCliente').addEventListener('click', () => openModal());
  document.getElementById('cerrarModal').addEventListener('click', closeModal);
  document.getElementById('guardarCliente').addEventListener('click', saveNewClient);

  // Crear cuenta
  document.getElementById('crearCuentaBtn').addEventListener('click', crearCuentaForClient);

  // Filters and others
  document.getElementById('docClienteFilter').addEventListener('input', () => renderDocs());

  // Perfil save
  document.getElementById('saveAsesorBtn').addEventListener('click', saveAsesorProfile);
  // Logout
  document.getElementById('confirmLogout').addEventListener('click', () => {
    alert('Sesión finalizada'); window.location.href = 'login.html';
  });

  // mostrar default
  showSection('dash');
}

// Mostrar secciones
function showSection(key){
  const map = {
    dash: 'dashSection',
    clientes: 'clientesSection',
    nuevacuenta: 'nuevacuentaSection',
    solicitudes: 'solicitudesSection',
    documentos: 'documentosSection',
    alertas: 'alertasSection',
    perfil: 'perfilSection',
    salir: 'salirSection'
  };
  document.querySelectorAll('.section').forEach(s => s.classList.add('hidden'));
  const id = map[key];
  if (id) document.getElementById(id).classList.remove('hidden');
  // render dinámico por sección
  if (key === 'clientes') renderClientsTable();
  if (key === 'dash') renderDashboard();
  if (key === 'solicitudes') renderRequests();
  if (key === 'documentos') renderDocs();
  if (key === 'alertas') renderAlerts();
  if (key === 'perfil') loadAsesorProfile();
}

// DASHBOARD
function renderDashboard(){
  const clients = getClients();
  const reqs = getRequests();
  const docs = getDocs();
  document.getElementById('countClients').textContent = clients.length;
  document.getElementById('countRequests').textContent = reqs.length;
  document.getElementById('countDocs').textContent = docs.length;

  const recent = document.getElementById('recentList'); recent.innerHTML = '';
  reqs.slice(0,5).forEach(r => {
    const div = document.createElement('div'); div.className='item';
    div.innerHTML = `<div><strong>${r.tipo}</strong><br><small>${r.cliente} • ${r.fecha}</small></div><div><span class="badge">${r.estado}</span></div>`;
    recent.appendChild(div);
  });
}

// CLIENTS TABLE
function renderClientsTable(filter){
  const table = document.getElementById('clientsTable'); table.innerHTML = '';
  const clients = getClients().filter(c => {
    if (!filter) return true;
    const q = filter.toLowerCase();
    return c.nombre.toLowerCase().includes(q) || c.correo.toLowerCase().includes(q);
  });
  if (clients.length===0){ table.innerHTML='<div class="card-form"><p>No hay clientes</p></div>'; return; }
  clients.forEach(c=>{
    const row = document.createElement('div'); row.className='client-row';
    row.innerHTML = `<div class="meta"><img src="https://i.pravatar.cc/60?u=${c.correo}"><div><strong>${c.nombre}</strong><br><small>${c.correo} • ${c.telefono}</small></div></div>
                     <div><button class="btn" onclick="openEditClient('${c.id}')">Editar</button></div>`;
    table.appendChild(row);
  });
}

// MODAL
function openModal(){
  document.getElementById('modalCliente').classList.add('show');
}
function closeModal(){
  document.getElementById('modalCliente').classList.remove('show');
}

// GUARDAR CLIENTE
function saveNewClient(){
  const n = document.getElementById('nc_nombre').value.trim();
  const e = document.getElementById('nc_correo').value.trim();
  const t = document.getElementById('nc_telefono').value.trim();
  const d = document.getElementById('nc_documento').value.trim();
  if (!n||!e){ alert('Nombre y correo son obligatorios'); return; }
  const clients = getClients();
  clients.push({ id: genId(), nombre:n, correo:e, telefono:t, documento:d});
  saveClients(clients);
  closeModal();
  renderClientsTable();
  renderDashboard();
  alert('Cliente registrado');
}

// EDIT CLIENT
function openEditClient(id){
  const clients = getClients(); const c = clients.find(x=>x.id===id);
  if (!c) return;
  const nuevo = prompt('Editar nombre del cliente', c.nombre);
  if (nuevo!==null && nuevo.trim()!==''){ c.nombre = nuevo.trim(); saveClients(clients); renderClientsTable(); renderDashboard(); alert('Cliente actualizado'); }
}

// CREAR CUENTA PARA CLIENTE
function crearCuentaForClient(){
  const correo = document.getElementById('cc_cliente').value.trim();
  const tipo = document.getElementById('cc_tipo').value;
  const moneda = document.getElementById('cc_moneda').value;
  const saldo = parseFloat(document.getElementById('cc_saldo').value) || 0;
  if (!correo){ alert('Ingresa correo del cliente'); return; }
  const clients = getClients(); const c = clients.find(x=>x.correo===correo);
  if (!c){ alert('No existe cliente con ese correo'); return; }
  // crear solicitud de cuenta (en requests)
  const requests = getRequests();
  requests.unshift({ id: genId(), tipo: `Apertura ${tipo}`, cliente: correo, estado:'Aprobada', fecha: new Date().toLocaleDateString() });
  saveRequests(requests);
  renderRequests(); renderDashboard(); alert('Cuenta creada y registrada como solicitud aprobada');
}

// REQUESTS
function renderRequests(){
  const list = document.getElementById('requestsList'); list.innerHTML='';
  const reqs = getRequests();
  if (reqs.length===0) { list.innerHTML='<div class="card-form"><p>No hay solicitudes</p></div>'; return; }
  reqs.forEach(r=>{
    const div = document.createElement('div'); div.className='item';
    div.innerHTML = `<div><strong>${r.tipo}</strong><br><small>${r.cliente} • ${r.fecha}</small></div>
                     <div><span>${r.estado}</span> <button class="btn ghost" onclick="approveReq('${r.id}')">Aprobar</button></div>`;
    list.appendChild(div);
  });
}
function approveReq(id){
  const reqs = getRequests(); const idx = reqs.findIndex(r=>r.id===id);
  if (idx>=0){ reqs[idx].estado='Aprobada'; saveRequests(reqs); renderRequests(); renderDashboard(); alert('Solicitud aprobada'); }
}

// DOCUMENTS
function renderDocs(){
  const list = document.getElementById('docsList'); list.innerHTML='';
  const docs = getDocs();
  const filter = document.getElementById('docClienteFilter').value.trim().toLowerCase();
  const show = docs.filter(d=> !filter || d.cliente.toLowerCase().includes(filter));
  if (show.length===0){ list.innerHTML='<div class="card-form"><p>No hay documentos</p></div>'; return; }
  show.forEach(d=>{
    const div = document.createElement('div'); div.className='item';
    div.innerHTML = `<div><strong>${d.nombre}</strong><br><small>${d.cliente} • ${d.fecha}</small></div>
                     <div><button class="btn" onclick="viewDoc('${d.id}')">Ver</button></div>`;
    list.appendChild(div);
  });
}
function viewDoc(id){
  const docs = getDocs(); const doc = docs.find(x=>x.id===id);
  if (!doc) return;
  alert(`Simulación: abrir ${doc.nombre} de ${doc.cliente}`);
}

// ALERTS
function renderAlerts(){
  const list = document.getElementById('alertsList'); list.innerHTML='';
  // demo: generar una alerta por montos inusuales
  const alerts = [
    {id:1, titulo:'Transferencia sospechosa', detalle:'Transferencia de $50,000,000 - revisar'},
    {id:2, titulo:'Documento pendiente', detalle:'Documento de Ana Ruiz pendiente de validar'}
  ];
  alerts.forEach(a=>{
    const div = document.createElement('div'); div.className='item';
    div.innerHTML = `<div><strong>${a.titulo}</strong><br><small>${a.detalle}</small></div>
                     <div><button class="btn ghost" onclick="markAlert(${a.id})">Marcar</button></div>`;
    list.appendChild(div);
  });
}
function markAlert(id){ alert('Alerta marcada como revisada'); renderAlerts(); }

// RENDER REQUESTS IN DASH (for recent)
function renderRecent(){
  renderDashboard();
}

// ASESOR PROFILE
function loadAsesorProfile(){
  const a = JSON.parse(localStorage.getItem(KEY_ADVISOR) || '{}');
  document.getElementById('inputAsesorName').value = a.nombre || '';
  document.getElementById('inputAsesorEmail').value = a.correo || '';
  document.getElementById('asesorName').textContent = a.nombre || 'Asesor';
}
function saveAsesorProfile(){
  const n = document.getElementById('inputAsesorName').value.trim();
  const e = document.getElementById('inputAsesorEmail').value.trim();
  if (!n||!e){ alert('Nombre y correo obligatorios'); return; }
  localStorage.setItem(KEY_ADVISOR, JSON.stringify({ nombre:n, correo:e }));
  document.getElementById('asesorName').textContent = n;
  alert('Perfil guardado');
}

// Alerts and misc
function renderAlertsCount(){ document.getElementById('countRequests').textContent = getRequests().length; }

// Inicialmente render some lists
function renderRequestsAndDocs(){ renderRequests(); renderDocs(); renderClientsTable(); renderDashboard(); }
