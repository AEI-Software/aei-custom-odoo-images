FROM odoo:17.0

USER root

RUN mkdir -p /opt/custom-addons

# Wizard en /opt/custom-addons — NO es sobreescrito por el emptyDir de K8s en /mnt/extra-addons
COPY 17.0/custom_addons/odoo_setup_wizard /opt/custom-addons/odoo_setup_wizard

COPY 17.0/entrypoint-custom.sh /entrypoint-custom.sh
RUN chmod +x /entrypoint-custom.sh

RUN chown -R odoo:odoo /opt/custom-addons

USER odoo

ENTRYPOINT ["/entrypoint-custom.sh"]
CMD ["odoo"]
