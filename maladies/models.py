from django.db import models

# Create your models here.

class Disease(models.Model):
    name = models.CharField(max_length=255)
    symptoms = models.CharField(max_length=1000)
    traitements = models.CharField(max_length=100)
    
    def __str__(self):
        return self.name
    
class epidemie(models.Model):
    name = models.CharField(max_length=255)
    symptoms = models.CharField(max_length=1000)
    traitements = models.CharField(max_length=100)
    date_debut = models.DateField(auto_now=True)
    date_fin = models.DateField(auto_now=True)
    nombre_cas = models.CharField(max_length=100)
    nombre_mort = models.CharField(max_length=100)
    
    def __str__(self):
        return self.name