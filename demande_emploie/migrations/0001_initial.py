# Generated by Django 4.2.3 on 2023-07-20 17:34

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='demande_emploie',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(max_length=255)),
                ('last_name', models.CharField(max_length=255)),
                ('niveau_etude', models.CharField(choices=[('aucun', 'Aucun'), ('primaire', 'Primaire'), ('secndaire', 'Secondaire'), ('BAC 1', 'BAC 1'), ('BAC 2', 'BAC 1'), ('licence', 'Licence'), ('maitrise', 'Maitrise'), ('master', 'Master')], default='aucun', max_length=20)),
                ('dernier_diplome', models.CharField(choices=[('aucun', 'AUCUN'), ('cep', 'CEP'), ('primaire', 'BEPC'), ('secndaire', 'BAC'), ('BAC + 1', 'BAC + 1'), ('BAC + 2', 'BAC + 1'), ('licence', 'Licence'), ('maitrise', 'Maitrise'), ('master', 'Master')], default='aucun', max_length=20)),
                ('domaine', models.CharField(max_length=255)),
            ],
        ),
    ]
