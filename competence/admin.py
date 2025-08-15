from django.contrib import admin

from competence.models import Competence

# Register your models here.
class AdminCompetence(admin.ModelAdmin):
    list_display = ('nom','nom')
    search_fields = ('nom','nom')
    ordering = ('nom','nom')
    filter = ('nom','nom')
    list_filter = ('nom','nom')


admin.site.register(Competence, AdminCompetence)

