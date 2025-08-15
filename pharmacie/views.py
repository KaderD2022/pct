from django.shortcuts import render

# Create your views here.
from .models import Pharmacie
def pharmacy(request):
    pharmacys = Pharmacie.objects.all()
    return render(request, 'pharmacie/pharmacie.html', {'pharmacys': pharmacys})
def pharmacy_garde(request):
    pharmacys = Pharmacie.objects.all().filter(status=True)
    return render(request, 'pharmacie/pharmacie.html', {'pharmacys': pharmacys})