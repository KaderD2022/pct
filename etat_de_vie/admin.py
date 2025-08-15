from django.contrib import admin

# Register your models here.
from etat_de_vie.models import Naissance, Deces


class AdminNaissance(admin.ModelAdmin):
     list_display = ('nom','genre','date_de_naissance','lieu_dela_naissance', 'nom_du_pere', 'nom_dela_mere', 'lieu_habitation')
     search_fields = ('nom','genre','date_de_naissance','lieu_dela_naissance', 'nom_du_pere', 'nom_dela_mere', 'lieu_habitation')
     ordering = ('nom','genre','date_de_naissance','lieu_dela_naissance', 'nom_du_pere', 'nom_dela_mere', 'lieu_habitation')
     filter = ('nom','genre','date_de_naissance','lieu_dela_naissance', 'nom_du_pere', 'nom_dela_mere', 'lieu_habitation')
     list_filter = ('nom','genre','date_de_naissance','lieu_dela_naissance', 'nom_du_pere', 'nom_dela_mere', 'lieu_habitation')
    
    
     
class AdminDeces(admin.ModelAdmin):
        
    list_display = ('nom','genre','date_de_naissance','date_de_deces','lieu_ode_deces',  'raison_du_deces', 'nom_du_pere', 'nom_dela_mere', 'lieu_habitatio')
    search_fields = ('nom','genre','date_de_naissance','date_de_deces','lieu_ode_deces',  'raison_du_deces', 'nom_du_pere', 'nom_dela_mere', 'lieu_habitation')
    ordering = ('nom','genre','date_de_naissance','date_de_deces','lieu_ode_deces',  'raison_du_deces', 'nom_du_pere', 'nom_dela_mere', 'lieu_habitation')
    filter = ('nom','genre','date_de_naissance','date_de_deces','lieu_ode_deces',  'raison_du_deces', 'nom_du_pere', 'nom_dela_mere', 'lieu_habitation')
    list_filter = ('nom','genre','date_de_naissance','date_de_deces','lieu_ode_deces',  'raison_du_deces', 'nom_du_pere', 'nom_dela_mere', 'lieu_habitation')


    admin.site.register(Naissance, AdminNaissance)
    admin.site.register(Deces)

