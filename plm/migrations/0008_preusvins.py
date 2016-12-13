# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings
from decimal import Decimal


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('plm', '0007_email'),
    ]

    operations = [
        migrations.CreateModel(
            name='PreusVins',
            fields=[
                ('idpreuvi', models.AutoField(serialize=False, primary_key=True)),
                ('preubrut', models.DecimalField(default=Decimal('0.0000'), max_digits=10, decimal_places=2)),
                ('preunet', models.DecimalField(default=Decimal('0.0000'), max_digits=10, decimal_places=2)),
                ('visible', models.CharField(max_length=1, null=True)),
                ('idvi', models.ForeignKey(to='plm.Vins')),
                ('user', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
