from django.db import models
from django.contrib.auth.models import AbstractUser
from deplacement.models import Anemager, Denemager
from famille.models import Famille

from metier.models import Metier
from maladies.models import Maladie
from competence.models import Competence
from pharmacie.models import Pharmacie
from centre_sante.models import centre_sante
# Create your models here.

class Habitant(AbstractUser):
    
    SEXE_CHOICES = (
        ('masculin', 'Masculin'),
        ('féminin', 'Féminin'),

    )
    numero = models.CharField(max_length=255, blank=True)
    genre = models.CharField(choices=SEXE_CHOICES, max_length=255, blank=True)
    date_of_birth = models.DateField(auto_now=True, blank=True, null=True)
    place_of_birth = models.CharField(max_length=255, blank=True)
    image = models.ImageField(upload_to='photos/user',  blank=True)
    metier = models.ForeignKey(Metier, on_delete=models.CASCADE,  blank=True)
    famille = models.ForeignKey(Famille, on_delete=models.CASCADE, blank=True)
    maladie = models.ManyToManyField(Maladie, related_name="maladies",  blank=True)
    competence = models.ManyToManyField( Competence, related_name="competence",   blank=True)
    pharmacie = models.ManyToManyField(Pharmacie, related_name="maladies",  blank=True)
    centre_sante = models.ManyToManyField( centre_sante, related_name="competence",   blank=True)
    amenager = models.ManyToManyField(Anemager, related_name="amenager",  blank=True)
    demenager = models.ManyToManyField(Denemager, related_name="demenager",   blank=True)
    
    def __str__(self):
        return self.username
    
    
