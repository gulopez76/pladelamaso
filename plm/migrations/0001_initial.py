# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='TipusVins',
            fields=[
                ('idtipusvi', models.AutoField(serialize=False, primary_key=True)),
                ('icon', models.DateField(auto_now_add=True)),
                ('titoltipusvi', models.CharField(max_length=15, null=True)),
                ('descripciotipusvi', models.CharField(max_length=50, null=True)),
                ('user', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='userprofile',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('photo', models.ImageField(null=True, upload_to=b'photos/', blank=True)),
                ('user', models.OneToOneField(to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Varemes',
            fields=[
                ('idvarema', models.AutoField(serialize=False, primary_key=True)),
                ('icon', models.DateField(auto_now_add=True)),
                ('titolvarema', models.CharField(max_length=15, null=True)),
                ('descripciovarema', models.CharField(max_length=50, null=True)),
                ('anyvarema', models.CharField(max_length=4)),
                ('fotosvarema1', models.ImageField(null=True, upload_to=b'photos/varemas/', blank=True)),
                ('fotosvarema2', models.ImageField(null=True, upload_to=b'photos/varemas/', blank=True)),
                ('fotosvarema3', models.ImageField(null=True, upload_to=b'photos/varemas/', blank=True)),
                ('fotosvarema4', models.ImageField(null=True, upload_to=b'photos/varemas/', blank=True)),
                ('user', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Vins',
            fields=[
                ('idvi', models.AutoField(serialize=False, primary_key=True)),
                ('icon', models.DateField(auto_now_add=True)),
                ('titolvi', models.CharField(max_length=15, null=True)),
                ('descripciovi', models.CharField(max_length=50, null=True)),
                ('fotosvi1', models.ImageField(null=True, upload_to=b'photos/vins/', blank=True)),
                ('fotosvi2', models.ImageField(null=True, upload_to=b'photos/vins/', blank=True)),
                ('fotosvi3', models.ImageField(null=True, upload_to=b'photos/vins/', blank=True)),
                ('fotosvi4', models.ImageField(null=True, upload_to=b'photos/vins/', blank=True)),
                ('idtipusvi', models.ForeignKey(to='plm.TipusVins')),
                ('idvarema', models.ForeignKey(to='plm.Varemes')),
                ('user', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
