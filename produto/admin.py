from django.contrib import admin

from produto.models import Categorias, ListaProduto, Lojas, Produtos

admin.site.register(Categorias)
admin.site.register(ListaProduto)
admin.site.register(Lojas)
admin.site.register(Produtos)