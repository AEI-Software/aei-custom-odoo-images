#!/bin/bash
set -e

if [ "${1:0:1}" = '-' ]; then
    set -- odoo "$@"
fi

if [ "$1" = 'odoo' ]; then
    # /opt/custom-addons = wizard baked en la imagen (no sobreescrito por K8s emptyDir)
    # /mnt/extra-addons  = addons OCA clonados por el init-container del pod
    set -- "$@" --addons-path="/opt/custom-addons,/mnt/extra-addons,/usr/lib/python3/dist-packages/odoo/addons"

    if [[ "$*" != *"shell"* ]]; then
        set -- "$@" -i odoo_setup_wizard
    fi
fi

echo "[entrypoint] args: $*"
exec /entrypoint.sh "$@"
