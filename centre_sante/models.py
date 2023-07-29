from django.db import models

# Create your models here.

class Health_center(models.Model):
    name = models.CharField(max_length=255)
    specialite = models.CharField(max_length=255)
    contact = models.CharField(max_length=255)
    image = models.ImageField(upload_to='photos/centre_sante', null=True, blank=True)
    
    def __str__(self):
        return self.name