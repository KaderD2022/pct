from django.shortcuts import render

# Create your views here.
from .models import Pharmacy
def pharmacy(request):
    pharmacys = Pharmacy.objects.all()
    return render(request, 'pharmacie/pharmacie.html', {'pharmacys': pharmacys})