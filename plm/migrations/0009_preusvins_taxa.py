# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from decimal import Decimal


class Migration(migrations.Migration):

    dependencies = [
        ('plm', '0008_preusvins'),
    ]

    operations = [
        migrations.AddField(
            model_name='preusvins',
            name='taxa',
            field=models.DecimalField(default=Decimal('21.0000'), max_digits=10, decimal_places=2),
        ),
    ]
