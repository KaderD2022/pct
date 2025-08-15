from django.db import models

# Create your models here.

class Projet(models.Model):
    OWNER_CHOICES = (
        ('mairie', 'MAIRIE'),
        ('commune', 'COMMUNE'),
        ('état', 'ETAT'),
    )
    TYPE_CHOICES = (
        ('sanitaire', 'MAIRIE'),
        ('anenagement', 'COMMUNE'),
        ('routiere', 'Routiere'),
        ('social', 'Social'),
        ('educative', 'Educative'),
    )
    nom = models.CharField(max_length=255)
    initiateur = models.CharField(choices=OWNER_CHOICES, max_length=20)
    type_project = models.CharField(choices=TYPE_CHOICES,  max_length=20)
    description = models.TextField()
    image = models.ImageField(upload_to='static/images/projet', null=True, blank=True)
    
    def __str__(self):
        return self.nom