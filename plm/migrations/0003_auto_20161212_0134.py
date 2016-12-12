# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('plm', '0002_auto_20161212_0130'),
    ]

    operations = [
        migrations.CreateModel(
            name='Empres',
            fields=[
                ('idempresa', models.AutoField(serialize=False, primary_key=True)),
                ('icones', models.ImageField(null=True, upload_to=b'photos/empresa/', blank=True)),
                ('titoltipusvi', models.CharField(max_length=15, null=True)),
                ('descripciotipusvi', models.TextField(max_length=211, null=True)),
                ('user', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AlterField(
            model_name='tipusvins',
            name='descripciotipusvi',
            field=models.TextField(max_length=211, null=True),
        ),
        migrations.AlterField(
            model_name='varemes',
            name='descripciovarema',
            field=models.TextField(max_length=211, null=True),
        ),
        migrations.AlterField(
            model_name='vins',
            name='descripciovi',
            field=models.TextField(max_length=211, null=True),
        ),
    ]
