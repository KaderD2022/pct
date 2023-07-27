from django.shortcuts import render

# Create your views here.
from django.shortcuts import render

# Create your views here.
from .models import Health_center
def center(request):
    centers = Health_center.objects.all()
    return render(request, 'centre_sante/centre_sante.html', {'centers': centers})