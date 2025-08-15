from django.db import models
from centre_sante.models import centre_sante

from famille.models import Centre_interet, Famille

# Create your models here.


class Naissance(models.Model):
    SEXE_CHOICES = (
        ('masculin', 'Masculin'),
        ('féminin', 'Féminin'),

    )
    MODE_CHOICES = (
        ('hopital', 'Hopital'),
        ('a domicile', 'A domicile'),
    )

    nom = models.CharField(max_length=255)
    genre = models.CharField(choices=SEXE_CHOICES, max_length=20)

    date_de_naissance = models.DateField()
    lieu_dela_naissance = models.CharField(choices=MODE_CHOICES, max_length=255)
    nom_du_pere = models.CharField(max_length=255)
    nom_dela_mere = models.CharField(max_length=255)  
    lieu_habitation = models.CharField(max_length=500, null=True, blank=True)
    famille = models.ForeignKey(Famille, on_delete=models.CASCADE, null=True, blank=True)
    hopital = models.ForeignKey(centre_sante, on_delete=models.CASCADE, null=True, blank=True)
    numero =  models.CharField(max_length=100, null=True, blank=True)
    email =  models.EmailField(null=True, blank=True)
    status = models.BooleanField(default=False, null=True, blank=True)
 
    
    def __str__(self):
        return self.nom

    

 
class Deces(models.Model):
    SEXE_CHOICES = (
        ('masculin', 'Masculin'),
        ('féminin', 'Féminin'),

    )
    MODE_CHOICES = (
        ('hopital', 'Hopital'),
        ('a domicile', 'A domicile'),
    )
    
    nom = models.CharField(max_length=255)
    genre = models.CharField(choices=SEXE_CHOICES, max_length=20)
    fonction = models.CharField(max_length=255)
    date_de_naissance = models.DateField()
    date_de_deces = models.DateField()
    lieu_ode_deces = models.CharField(choices=MODE_CHOICES, max_length=255)
    raison_du_deces = models.CharField(max_length=100000)
    nom_du_pere = models.CharField(max_length=255)
    nom_de_mere = models.CharField(max_length=255)  
    lieu_habitation = models.CharField(max_length=500, null=True, blank=True)
    famille = models.ForeignKey(Famille, on_delete=models.CASCADE, null=True, blank=True)
    hopital = models.ForeignKey(centre_sante, on_delete=models.CASCADE, null=True, blank=True)
    numero =  models.CharField(max_length=100, null=True, blank=True)
    email =  models.EmailField(null=True, blank=True)
    status = models.BooleanField(default=False, null=True, blank=True)
 
     
    def __str__(self):
        return self.nom
