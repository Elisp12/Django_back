from django.shortcuts import render

from produto.models import ListaProduto

def lista_produto(request):
    
    return render(request, 'index.html', context = {})
