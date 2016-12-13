# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('plm', '0005_auto_20161212_0148'),
    ]

    operations = [
        migrations.AlterField(
            model_name='empresa',
            name='descripcioempresa',
            field=models.TextField(null=True),
        ),
        migrations.AlterField(
            model_name='tipusvins',
            name='descripciotipusvi',
            field=models.TextField(null=True),
        ),
        migrations.AlterField(
            model_name='varemes',
            name='descripciovarema',
            field=models.TextField(null=True),
        ),
        migrations.AlterField(
            model_name='vins',
            name='descripciovi',
            field=models.TextField(null=True),
        ),
    ]
