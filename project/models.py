from django.db import models

# Create your models here.

class Project(models.Model):
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
    name = models.CharField(max_length=255)
    owner_project = models.CharField(choices=OWNER_CHOICES, max_length=255)
    type_project = models.CharField(choices=TYPE_CHOICES, max_length=255)
    content = models.CharField(max_length=10000)
    images = models.ImageField(null=True, blank=True, upload_to='photos/project')
    
    def __str__(self):
        return self.name