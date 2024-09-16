from django.shortcuts import render

from produto.models import Categorias

def lista_categoria(request):
    
    lista = Categorias.objects.all().order_by()
    
    context = {
        'lista_categoria': lista
    }
    
    return render(request, 'categoria/lista_categoria.html', context = context)