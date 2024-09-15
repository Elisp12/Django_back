from django.shortcuts import render

from produto.models import ListaProduto, Produtos

def lista_produto(request):
    lista = ListaProduto.objects.order_by().filter(is_ativo = True).values('nome', 'descricao', 'preco', 'is_ativo').distinct()
    
    context = {
        'lista_produto': lista
    }
    return render(request, 'index.html', context = context)
