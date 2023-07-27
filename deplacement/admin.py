from django.contrib import admin

# Register your models here.
from deplacement.models import Finished, Moved


class AdminFinished(admin.ModelAdmin):
     list_display = ('name','gender', 'function' ,'date_of_birth', 'Type_of_accommodation_on_arrival', 'origin', 'name_of_father', 'name_of_mother', 'dwelling_place')
     search_fields = ('name','gender','date_of_birth', 'Type_of_accommodation_on_arrival', 'origin', 'name_of_father', 'name_of_mother', 'dwelling_place')
     ordering = ('name','gender','date_of_birth', 'Type_of_accommodation_on_arrival', 'origin', 'name_of_father', 'name_of_mother', 'dwelling_place')
     filter = ('name','gender','date_of_birth', 'Type_of_accommodation_on_arrival', 'origin', 'name_of_father', 'name_of_mother', 'dwelling_place')
     list_filter = ('name','gender','date_of_birth', 'Type_of_accommodation_on_arrival', 'origin', 'name_of_father', 'name_of_mother', 'dwelling_place')
    
    
     
class AdminMoved(admin.ModelAdmin):
     list_display = ('name','gender',  'function' ,'dwelling_place' ,'date_of_birth',  'New_destination')
     search_fields = ('name','gender',  'function' ,'dwelling_place' ,'date_of_birth',  'New_destination')
     ordering = ('name','gender',  'function' ,'dwelling_place' ,'date_of_birth',  'New_destination')
     filter = ('name','gender',  'function' ,'dwelling_place' ,'date_of_birth',  'New_destination')
     list_filter = ('name','gender',  'function' ,'dwelling_place' ,'date_of_birth',  'New_destination')
     


admin.site.register(Finished, AdminFinished)
admin.site.register(Moved, AdminMoved)