FROM odoo:17.0

USER root

RUN mkdir -p /mnt/extra-addons

# Módulo de autoconfiguración (instala todas las apps community de Odoo 17)
COPY 17.0/custom_addons/odoo_setup_wizard /mnt/extra-addons/odoo_setup_wizard

# Entrypoint personalizado que inyecta -i odoo_setup_wizard en cada arranque
COPY 17.0/entrypoint-custom.sh /entrypoint-custom.sh
RUN chmod +x /entrypoint-custom.sh

RUN chown -R odoo:odoo /mnt/extra-addons

USER odoo

ENTRYPOINT ["/entrypoint-custom.sh"]
CMD ["odoo"]
