from django.shortcuts import render

from produto.models import Produtos

def categoria_id(request, id):
    
    lista = Produtos.objects.filter(id_categoria = id).all()
    print(lista)
    
    context = {
        'produto_categoria': lista
    }
    return render(request, 'categoria/produto_categoria.html', context = context)