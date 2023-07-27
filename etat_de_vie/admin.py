from django.contrib import admin

# Register your models here.
from etat_de_vie.models import Birth, Death


class AdminBirth(admin.ModelAdmin):
     list_display = ('name','gender','date_of_birth','way_of_birth', 'name_of_father', 'name_of_mother', 'dwelling_place')
     search_fields = ('name','gender','date_of_birth','way_of_birth', 'name_of_father', 'name_of_mother', 'dwelling_place')
     ordering = ('name','gender','date_of_birth','way_of_birth', 'name_of_father', 'name_of_mother', 'dwelling_place')
     filter = ('name','gender','date_of_birth','way_of_birth', 'name_of_father', 'name_of_mother', 'dwelling_place')
     list_filter = ('name','gender','date_of_birth','way_of_birth', 'name_of_father', 'name_of_mother', 'dwelling_place')
    
    
     
class AdminDeath(admin.ModelAdmin):
     list_display = ('name','gender','date_of_birth','date_of_death','way_of_birth', 'way_of_birth', 'reason_of_death', 'name_of_father', 'name_of_mother', 'dwelling_place')
     search_fields = ('name','gender','date_of_birth','date_of_death','way_of_birth', 'way_of_birth', 'reason_of_death', 'name_of_father', 'name_of_mother', 'dwelling_place')
     ordering = ('name','gender','date_of_birth','date_of_death','way_of_birth', 'way_of_birth', 'reason_of_death', 'name_of_father', 'name_of_mother', 'dwelling_place')
     filter = ('name','gender','date_of_birth','date_of_death','way_of_birth', 'way_of_birth', 'reason_of_death', 'name_of_father', 'name_of_mother', 'dwelling_place')
     list_filter = ('name','gender','date_of_birth','date_of_death','way_of_birth', 'way_of_birth', 'reason_of_death', 'name_of_father', 'name_of_mother', 'dwelling_place')
     


admin.site.register(Birth, AdminBirth)
admin.site.register(Death, AdminDeath)

