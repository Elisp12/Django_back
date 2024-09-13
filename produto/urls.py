from django.urls import path

from produto.views import *

urlpatterns = [
    path('', lista_produto, name='lista_produto'),
] 