// INIT SUPER ADMIN
if (!localStorage.users) {
    localStorage.users = JSON.stringify([
        {name:"Mahad", email:"admin", password:"Lesdiwalee", role:"super"}
    ]);
}

// LOGIN
function login() {
    const e = email.value;
    const p = password.value;
    const users = JSON.parse(localStorage.users);

    const u = users.find(x => x.email === e && x.password === p);
    if (!u) return error.innerText = "Invalid login";

    localStorage.currentUser = JSON.stringify(u);
    location.href = "dashboard.html";
}

// LOGOUT
function logout() {
    localStorage.removeItem("currentUser");
    location.href = "index.html";
}

// ADD USER
function addUser() {
    const users = JSON.parse(localStorage.users);
    users.push({
        name: uname.value,
        email: uemail.value,
        password: upass.value,
        role: urole.value
    });
    localStorage.users = JSON.stringify(users);
    loadUsers();
}

// LOAD USERS
function loadUsers() {
    const list = document.getElementById("userList");
    list.innerHTML = "";
    JSON.parse(localStorage.users).forEach(u => {
        const li = document.createElement("li");
        li.innerText = u.name + " (" + u.role + ")";
        list.appendChild(li);
    });
}

// CREATE INVOICE
function createInvoice() {
    const inv = {client: client.value, amount: amount.value};
    localStorage.currentInvoice = JSON.stringify(inv);
    window.open("invoice.html");
}

// SHOW SECTIONS
function show(id) {
    users.style.display = "none";
    invoices.style.display = "none";
    document.getElementById(id).style.display = "block";
}

if (location.pathname.includes("dashboard")) {
    loadUsers();
}