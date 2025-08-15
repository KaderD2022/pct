from django.contrib import admin
from django.urls import path
from django.shortcuts import redirect
from django.contrib import admin
from django.urls import reverse
from django.utils.html import format_html
from django.urls import reverse
from django.shortcuts import redirect
from django.contrib import admin
# Register your models here.
from deplacement.models import Anemager, Denemager
from django.urls import reverse
from django.shortcuts import redirect
from django.contrib import admin









# class AdminAnemager(admin.ModelAdmin):
#      list_display = ('nom','genre', 'fonction' ,'date_de_naissance', 'Type_of_accommodation_on_arrival', 'origine', 'nom_du_pere', 'nom_de_mere', 'lieu_habitation')
#      search_fields = ('nom','genre', 'fonction' ,'date_de_naissance', 'Type_of_accommodation_on_arrival', 'origine', 'nom_du_pere', 'nom_de_mere', 'lieu_habitation')
#      ordering = ('nom','genre', 'fonction' ,'date_de_naissance', 'Type_of_accommodation_on_arrival', 'origine', 'nom_du_pere', 'nom_de_mere', 'lieu_habitation')
#      filter = ('nom','genre', 'fonction' ,'date_de_naissance', 'Type_of_accommodation_on_arrival', 'origine', 'nom_du_pere', 'nom_de_mere','lieu_habitation')
#      list_filter = ('nom','genre', 'fonction' ,'date_de_naissance', 'Type_of_accommodation_on_arrival', 'origine', 'nom_du_pere', 'nom_de_mere', 'lieu_habitation', 'famille')
    
     
class AdminDenemager(admin.ModelAdmin):
     list_display = ('nom','genre',  'fonction' ,'lieu_habitation' ,'date_de_naissance',  'nouvelle_destination', 'famille')
     search_fields = ('nom','genre',  'fonction' ,'lieu_habitation' ,'date_de_naissance',  'nouvelle_destination', 'famille')
     ordering = ('nom','genre',  'fonction' ,'lieu_habitation' ,'date_de_naissance',  'nouvelle_destination', 'famille')
     filter = ('nom','genre',  'fonction' ,'lieu_habitation' ,'date_de_naissance',  'nouvelle_destination', 'famille')
     list_filter = ('nom','genre',  'fonction' ,'lieu_habitation' ,'date_de_naissance',  'nouvelle_destination', 'famille')
     



class AnemagerAdmin(admin.ModelAdmin):
    # Définissez les champs à afficher dans l'interface d'administration
    list_display = ('nom','genre', 'fonction' ,'date_de_naissance', 'Type_of_accommodation_on_arrival', 'origine', 'nom_du_pere', 'nom_de_mere', 'lieu_habitation')

    # Ajoutez une méthode pour votre bouton personnalisé
    def bouton_personnalise(self, obj):
        return '<a href="/admin/deplacement/Anemager/{}/modifier/">Mon Bouton</a>'.format(obj.id)
    bouton_personnalise.short_description = "Action personnalisée"

# Enregistrez votre modèle avec la classe d'administration personnalisée
admin.site.register(Anemager, AnemagerAdmin)


# admin.site.register(Anemager, AdminAnemager)
admin.site.register(Denemager, AdminDenemager)



