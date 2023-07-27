from django.contrib import admin

# Register your models here.
from django.contrib import admin

# Register your models here.


from centre_sante.models import Health_center

class AdminHealth_center(admin.ModelAdmin):
     list_display = ('name','specialite','contact','image')
     search_fields = ('name','specialite','contact','image')
     ordering = ('name','specialite','contact','image')
     filter = ('name','specialite','contact','image')
     list_filter = ('name','specialite','contact','image')

admin.site.register(Health_center, AdminHealth_center)
