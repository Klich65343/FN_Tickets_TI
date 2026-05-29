# Guía Rápida - FNTickets

## 🚀 Inicio Rápido (3 pasos)

### Paso 1: Abrir el Proyecto
```bash
# Desde terminal
cd FNTickets
code .
```

### Paso 2: Instalar Dependencias
```bash
npm install
```

### Paso 3: Iniciar Servidor
```bash
npm run dev
```

Abre tu navegador en: **http://localhost:5173/**

---

## 📁 Estructura Rápida

```
src/
├── pages/        # Vistas de la app
├── components/   # Componentes UI
├── store/        # Estado global (Zustand)
└── types/        # Tipos TypeScript
```

## 🔑 Credenciales de Prueba

| Rol | Email | Contraseña |
|-----|-------|------------|
| Admin | `admin@fntickets.com` | `admin123` |
| Agente | `agent@fntickets.com` | `agent123` |
| Usuario | `user@fntickets.com` | `user123` |

## 🛠️ Comandos Útiles

| Comando | Acción |
|---------|--------|
| `npm run dev` | Iniciar desarrollo |
| `npm run build` | Compilar producción |
| `npm run preview` | Previsualizar build |

## 🎨 Personalizar Colores

Editar `tailwind.config.js`:
```javascript
colors: {
  primary: '#1d64ff',    // Cambiar color principal
  success: '#2ecc71',    // Cambiar color éxito
}
```

## ⚡ Scripts de Inicio Automático

**Windows:**
```bash
start.bat
```

**Linux/Mac:**
```bash
./start.sh
```

---

**¿Problemas?** Consulta el [README.md](./README.md) completo.
