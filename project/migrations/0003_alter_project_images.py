# Generated by Django 4.2.3 on 2023-07-29 12:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('project', '0002_project_images'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='images',
            field=models.ImageField(blank=True, null=True, upload_to='photos/project'),
        ),
    ]
