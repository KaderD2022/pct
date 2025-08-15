from django.db import models


class Famille(models.Model):
    nom = models.CharField(max_length=255)
    nombre_de_menbre = models.name = models.CharField(max_length=255, blank=True, null=True)


    
    def __str__(self):
        return self.nom

class Actualite(models.Model):
    nom = models.CharField(max_length=255)
    contenu = models.name = models.CharField(max_length=255, blank=True, null=True)
    image = models.ImageField(upload_to='static/images/actualité', null=True, blank=True)

    
    def __str__(self):
        return self.nom

class Centre_interet(models.Model):
    nom = models.CharField(max_length=255)
    contenu = models.CharField(max_length=1000, null=True, blank=True)
    image = models.ImageField(upload_to='static/images/centre_interet', null=True, blank=True)
 
    def __str__(self):
        return self.nom

class Activite(models.Model):
    nom = models.CharField(max_length=255)
    contenu = models.CharField(max_length=1000, null=True, blank=True)
    image = models.ImageField(upload_to='static/images/activité', null=True, blank=True)

    
    def __str__(self):
        return self.nom
    
