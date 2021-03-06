# -*- coding: utf-8 -*-
# Generated by Django 1.11.29 on 2021-02-28 14:21
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0002_auto_20200416_1732'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tasktaken',
            name='status',
            field=models.IntegerField(choices=[(0, 'Task taken'), (1, 'Task cancelled'), (2, 'Task blacklisted'), (3, 'Task scored'), (4, 'TaskTaken deleted')], db_index=True, default=0),
        ),
    ]
