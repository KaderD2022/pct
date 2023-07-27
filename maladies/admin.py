from django.contrib import admin

# Register your models here.
from maladies.models import epidemie, Disease

class Adminepidemie(admin.ModelAdmin):
     list_display = ('name','symptoms','traitements','date_debut', 'date_fin', 'nombre_cas', 'nombre_mort')
     search_fields = ('name','symptoms','traitements','date_debut', 'date_fin', 'nombre_cas', 'nombre_mort')
     ordering = ('name','symptoms','traitements','date_debut', 'date_fin', 'nombre_cas', 'nombre_mort')
     filter = ('name','symptoms','traitements','date_debut', 'date_fin', 'nombre_cas', 'nombre_mort')
     list_filter = ('name','symptoms','traitements','date_debut', 'date_fin', 'nombre_cas', 'nombre_mort')
     
class AdminDisease(admin.ModelAdmin):
     list_display = ('name','symptoms','traitements')
     search_fields = ('name','symptoms','traitements')
     ordering = ('name','symptoms','traitements')
     filter = ('name','symptoms','traitements')
     list_filter = ('name','symptoms','traitements')

admin.site.register(epidemie, Adminepidemie)
admin.site.register(Disease, AdminDisease)
