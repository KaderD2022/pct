from django.db import models

from famille.models import Famille

# Create your models here.


     
class Anemager(models.Model):
    SEXE_CHOICES = (
        ('masculin', 'Masculin'),
        ('féminin', 'Féminin'),

    )
    MODE_CHOICES = (
        ('chez un parent', 'Chez un parent'),
        ('nouvelle habitation', 'Nouvelle habitation'),
    )
    
    
    nom = models.CharField(max_length=255)
    genre = models.CharField(choices=SEXE_CHOICES, max_length=20)
    fonction = models.CharField(max_length=255)
    origine = models.CharField(max_length=100000)
    date_de_naissance = models.DateField()
    Type_of_accommodation_on_arrival = models.CharField(choices=MODE_CHOICES, max_length=255)
    nom_du_pere = models.CharField(max_length=255)
    nom_de_mere= models.CharField(max_length=255)  
    lieu_habitation = models.CharField(max_length=500, null=True, blank=True)
    famille = models.ForeignKey(Famille, on_delete=models.CASCADE)
    status = models.BooleanField(default=False, null=True, blank=True)
    annule = models.BooleanField(default=False, null=True, blank=True, verbose_name="amenagement annullée")


    def get_admin_passer_denemager_url(self):
        return f"/admin/{self._meta.app_label}/anemager/{self.id}/passer_denemager/"
    get_admin_passer_denemager_url.short_description = "Passer à Denemager"

    
    def get_admin_passer_denemager_url(self):
        return f"/admin/{self._meta.app_label}/anemager/{self.id}/passer_denemager/"
    get_admin_passer_denemager_url.short_description = "Passer à Denemager"
    
    
    def __str__(self):
        return self.nom
    
    def annullation(self):
        self.annule = True
    
    
class Denemager(models.Model):
    SEXE_CHOICES = (
        ('masculin', 'Masculin'),
        ('féminin', 'Féminin'),

    )

    
    nom = models.CharField(max_length=255)
    genre = models.CharField(choices=SEXE_CHOICES, max_length=20)
    fonction = models.CharField(max_length=255)
    lieu_habitation = models.CharField(max_length=1000)
    date_de_naissance = models.DateField()
    nouvelle_destination = models.CharField(max_length=2000, null=True, blank=True)
    famille = models.ForeignKey(Famille, on_delete=models.CASCADE)
    status = models.BooleanField(default=False, null=True, blank=True)
    
    
    def __str__(self):
        return self.nom
    
    
    
