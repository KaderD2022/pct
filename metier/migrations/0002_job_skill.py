# Generated by Django 4.2.3 on 2023-07-17 16:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('skill', '0001_initial'),
        ('metier', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='job',
            name='skill',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, related_name='skill', to='skill.skill'),
            preserve_default=False,
        ),
    ]
