#!/bin/bash

# Verificar si el archivo index.html existe
if [ -f "index.html" ]; then
    echo "Archivo index.html encontrado."
else
    echo "ERROR: No se encontró el archivo index.html."
    exit 1
fi

# Verificar el contenido esperado en index.html
expected_content="<h1>Hola Mundo!</h1>"
if grep -q "$expected_content" "index.html"; then
    echo "Contenido esperado encontrado en index.html."
else
    echo "ERROR: El contenido esperado no se encontró en index.html."
    exit 1
fi

echo "Prueba unitaria completada satisfactoriamente."
exit 0
