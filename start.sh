#!/bin/bash

echo "============================================"
echo "   FNTickets - Iniciar Proyecto"
echo "============================================"
echo ""

# Verificar si Node.js está instalado
if ! command -v node &> /dev/null; then
    echo "[ERROR] Node.js no está instalado."
    echo "Por favor instala Node.js desde: https://nodejs.org/"
    exit 1
fi

echo "[✓] Node.js detectado:"
node --version
echo ""

# Verificar si existen node_modules
if [ ! -d "node_modules" ]; then
    echo "[i] Instalando dependencias por primera vez..."
    echo "Esto puede tardar unos minutos..."
    echo ""
    npm install
    if [ $? -ne 0 ]; then
        echo "[ERROR] Error al instalar dependencias"
        exit 1
    fi
    echo "[✓] Dependencias instaladas correctamente"
    echo ""
else
    echo "[✓] Dependencias ya instaladas"
    echo ""
fi

echo "[i] Iniciando servidor de desarrollo..."
echo "La aplicación se abrirá en: http://localhost:5173/"
echo ""
echo "Presiona Ctrl+C para detener el servidor"
echo "============================================"
echo ""

npm run dev
