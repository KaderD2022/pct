from django.contrib import admin

from project.models import Project

# Register your models here.
class AdminProject(admin.ModelAdmin):
    list_display = ('name','owner_project', 'type_project', 'content')
    search_fields = ('name','owner_project', 'type_project', 'content')
    ordering = ('name','owner_project', 'type_project', 'content')
    filter = ('name','owner_project', 'type_project', 'content')
    list_filter = ('name','owner_project', 'type_project', 'content')

admin.site.register(Project, AdminProject)
