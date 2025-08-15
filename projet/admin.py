from django.contrib import admin

from projet.models import Projet

# Register your models here.
class AdminProjet(admin.ModelAdmin):
    list_display = ('nom','initiateur', 'type_project', 'description')
    search_fields = ('nom','initiateur', 'type_project', 'description')
    ordering = ('nom','initiateur', 'type_project', 'description')
    filter = ('nom','initiateur', 'type_project', 'description')
    list_filter = ('nom','initiateur', 'type_project', 'description')

admin.site.register(Projet, AdminProjet)
