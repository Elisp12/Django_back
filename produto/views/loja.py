from django.shortcuts import render

from produto.models import Lojas

def lista_loja(request):
    
    lista = Lojas.objects.all().order_by()

    context = {
        'lista_loja': lista
    }
    return render(request, 'loja/lista_loja.html', context = context)