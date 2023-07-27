from django.contrib import admin

# Register your models here.
from django.contrib import admin

from announcement.models import Announcement
from demande_emploie.models import demande_emploie

# Register your models here.
class Admindemande_emploie(admin.ModelAdmin):
    list_display = ('first_name','last_name', 'niveau_etude', 'dernier_diplome', 'domaine')
    search_fields = ('first_name', 'domaine')
    ordering = ('first_name', 'domaine')
    filter = ('first_name', 'domaine')
    list_filter = ('first_name', 'domaine')

admin.site.register(demande_emploie, Admindemande_emploie)

