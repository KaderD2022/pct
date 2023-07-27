from django.contrib import admin

from metier.models import Job

# Register your models here.
class AdminJob(admin.ModelAdmin):
    list_display = ('name','sector', 'skill')
    search_fields = ('name','sector', 'skill')
    ordering = ('name','sector', 'skill')
    filter = ('name','sector', 'skill')
    list_filter = ('name','sector', 'skill')


admin.site.register(Job, AdminJob)

