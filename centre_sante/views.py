from django.shortcuts import render

# Create your views here.
from django.shortcuts import render

# Create your views here.
from .models import centre_sante
def center(request):
    centers = centre_sante.objects.all()
    return render(request, 'centre_sante/centre_sante.html', {'centers': centers})