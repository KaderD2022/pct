from django.contrib import admin

# Register your models here.
from maladies.models import Maladie, Epidemie

class AdminEpidemie(admin.ModelAdmin):
     list_display = ('nom','symptoms','traitements','date_debut', 'date_fin', 'nombre_cas', 'nombre_mort')
     search_fields = ('nom','symptoms','traitements','date_debut', 'date_fin', 'nombre_cas', 'nombre_mort')
     ordering = ('nom','symptoms','traitements','date_debut', 'date_fin', 'nombre_cas', 'nombre_mort')
     filter = ('nom','symptoms','traitements','date_debut', 'date_fin', 'nombre_cas', 'nombre_mort')
     list_filter = ('nom','symptoms','traitements','date_debut', 'date_fin', 'nombre_cas', 'nombre_mort')
     
class AdminMaladie(admin.ModelAdmin):
     list_display = ('nom','symptoms','traitements')
     search_fields = ('nom','symptoms','traitements')
     ordering = ('nom','symptoms','traitements')
     filter = ('nom','symptoms','traitements')
     list_filter = ('nom','symptoms','traitements')

admin.site.register(Epidemie, AdminEpidemie)
admin.site.register(Maladie, AdminMaladie)
