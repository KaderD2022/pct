from django.db import models

# Create your models here.


class Birth(models.Model):
    SEXE_CHOICES = (
        ('masculin', 'Masculin'),
        ('féminin', 'Féminin'),
        ('personnalisé', 'Personnalisé'),
    )
    MODE_CHOICES = (
        ('masculin', 'Masculin'),
        ('féminin', 'Féminin'),
    )
    
    name = models.CharField(max_length=255)
    gender = models.CharField(choices=SEXE_CHOICES, max_length=20)
    date_of_birth = models.DateField()
    way_of_birth = models.CharField(choices=MODE_CHOICES, max_length=255)
    name_of_father = models.CharField(max_length=255)
    name_of_mother = models.CharField(max_length=255)  
    dwelling_place = models.CharField(max_length=500, null=True, blank=True)
    
    
    def __str__(self):
        return self.name
    
class Death(models.Model):
    SEXE_CHOICES = (
        ('masculin', 'Masculin'),
        ('féminin', 'Féminin'),
        ('personnalisé', 'Personnalisé'),
    )
    MODE_CHOICES = (
        ('hopital', 'Hopital'),
        ('a domicile', 'A domicile'),
    )
    
    name = models.CharField(max_length=255)
    gender = models.CharField(choices=SEXE_CHOICES, max_length=20)
    function = models.CharField(max_length=255)
    date_of_birth = models.DateField()
    date_of_death = models.DateField()
    way_of_birth = models.CharField(choices=MODE_CHOICES, max_length=255)
    reason_of_death = models.CharField(max_length=100000)
    name_of_father = models.CharField(max_length=255)
    name_of_mother = models.CharField(max_length=255)  
    dwelling_place = models.CharField(max_length=500, null=True, blank=True)
    
    
    def __str__(self):
        return self.name
    
    
    