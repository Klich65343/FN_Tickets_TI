@echo off
chcp 65001 >nul
echo ============================================
echo    FNTickets - Iniciar Proyecto
echo ============================================
echo.

REM Verificar si Node.js está instalado
node --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Node.js no está instalado.
    echo Por favor instala Node.js desde: https://nodejs.org/
    pause
    exit /b 1
)

echo [✓] Node.js detectado:
node --version
echo.

REM Verificar si existen node_modules
if not exist "node_modules" (
    echo [i] Instalando dependencias por primera vez...
    echo Esto puede tardar unos minutos...
    echo.
    call npm install
    if errorlevel 1 (
        echo [ERROR] Error al instalar dependencias
        pause
        exit /b 1
    )
    echo [✓] Dependencias instaladas correctamente
    echo.
) else (
    echo [✓] Dependencias ya instaladas
    echo.
)

echo [i] Iniciando servidor de desarrollo...
echo La aplicación se abrirá en: http://localhost:5173/
echo.
echo Presiona Ctrl+C para detener el servidor
echo ============================================
echo.

npm run dev

pause
