from django.urls import path

from produto.views.lista_produto import *
from produto.views.categorias import categoria_id
from produto.views.loja import lista_loja
from produto.views.lista_categoria import lista_categoria

urlpatterns = [
    path('', lista_produto, name='lista_produto'),
    path('categoria/<int:id>/', categoria_id, name='categoria_id'),
    path('loja/', lista_loja, name='lista_loja'),
    path('lista/categoria', lista_categoria, name='lista_categoria')
] 