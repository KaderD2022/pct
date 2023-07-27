from django.contrib import admin

from skill.models import Skill

# Register your models here.
class AdminSkill(admin.ModelAdmin):
    list_display = ('name','name')
    search_fields = ('name','name')
    ordering = ('name','name')
    filter = ('name','name')
    list_filter = ('name','name')


admin.site.register(Skill, AdminSkill)

