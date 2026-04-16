FROM odoo:18.0

USER root

RUN mkdir -p /mnt/extra-addons

COPY 18.0/custom_addons/odoo_setup_wizard /mnt/extra-addons/odoo_setup_wizard

COPY 18.0/entrypoint-custom.sh /entrypoint-custom.sh
RUN chmod +x /entrypoint-custom.sh

RUN chown -R odoo:odoo /mnt/extra-addons

USER odoo

ENTRYPOINT ["/entrypoint-custom.sh"]
CMD ["odoo"]
