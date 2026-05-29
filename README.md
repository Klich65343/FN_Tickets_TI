# FNTickets - Sistema de Gestión de Tickets ITSM

![FNTickets Logo](./public/favicon.svg)

Sistema completo de gestión de tickets de soporte técnico (ITSM) inspirado en Freshservice. Incluye portal público, dashboard de agentes, panel de administración con métricas, gestión de activos (ITAM), y seguimiento de tickets pendientes por agente.

## Características Principales

- **Portal Público**: Creación de tickets sin necesidad de login
- **Autenticación Multi-Rol**: Admin, Agentes y Usuarios
- **Gestión de Tickets**: CRUD completo con comentarios y adjuntos
- **Dashboard de Administración**: Métricas, reportes y seguimiento de agentes
- **Gestión de Activos (ITAM)**: Inventario completo de equipos y dispositivos
- **Notificaciones por Email**: Alertas cuando se documentan tickets
- **Seguimiento de SLA**: Alertas visuales para tickets vencidos
- **Asignación de Agentes**: Dropdown para seleccionar agente responsable
- **Departamentos**: Clasificación por áreas de la empresa

## Tecnologías Utilizadas

- **Frontend**: React 18 + TypeScript
- **Build Tool**: Vite 7
- **Estilos**: Tailwind CSS 4
- **UI Components**: shadcn/ui
- **Estado Global**: Zustand (con persistencia)
- **Gráficos**: Recharts
- **Ruteo**: React Router DOM
- **Fechas**: date-fns
- **Iconos**: Lucide React

## Requisitos Previos

Antes de comenzar, asegúrate de tener instalado:

1. **Node.js** (versión 18 o superior)
   ```bash
   node --version
   ```

2. **npm** (incluido con Node.js)
   ```bash
   npm --version
   ```

3. **Visual Studio Code**
   - Descarga desde: https://code.visualstudio.com/

4. **Git** (opcional, para clonar)
   ```bash
   git --version
   ```

## Paso a Paso para Abrir el Proyecto

### 1. Descargar el Proyecto

Si tienes el archivo ZIP:
```bash
# Extrae el contenido en tu carpeta de preferencia
# Por ejemplo: C:\Proyectos\FNTickets\
```

Si usas Git:
```bash
git clone <url-del-repositorio> FNTickets
cd FNTickets
```

### 2. Abrir en Visual Studio Code

**Método 1 - Desde el Explorador:**
1. Abre Visual Studio Code
2. Ve a `Archivo` → `Abrir Carpeta...`
3. Navega hasta la carpeta del proyecto (`FNTickets`)
4. Haz clic en `Seleccionar Carpeta`

**Método 2 - Desde Terminal:**
```bash
# Navega a la carpeta del proyecto
cd C:\Proyectos\FNTickets

# Abre VS Code
code .
```

**Método 3 - Desde VS Code:**
1. Abre VS Code
2. Presiona `Ctrl+K Ctrl+O` (Windows/Linux) o `Cmd+K Cmd+O` (Mac)
3. Selecciona la carpeta del proyecto

### 3. Instalar Dependencias

Una vez abierto el proyecto en VS Code:

1. Abre la terminal integrada:
   - Menú: `Terminal` → `Nueva Terminal`
   - Atajo: `` Ctrl+` `` (backtick)

2. Ejecuta el comando de instalación:
   ```bash
   npm install
   ```

   Esto instalará todas las dependencias listadas en `package.json`.

   **Tiempo estimado:** 2-5 minutos dependiendo de tu conexión.

### 4. Ejecutar en Modo Desarrollo

Después de instalar las dependencias:

```bash
npm run dev
```

Verás algo como:
```
  VITE v7.3.0  ready in 245 ms

  ➜  Local:   http://localhost:5173/
  ➜  Network: http://192.168.1.100:5173/
  ➜  press h + enter to show help
```

**Abre tu navegador** y navega a: `http://localhost:5173/`

### 5. Compilar para Producción

Cuando necesites generar los archivos para producción:

```bash
npm run build
```

Los archivos compilados se generarán en la carpeta `dist/`.

Para previsualizar la versión de producción localmente:
```bash
npm run preview
```

## Estructura del Proyecto

```
FNTickets/
├── public/                    # Archivos estáticos
│   ├── favicon.svg
│   └── ...
│
├── src/
│   ├── components/            # Componentes reutilizables
│   │   ├── ui/               # Componentes de shadcn/ui
│   │   │   ├── accordion.tsx
│   │   │   ├── badge.tsx
│   │   │   ├── button.tsx
│   │   │   ├── card.tsx
│   │   │   ├── dialog.tsx
│   │   │   ├── input.tsx
│   │   │   ├── label.tsx
│   │   │   ├── select.tsx
│   │   │   ├── table.tsx
│   │   │   ├── tabs.tsx
│   │   │   └── textarea.tsx
│   │   └── layout/
│   │       └── DashboardLayout.tsx
│   │
│   ├── pages/                 # Páginas/Vistas de la aplicación
│   │   ├── AdminDashboard.tsx      # Panel de administración
│   │   ├── AgentDashboard.tsx      # Dashboard de agentes
│   │   ├── AssetDetail.tsx         # Detalle de activo
│   │   ├── Assets.tsx              # Lista de activos
│   │   ├── Dashboard.tsx           # Dashboard principal
│   │   ├── Landing.tsx             # Página de inicio
│   │   ├── Login.tsx               # Login de usuarios
│   │   ├── NewAsset.tsx            # Crear nuevo activo
│   │   ├── NewTicket.tsx           # Crear nuevo ticket
│   │   ├── PublicTicket.tsx        # Portal público de tickets
│   │   ├── Settings.tsx            # Configuraciones
│   │   ├── TicketDetail.tsx        # Detalle de ticket
│   │   ├── Tickets.tsx             # Lista de tickets
│   │   └── Users.tsx               # Gestión de usuarios
│   │
│   ├── store/                 # Estado global (Zustand)
│   │   ├── assetStore.ts     # Estado de activos
│   │   ├── authStore.ts      # Estado de autenticación
│   │   └── ticketStore.ts    # Estado de tickets
│   │
│   ├── types/                 # Definiciones de TypeScript
│   │   └── index.ts
│   │
│   ├── lib/                   # Utilidades
│   │   └── utils.ts          # Funciones helper
│   │
│   ├── hooks/                 # Custom React Hooks
│   │   └── use-mobile.tsx
│   │
│   ├── App.tsx               # Componente principal
│   ├── main.tsx              # Punto de entrada
│   └── index.css             # Estilos globales
│
├── components.json           # Configuración de shadcn/ui
├── index.html                # HTML principal
├── package.json              # Dependencias y scripts
├── tsconfig.json             # Configuración de TypeScript
├── vite.config.ts            # Configuración de Vite
├── tailwind.config.ts        # Configuración de Tailwind
└── README.md                 # Este archivo
```

## Scripts Disponibles

| Comando | Descripción |
|---------|-------------|
| `npm run dev` | Inicia el servidor de desarrollo con hot reload |
| `npm run build` | Compila el proyecto para producción |
| `npm run preview` | Previsualiza la versión de producción |
| `npm run lint` | Ejecuta el linter para verificar código |

## Credenciales de Acceso

### Administrador
- **Email:** `admin@fntickets.com`
- **Contraseña:** `admin123`
- **Permisos:** Acceso total al sistema

### Agente
- **Email:** `agent@fntickets.com`
- **Contraseña:** `agent123`
- **Permisos:** Gestionar tickets asignados, ver dashboard

### Usuario Regular
- **Email:** `user@fntickets.com`
- **Contraseña:** `user123`
- **Permisos:** Crear y ver sus propios tickets

## Guía de Uso

### 1. Portal Público
- Accede a la página principal
- Haz clic en "Crear Ticket" sin necesidad de login
- Completa el formulario con tu correo corporativo

### 2. Dashboard de Administrador
- Login con credenciales de admin
- Navega a "Panel Admin"
- Tabs disponibles:
  - **Rendimiento de Agentes**: Estadísticas por agente
  - **Tickets Pendientes**: Seguimiento de tickets por agente con SLA
  - **Análisis de Tickets**: Gráficos por estado y prioridad
  - **Tendencias**: Evolución temporal

### 3. Gestión de Activos (ITAM)
- Menú "Activos" en el sidebar
- Ver lista completa de equipos
- Crear nuevos activos con "Nuevo Activo"
- Ver detalle y asignar a usuarios

### 4. Gestión de Tickets
- Menú "Tickets" para ver todos
- Crear nuevo ticket con "Nuevo Ticket"
- Asignar agente desde el dropdown
- Agregar comentarios y cambiar estado
- Adjuntar archivos

## Personalización

### Cambiar Colores
Edita `tailwind.config.ts`:
```typescript
colors: {
  primary: {
    DEFAULT: '#1d64ff',  // Azul principal
    foreground: '#ffffff',
  },
  // ... otros colores
}
```

### Agregar Nuevos Departamentos
Edita `src/store/ticketStore.ts`:
```typescript
const departments = [
  'TI',
  'Recursos Humanos',
  'Ventas',
  'Marketing',
  // Agrega más aquí
];
```

### Configurar Email (Futuro)
El sistema está preparado para integración con servicios de email como:
- SendGrid
- AWS SES
- Nodemailer (para desarrollo)

## Solución de Problemas

### Error: "Cannot find module"
```bash
# Elimina node_modules y reinstala
rm -rf node_modules
npm install
```

### Error: "Port 5173 is already in use"
```bash
# Mata el proceso usando el puerto
npx kill-port 5173
# O usa otro puerto
npm run dev -- --port 3000
```

### Error de TypeScript
```bash
# Reinicia el servidor de TypeScript
Ctrl+Shift+P → "TypeScript: Restart TS Server"
```

## Extensiones Recomendadas para VS Code

1. **ESLint** - Validación de código
2. **Prettier** - Formateo automático
3. **Tailwind CSS IntelliSense** - Autocompletado de clases
4. **TypeScript Importer** - Importaciones automáticas
5. **Auto Rename Tag** - Renombrado automático de tags HTML

## Recursos Adicionales

- [Documentación de React](https://react.dev/)
- [Documentación de Vite](https://vitejs.dev/)
- [Documentación de Tailwind CSS](https://tailwindcss.com/)
- [Componentes shadcn/ui](https://ui.shadcn.com/)

## Licencia

Este proyecto es de uso interno. Todos los derechos reservados.

---

**Desarrollado por:** FNTickets Team  
**Versión:** 1.0.0  
**Fecha:** Marzo 2026
