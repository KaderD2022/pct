from django.contrib import admin

# Register your models here.
from django.contrib import admin

from demande_emploie.models import demande_emploie, Offre_emploi

# Register your models here.
class Admindemande_emploie(admin.ModelAdmin):
    list_display = ('nom','prenom', 'niveau_etude', 'dernier_diplome', 'metier')
    search_fields = ('nom','prenom', 'niveau_etude', 'dernier_diplome', 'metier')
    ordering = ('nom','prenom', 'niveau_etude', 'dernier_diplome', 'metier')
    filter = ('nom','prenom', 'niveau_etude', 'dernier_diplome', 'metier')
    list_filter = ('nom','prenom', 'niveau_etude', 'dernier_diplome', 'metier')

admin.site.register(demande_emploie, Admindemande_emploie)
admin.site.register(Offre_emploi)

