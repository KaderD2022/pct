from django.contrib import admin

# Register your models here.


from pharmacie.models import Pharmacy

class AdminpPharmacy(admin.ModelAdmin):
     list_display = ('name','location','number_pharmacy','on_call_period', 'start_date', 'end_date','Pharmacist_holder','image')
     search_fields = ('name', 'Pharmacist_holder')
     ordering = ('name', 'Pharmacist_holder')
     filter = ('name', 'Pharmacist_holder')
     list_filter = ('name','Pharmacist_holder')

admin.site.register(Pharmacy, AdminpPharmacy)
