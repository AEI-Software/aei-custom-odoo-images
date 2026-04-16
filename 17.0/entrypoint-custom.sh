#!/bin/bash
set -e

# Si el primer argumento empieza con '-', anteponer 'odoo'
if [ "${1:0:1}" = '-' ]; then
    set -- odoo "$@"
fi

if [ "$1" = 'odoo' ]; then
    # Asegurar el addons_path correcto (sobreescribe el del odoo.conf)
    set -- "$@" --addons-path="/mnt/extra-addons,/usr/lib/python3/dist-packages/odoo/addons"

    # Instalar el wizard (y con él todas las apps community de Odoo 17)
    # en cada arranque; si ya está instalado, Odoo lo omite en < 1s
    if [[ "$*" != *"shell"* ]]; then
        set -- "$@" -i odoo_setup_wizard
    fi
fi

echo "[entrypoint] args: $*"
exec /entrypoint.sh "$@"
