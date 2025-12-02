// Demo keys in localStorage
const KEY_USERS = "gt_admin_users";
const KEY_ROLES = "gt_admin_roles";
const KEY_LOGS = "gt_admin_logs";

document.addEventListener("DOMContentLoaded", () => {
  initDemo();
  bindUI();
  renderDashboard();
});

// Demo initial data
function initDemo(){
  if (!localStorage.getItem(KEY_USERS)){
    const users = [
      {id: genId(), nombre:"Carlos Admin", correo:"admin@gt.com", rol:"Administrador"},
      {id: genId(), nombre:"Laura Sistemas", correo:"sistemas@gt.com", rol:"Sistemas"}
    ];
    localStorage.setItem(KEY_USERS, JSON.stringify(users));
  }
  if (!localStorage.getItem(KEY_ROLES)){
    const roles = [{name:"Administrador", perms:["all"]},{name:"Cajero", perms:["cash"]}];
    localStorage.setItem(KEY_ROLES, JSON.stringify(roles));
  }
  if (!localStorage.getItem(KEY_LOGS)){
    const logs = [{id:genId(),ts:new Date().toLocaleString(),evt:"Sistema iniciado" }];
    localStorage.setItem(KEY_LOGS, JSON.stringify(logs));
  }
}

function genId(){ return 'id_'+Math.random().toString(36).slice(2,9); }
function getUsers(){ return JSON.parse(localStorage.getItem(KEY_USERS) || "[]"); }
function saveUsers(u){ localStorage.setItem(KEY_USERS, JSON.stringify(u)); }
function getRoles(){ return JSON.parse(localStorage.getItem(KEY_ROLES) || "[]"); }
function saveRoles(r){ localStorage.setItem(KEY_ROLES, JSON.stringify(r)); }
function getLogs(){ return JSON.parse(localStorage.getItem(KEY_LOGS) || "[]"); }
function saveLogs(l){ localStorage.setItem(KEY_LOGS, JSON.stringify(l)); }

function bindUI(){
  // sidebar menu
  document.querySelectorAll('.menu li').forEach(li=>{
    li.addEventListener('click', ()=>{
      document.querySelectorAll('.menu li').forEach(x=>x.classList.remove('active'));
      li.classList.add('active');
      const sec = li.getAttribute('data-section');
      showSection(sec);
    });
  });

  // toggle
  document.getElementById('toggle').addEventListener('click', ()=>{
    const sb = document.getElementById('sidebar');
    sb.style.width = sb.style.width === '70px' ? '260px' : '70px';
  });

  // search
  document.getElementById('searchAdmin').addEventListener('input', (e)=>{
    const q = e.target.value.trim().toLowerCase();
    if (!q) renderUsersTable();
    else renderUsersTable(q);
  });

  // new user
  document.getElementById('btnNewUser').addEventListener('click', createUserPrompt);

  // roles
  document.getElementById('createRoleBtn').addEventListener('click', createRole);

  // DB op
  document.getElementById('runBdOp').addEventListener('click', runBdOperation);

  // reports
  document.getElementById('genReport').addEventListener('click', generateReport);

  // backups
  document.getElementById('btnBackupNow').addEventListener('click', doBackupNow);

  // config
  document.getElementById('saveConfig').addEventListener('click', saveConfig);

  // logout
  document.getElementById('logoutBtn').addEventListener('click', ()=>{ alert('Sesión cerrada'); window.location.href='login.html'; });

  showSection('dashboard');
}

function showSection(key){
  const map = {
    dashboard:'dashboardSection', usuarios:'usuariosSection', roles:'rolesSection',
    bd:'bdSection', reportes:'reportesSection', seguridad:'seguridadSection',
    backups:'backupsSection', config:'configSection', logs:'logsSection', salir:'salirSection'
  };
  document.querySelectorAll('.section').forEach(s=>s.classList.add('hidden'));
  const id = map[key];
  if (id) document.getElementById(id).classList.remove('hidden');

  // dynamic renders
  if (key==='usuarios') renderUsersTable();
  if (key==='roles') renderRoles();
  if (key==='logs') renderLogs();
  if (key==='dashboard') renderDashboard();
}

function renderDashboard(){
  const users = getUsers();
  document.getElementById('totalUsers').textContent = users.length;
  // sample counters:
  document.getElementById('txToday').textContent = Math.floor(Math.random()*500);
  document.getElementById('alertsCount').textContent = Math.floor(Math.random()*10);
  const rq = document.getElementById('resumenQuick'); rq.innerHTML = '';
  rq.appendChild(createItem('Último backup','Hace 2 horas'));
  rq.appendChild(createItem('Usuarios nuevos (7d)',''+Math.floor(Math.random()*12)));
}

function createItem(t,v){
  const d = document.createElement('div'); d.className='item';
  d.innerHTML = `<div><strong>${t}</strong><br><small>${v}</small></div>`;
  return d;
}

/* USERS */
function renderUsersTable(filter){
  const container = document.getElementById('usersTable'); container.innerHTML='';
  const users = getUsers().filter(u=>{
    if (!filter) return true;
    const q = filter.toLowerCase();
    return u.nombre.toLowerCase().includes(q) || u.correo.toLowerCase().includes(q) || u.rol.toLowerCase().includes(q);
  });
  if (users.length===0){ container.innerHTML='<div class="card-form"><p>No hay usuarios</p></div>'; return; }
  users.forEach(u=>{
    const row = document.createElement('div'); row.className='row';
    row.innerHTML = `<div><strong>${u.nombre}</strong><br><small>${u.correo} • ${u.rol}</small></div>
                     <div><button class="btn" onclick="editUser('${u.id}')">Editar</button> <button class="btn ghost" onclick="deleteUser('${u.id}')">Eliminar</button></div>`;
    container.appendChild(row);
  });
}

function createUserPrompt(){
  const nombre = prompt('Nombre del usuario:');
  if (!nombre) return;
  const correo = prompt('Correo:');
  if (!correo) return;
  const rol = prompt('Rol (Administrador/Cajero/Asesor/Sistemas):','Asesor');
  const users = getUsers();
  users.push({id:genId(), nombre, correo, rol});
  saveUsers(users);
  renderUsersTable();
  logEvent(`Usuario creado: ${correo}`);
  alert('Usuario creado');
}

function editUser(id){
  const users = getUsers(); const u = users.find(x=>x.id===id);
  if (!u) return; const nn = prompt('Editar nombre', u.nombre);
  if (nn!==null && nn.trim()!==''){ u.nombre = nn.trim(); saveUsers(users); renderUsersTable(); logEvent(`Usuario editado: ${id}`); alert('Usuario actualizado'); }
}

function deleteUser(id){
  if (!confirm('Eliminar usuario?')) return;
  let users = getUsers(); users = users.filter(u=>u.id!==id); saveUsers(users); renderUsersTable(); logEvent(`Usuario eliminado: ${id}`);
}

/* ROLES */
function createRole(){
  const name = document.getElementById('newRoleName').value.trim();
  const perms = document.getElementById('newRolePerms').value.trim();
  if (!name) { alert('Nombre rol requerido'); return; }
  const roles = getRoles(); roles.push({name, perms: perms.split(',').map(s=>s.trim())}); saveRoles(roles); renderRoles(); alert('Rol creado');
}

function renderRoles(){
  const list = document.getElementById('rolesList'); list.innerHTML='';
  const roles = getRoles();
  if (roles.length===0){ list.innerHTML='<div class="card-form"><p>No hay roles</p></div>'; return; }
  roles.forEach(r=>{
    const d = document.createElement('div'); d.className='item';
    d.innerHTML = `<div><strong>${r.name}</strong><br><small>Permisos: ${r.perms.join(', ')}</small></div>
                   <div><button class="btn ghost" onclick="deleteRole('${r.name}')">Eliminar</button></div>`;
    list.appendChild(d);
  });
}

function deleteRole(name){
  if (!confirm('Eliminar rol?')) return;
  let roles = getRoles(); roles = roles.filter(r=>r.name!==name); saveRoles(roles); renderRoles(); logEvent(`Rol eliminado: ${name}`);
}

/* BD operations (simulated) */
function runBdOperation(){
  const op = document.getElementById('bdOp').value;
  const params = document.getElementById('bdParams').value.trim();
  const out = document.getElementById('bdResult'); out.innerHTML = '';
  // Simulate operations
  if (op==='backup'){ out.innerHTML = '<div class="item">Backup iniciado... (simulado)</div>'; logEvent('Backup iniciado'); }
  else if (op==='restore'){ out.innerHTML = `<div class="item">Restore simulado con: ${params}</div>`; logEvent('Restore ejecutado'); }
  else if (op==='optimize'){ out.innerHTML = '<div class="item">Optimización completada (simulado)</div>'; logEvent('Optimización tablas'); }
  else if (op==='runquery'){ out.innerHTML = `<div class="item">Resultado simulado de la consulta:<pre>${params}</pre></div>`; logEvent('Consulta SQL ejecutada'); }
}

/* REPORTS */
function generateReport(){
  const type = document.getElementById('reportType').value;
  const from = document.getElementById('rFrom').value;
  const to = document.getElementById('rTo').value;
  const out = document.getElementById('reportOutput'); out.innerHTML = '';
  out.innerHTML = `<div class="item"><strong>Reporte ${type}</strong><br><small>Rango: ${from || '—'} a ${to || '—'}</small></div>`;
  logEvent(`Reporte generado: ${type}`);
}

/* BACKUPS */
function doBackupNow(){
  const log = document.getElementById('backupLog'); log.innerHTML = '';
  const ts = new Date().toLocaleString();
  log.innerHTML = `<div class="item">Backup realizado en ${ts} (simulado)</div>`;
  logEvent('Backup manual realizado');
}

/* CONFIG */
function saveConfig(){
  const name = document.getElementById('cfgName').value;
  const maint = document.getElementById('cfgMaint').value;
  alert('Configuración guardada (simulada)');
  logEvent('Configuración actualizada');
}

/* LOGS */
function renderLogs(){
  const list = document.getElementById('logsList'); list.innerHTML = '';
  const logs = getLogs().slice().reverse();
  if (logs.length===0){ list.innerHTML='<div class="card-form"><p>No hay logs</p></div>'; return; }
  logs.forEach(l=>{
    const d = document.createElement('div'); d.className='item';
    d.innerHTML = `<div><strong>${l.ts}</strong><br><small>${l.evt}</small></div>`;
    list.appendChild(d);
  });
}

function logEvent(evt){
  const logs = getLogs();
  logs.push({id:genId(), ts:new Date().toLocaleString(), evt});
  saveLogs(logs);
}

/* init render helpers */
function renderRoles(){ /* defined earlier, but ensure available */ }
function renderUsersTable(){ /* defined earlier, ensure available */ }
function renderDashboard(){ /* defined earlier, ensure available */ }
// ensure functions available (re-assign if hoisting required)
renderRoles = renderRoles;
renderUsersTable = renderUsersTable;
renderDashboard = renderDashboard;
