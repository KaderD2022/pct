from django.db import models

# Create your models here.

class centre_sante(models.Model):
    nom = models.CharField(max_length=255)
    specialite = models.CharField(max_length=255)
    contact = models.CharField(max_length=255)
    image = models.ImageField(upload_to='static/images/centre_sante', null=True, blank=True)
    
    def __str__(self):
        return self.nom