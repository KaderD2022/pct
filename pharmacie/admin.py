from django.contrib import admin

# Register your models here.


from pharmacie.models import Pharmacie

class AdminpPharmacie(admin.ModelAdmin):
    list_display = ('nom','localisation','numero_pharmacie','period_garde', 'date_debut', 'date_fin','Pharmacien_tituleur','image')
    search_fields = ('nom','localisation','numero_pharmacie','period_garde', 'date_debut', 'date_fin','Pharmacien_tituleur','image')
    ordering = ('nom','localisation','numero_pharmacie','period_garde', 'date_debut', 'date_fin','Pharmacien_tituleur','image')
    filter = ('nom','localisation','numero_pharmacie','period_garde', 'date_debut', 'date_fin','Pharmacien_tituleur','image')
    list_filter = ('nom','localisation','numero_pharmacie','period_garde', 'date_debut', 'date_fin','Pharmacien_tituleur','image')

admin.site.register(Pharmacie, AdminpPharmacie)
