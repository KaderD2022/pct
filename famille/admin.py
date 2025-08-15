from django.contrib import admin

# Register your models here.
from django.contrib import admin

# Register your models here.
from famille.models import Famille, Actualite, Centre_interet, Activite


class AdminFamille(admin.ModelAdmin):
     list_display = ('nom','nombre_de_menbre')
     search_fields = ('nom','nombre_de_menbre')
     ordering = ('nom','nombre_de_menbre')
     filter = ('nom','nombre_de_menbre')
     list_filter = ('nom','nombre_de_menbre')
    
    
class AdminActualite(admin.ModelAdmin):
     list_display = ('nom','contenu', 'image')
     search_fields = ('nom','contenu', 'image')
     ordering = ('nom','contenu', 'image')
     filter = ('nom','contenu', 'image')
     list_filter = ('nom','contenu', 'image')
    
class AdminCentre_interet(admin.ModelAdmin):
     list_display = ('nom','nom')
     search_fields = ('nom','nom')
     ordering = ('nom','nom')
     filter = ('nom','nom')
     list_filter = ('nom','nom')
    
    
class AdminActivite(admin.ModelAdmin):
     list_display = ('nom','nom')
     search_fields = ('nom','nom')
     ordering = ('nom','nom')
     filter = ('nom','nom')
     list_filter = ('nom','nom')
    
    
  

admin.site.register(Famille, AdminFamille)
admin.site.register(Actualite, AdminActualite)
admin.site.register(Centre_interet, AdminCentre_interet)
admin.site.register(Activite, AdminActivite)


