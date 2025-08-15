from django.shortcuts import render

# Create your views here.
from deplacement.models import Anemager, Denemager
from django.contrib.auth.decorators import login_required

# Create your views here.
@login_required
def deplacement(request):
    finisheds = Anemager.objects.all()
    moveds = Denemager.objects.all()
    return render(request, 'deplacement/finish.html', {'finisheds': finisheds, 'moveds': moveds}) 
    
from django.shortcuts import get_object_or_404, redirect

def passer_anemager_a_denemager(request, anemager_id):
    anemager = get_object_or_404(Anemager, pk=anemager_id)
    Denemager.objects.create(
        nom=anemager.nom,
        genre=anemager.genre,
        fonction=anemager.fonction,
        lieu_habitation=anemager.lieu_habitation,
        date_de_naissance=anemager.date_de_naissance,
        famille=anemager.famille,
        status=anemager.status
    )
    anemager.delete()
    return redirect('admin:deplacement_anemager_changelist')
@login_required
def annulle_anemager(request, amager_id):
    anemager = Anemager.objects.get(id=amager_id)
    anemager.annullation()
    anemager.save()
    return redirect("dj-admin/deplacement/denemager/", pk=anemager.pk)
 