{
    'name': 'Odoo Setup Wizard',
    'version': '17.0.1.0.0',
    'category': 'Administration',
    'summary': 'Instalación automática de todas las apps community de Odoo 17 + asistente de empresa.',
    'author': 'AEI Software',
    'depends': [
        'base', 'web',
        # CRM y Ventas
        'crm', 'sale_management',
        # Contabilidad
        'account',
        # Compras e Inventario
        'purchase', 'stock',
        # Punto de Venta
        'point_of_sale',
        # Fabricación y Operaciones
        'mrp', 'maintenance', 'repair',
        # Proyectos y Tareas
        'project', 'project_todo', 'note',
        # Suite RRHH
        'hr', 'hr_timesheet', 'hr_recruitment',
        'hr_holidays', 'hr_attendance', 'hr_expense',
        # Flota
        'fleet',
        # Comunicación y Calendario
        'mail', 'calendar', 'discuss',
        # Marketing
        'mass_mailing', 'survey', 'event',
        # Sitio Web y eCommerce
        'website', 'website_sale', 'website_event',
        'website_slides', 'website_blog', 'website_forum',
        'website_livechat',
        # Productividad
        'lunch', 'im_livechat', 'contacts',
    ],
    'data': [
        'security/ir.model.access.csv',
        'wizard/setup_wizard_views.xml',
    ],
    'installable': True,
    'application': True,
    'auto_install': False,
}
