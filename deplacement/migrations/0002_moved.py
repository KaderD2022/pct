# Generated by Django 4.2.3 on 2023-07-26 15:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deplacement', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Moved',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('gender', models.CharField(choices=[('masculin', 'Masculin'), ('féminin', 'Féminin')], max_length=20)),
                ('function', models.CharField(max_length=255)),
                ('dwelling_place', models.CharField(max_length=100000)),
                ('date_of_birth', models.DateField()),
                ('New_destination', models.CharField(blank=True, max_length=2000000, null=True)),
            ],
        ),
    ]
