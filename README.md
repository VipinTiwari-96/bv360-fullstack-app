# 🧩 BV360 Fullstack App

A full-stack web application built with **AdonisJS (Node.js)** as the backend, **ReactJS** as the frontend, and **MySQL** as the database.  
This project demonstrates a complete **authentication flow (login/logout)** and protected dashboard access using **JWT-based authentication**.

---

## 🚀 Tech Stack

### 🖥️ Frontend

- ReactJS (with React Router DOM)
- Formik + Yup (form handling & validation)
- Axios (API communication)
- TailwindCSS (styling)

### ⚙️ Backend

- AdonisJS 6
- MySQL
- Lucid ORM
- JWT Authentication

---

## 🔐 Features

- User Login using JWT authentication
- Logout functionality
- Protected routes using a Higher-Order Component (`withAuth`)
- Dashboard with mock data
- Example test API for JSON verification
- Error handling with proper HTTP status codes

---

## ⚡ Setup Instructions

### 1️⃣ Clone the repository

```bash
 - git clone https://github.com/VipinTiwari-96/bv360-fullstack-app.git
 - cd bv360-fullstack
```

## ⚡ Backend setup

- cd backend
- npm install
- cp .env.example .env

# Update your MySQL credentials inside .env

- node ace migration:run
- npm run dev
  Backend runs at → http://localhost:3333

## ⚡ Frontend setup

- cd ../frontend
- npm install
- npm run dev
  Frontend runs at → http://localhost:3000

🧪 Test APIs
| Method | Endpoint | Description |
| ------ | ---------------- | ---------------------------- |
| POST | `/api/login` | Authenticate user |
| POST | `/api/signup` | Register a new user |
| GET | `/api/user` | Get logged-in user info |
| GET | `/api/dashboard` | Fetch mock dashboard data |
| POST | `/api/test` | Verify JSON request handling |

🧠 Author
Vipin Tiwari
Full-Stack Developer | JavaScript | React | AdonisJS | MySQL
