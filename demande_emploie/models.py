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
    nom = models.CharField(max_length=255, null=True, blank=True)
    prenom = models.CharField(max_length=255, null=True, blank=True)
    niveau_etude  = models.CharField(choices=NIVEAU_CHOICES, max_length=20, default="aucun", null=True, blank=True)
    dernier_diplome  = models.CharField(choices=DERNIER_CHOICES, max_length=20, default="aucun", null=True, blank=True)

    competence = models.CharField(max_length=1000, null=True, blank=True)
    numero = models.CharField(max_length=50, null=True, blank=True)
    metier = models.CharField(max_length=255, null=True, blank=True)
    image = models.ImageField(upload_to='photos/demande_emploie', null=True, blank=True)
    email = models.EmailField(max_length=500, null=True, blank=True)
    contenu = models.TextField(max_length=255, null=True, blank=True)
    
    def __str__(self):
        return self.prenom
    
    
    
class Offre_emploi(models.Model):
    DIPLOME_CHOICES = (
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
    CONTRAT_CHOICES = (
        ('CDD', 'CDD'),
        ('CDI', 'CDI'),

    )
        
    titre_du_poste = models.CharField(max_length=255)
    deescription = models.CharField(max_length=255)
    diplome_requis  = models.CharField(choices=DIPLOME_CHOICES, max_length=20, default="aucun",)
    employeur = models.CharField(max_length=255) 
    type_de_contrat = models.CharField(choices=CONTRAT_CHOICES, max_length=20, default="CDD",)
    lieu = models.CharField(max_length=255)
    competence_requis = models.CharField(max_length=500)
    salaire =  models.CharField(max_length=1000)
    date_de_publication = models.DateField()
    date_limite = models.DateField()
    
        
    def __str__(self):
        return self.titre_du_poste