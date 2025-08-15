from django.contrib import admin

# Register your models here.
from django.contrib import admin




from centre_sante.models import centre_sante

class Admincentre_sante(admin.ModelAdmin):
     list_display = ('nom','specialite','contact','image')
     search_fields = ('nom','specialite','contact','image')
     ordering = ('nom','specialite','contact','image')
     filter = ('nom','specialite','contact','image')
     list_filter = ('nom','specialite','contact','image')

admin.site.register(centre_sante, Admincentre_sante)
