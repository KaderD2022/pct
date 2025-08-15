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
    numero = models.CharField(max_length=255, blank=True, null=True)
    genre = models.CharField(choices=SEXE_CHOICES, max_length=255, blank=True, null=True)
    date_of_birth = models.DateField(auto_now=True, blank=True, null=True)
    place_of_birth = models.CharField(max_length=255, blank=True, null=True)
    image = models.ImageField(upload_to='photos/user', null=True, blank=True)
    metier = models.ForeignKey(Metier, on_delete=models.CASCADE,  blank=True, null=True)
    famille = models.ForeignKey(Famille, on_delete=models.CASCADE, blank=True, null=True)
    maladie = models.ManyToManyField(Maladie, related_name="maladies",  blank=True, null=True)
    competence = models.ManyToManyField( Competence, related_name="competence",   blank=True, null=True)
    pharmacie = models.ManyToManyField(Pharmacie, related_name="maladies",  blank=True, null=True)
    centre_sante = models.ManyToManyField( centre_sante, related_name="competence",   blank=True, null=True)
    amenager = models.ManyToManyField(Anemager, related_name="amenager",  blank=True, null=True)
    demenager = models.ManyToManyField(Denemager, related_name="demenager",   blank=True, null=True)
    
    def __str__(self):
        return self.username
    
    
