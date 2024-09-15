from django.urls import path

from produto.views.lista_produto import *
from produto.views.categorias import categoria_id

urlpatterns = [
    path('', lista_produto, name='lista_produto'),
    path('categoria/<int:id>/', categoria_id, name='categoria_id'),
] 