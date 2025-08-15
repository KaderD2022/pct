from django.shortcuts import render

# Create your views here.
from .models import Metier
def order(request):
    orders = Metier.objects.all()
    return render(request, 'metier/metier.html', {'orders': orders})