# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('plm', '0003_auto_20161212_0134'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Empres',
            new_name='Empresa',
        ),
        migrations.RenameField(
            model_name='empresa',
            old_name='descripciotipusvi',
            new_name='descripcioempresa',
        ),
        migrations.RenameField(
            model_name='empresa',
            old_name='titoltipusvi',
            new_name='titolempresa',
        ),
    ]
