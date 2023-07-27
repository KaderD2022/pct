from django.db import models

# Create your models here.


     
class Finished(models.Model):
    SEXE_CHOICES = (
        ('masculin', 'Masculin'),
        ('féminin', 'Féminin'),

    )
    MODE_CHOICES = (
        ('chez un parent', 'Chez un parent'),
        ('nouvelle habitation', 'Nouvelle habitation'),
    )
    
    name = models.CharField(max_length=255)
    gender = models.CharField(choices=SEXE_CHOICES, max_length=20)
    function = models.CharField(max_length=255)
    origin = models.CharField(max_length=100000)
    date_of_birth = models.DateField()
    Type_of_accommodation_on_arrival = models.CharField(choices=MODE_CHOICES, max_length=255)
    origin = models.CharField(max_length=100000)
    name_of_father = models.CharField(max_length=255)
    name_of_mother = models.CharField(max_length=255)  
    dwelling_place = models.CharField(max_length=500, null=True, blank=True)
    
    
    def __str__(self):
        return self.name
    
    
class Moved(models.Model):
    SEXE_CHOICES = (
        ('masculin', 'Masculin'),
        ('féminin', 'Féminin'),

    )

    
    name = models.CharField(max_length=255)
    gender = models.CharField(choices=SEXE_CHOICES, max_length=20)
    function = models.CharField(max_length=255)
    dwelling_place = models.CharField(max_length=100000)
    date_of_birth = models.DateField()
    New_destination = models.CharField(max_length=2000000, null=True, blank=True)
    
    
    def __str__(self):
        return self.name
    