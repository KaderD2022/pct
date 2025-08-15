from django.db import models


# Create your models here.

class Pharmacie(models.Model):
    nom = models.CharField(max_length=255)
    localisation = models.CharField(max_length=1000)
    numero_pharmacie = models.CharField(max_length=200)
    period_garde = models.CharField(max_length=100)
    date_debut = models.DateTimeField()
    date_fin = models.DateTimeField()
    Pharmacien_tituleur = models.CharField(max_length=255, null=True, blank=True)
    image = models.ImageField(upload_to='static/images/pharmacie')
    status = models.BooleanField(default=False)
    position_map = models.CharField(null=True, blank=True, max_length=1000)


    
    def __str__(self):
        return self.nom