from django.db import models

# Create your models here.


class Competence(models.Model):
    nom = models.CharField(max_length=255)
    
        
    def __str__(self):
        return self.nom