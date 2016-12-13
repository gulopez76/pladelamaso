# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('plm', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='tipusvins',
            name='icon',
        ),
        migrations.RemoveField(
            model_name='varemes',
            name='icon',
        ),
        migrations.RemoveField(
            model_name='vins',
            name='icon',
        ),
        migrations.AddField(
            model_name='tipusvins',
            name='icones',
            field=models.ImageField(null=True, upload_to=b'photos/tipusvins/', blank=True),
        ),
        migrations.AddField(
            model_name='varemes',
            name='icones',
            field=models.ImageField(null=True, upload_to=b'photos/varemas/', blank=True),
        ),
        migrations.AddField(
            model_name='vins',
            name='icones',
            field=models.ImageField(null=True, upload_to=b'photos/vins/', blank=True),
        ),
    ]
