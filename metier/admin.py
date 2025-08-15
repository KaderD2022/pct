from django.contrib import admin

from metier.models import Metier

# Register your models here.
class AdminMetier(admin.ModelAdmin):
    list_display = ('nom','secteur')
    search_fields = ('nom','secteur')
    ordering = ('nom','secteur')
    filter = ('nom','secteur')
    list_filter = ('nom','secteur')


admin.site.register(Metier, AdminMetier)

