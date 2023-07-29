from django.db import models

# Create your models here.
class demande_emploie(models.Model):
    NIVEAU_CHOICES = (
        ('aucun', 'Aucun'),
        ('primaire', 'Primaire'),
        ('secndaire', 'Secondaire'),
        ('BAC + 1', 'BAC + 1'),
        ('BAC + 2', 'BAC + 2'),
        ('licence', 'Licence'),
        ('maitrise', 'Maitrise'),
        ('master', 'Master'),
    )
    DERNIER_CHOICES = (
        ('aucun', 'AUCUN'),
        ('cep', 'CEP'),
        ('primaire', 'BEPC'),
        ('secndaire', 'BAC'),
        ('BAC + 1', 'BAC + 1'),
        ('BAC + 2', 'BAC + 2'),
        ('licence', 'Licence'),
        ('maitrise', 'Maitrise'),
        ('master', 'Master'),
    )
    first_name = models.CharField(max_length=255, null=True, blank=True)
    last_name = models.CharField(max_length=255, null=True, blank=True)
    niveau_etude  = models.CharField(choices=NIVEAU_CHOICES, max_length=20, default="aucun", null=True, blank=True)
    dernier_diplome  = models.CharField(choices=DERNIER_CHOICES, max_length=20, default="aucun", null=True, blank=True)
    domaine = models.CharField(max_length=255, null=True, blank=True)
    skill = models.CharField(max_length=1000, null=True, blank=True)
    number = models.CharField(max_length=50, null=True, blank=True)
    domaine = models.CharField(max_length=255, null=True, blank=True)
    image = models.ImageField(upload_to='photos/demande_emploie', null=True, blank=True)
    content = models.TextField(max_length=255, null=True, blank=True)
    
    def __str__(self):
        return self.first_name
    
    
    

    
    