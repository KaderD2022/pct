from django.db import models



# Create your models here.

class Metier(models.Model):
    nom = models.CharField(max_length=255)
    secteur = models.name = models.CharField(max_length=255, blank=True, null=True)

    
    def __str__(self):
        return self.nom