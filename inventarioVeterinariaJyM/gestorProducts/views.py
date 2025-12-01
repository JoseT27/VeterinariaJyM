from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required, user_passes_test
from django.contrib import messages
from .models import Producto, Categoria
from .forms import ProductoForm, CategoriaForm

def is_admin(user):
    return user.is_superuser or user.is_staff


@login_required
@user_passes_test(is_admin)
def categoria_list(request):
    categorias = Categoria.objects.all()
    return render(request, 'gestorProducts/categoria_list.html', {'categorias': categorias})

@login_required
@user_passes_test(is_admin)
def categoria_create(request):
    if request.method == 'POST':
        form = CategoriaForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Categoría creada exitosamente.')
            return redirect('categoria_list')
    else:
        form = CategoriaForm()
    return render(request, 'gestorProducts/categoria_form.html', {'form': form, 'title': 'Crear Categoría'})

@login_required
@user_passes_test(is_admin)
def categoria_update(request, pk):
    categoria = get_object_or_404(Categoria, pk=pk)
    if request.method == 'POST':
        form = CategoriaForm(request.POST, instance=categoria)
        if form.is_valid():
            form.save()
            messages.success(request, 'Categoría actualizada exitosamente.')
            return redirect('categoria_list')
    else:
        form = CategoriaForm(instance=categoria)
    return render(request, 'gestorProducts/categoria_form.html', {'form': form, 'title': 'Editar Categoría'})

@login_required
@user_passes_test(is_admin)
def categoria_delete(request, pk):
    categoria = get_object_or_404(Categoria, pk=pk)
    if request.method == 'POST':
        categoria.delete()
        messages.success(request, 'Categoría eliminada exitosamente.')
        return redirect('categoria_list')
    return render(request, 'gestorProducts/categoria_confirm_delete.html', {'categoria': categoria})


@login_required
def producto_list(request):
    if is_admin(request.user):
        productos = Producto.objects.all()
    else:
        productos = Producto.objects.filter(usuario_creador=request.user)
    return render(request, 'gestorProducts/producto_list.html', {'productos': productos})

@login_required
def producto_create(request):
    if request.method == 'POST':
        form = ProductoForm(request.POST)
        if form.is_valid():
            producto = form.save(commit=False)
            producto.usuario_creador = request.user
            producto.save()
            messages.success(request, 'Producto creado exitosamente.')
            return redirect('producto_list')
    else:
        form = ProductoForm()
    return render(request, 'gestorProducts/producto_form.html', {'form': form, 'title': 'Crear Producto'})

@login_required
def producto_update(request, pk):
    producto = get_object_or_404(Producto, pk=pk)
    if not is_admin(request.user) and producto.usuario_creador != request.user:
        messages.error(request, 'No tienes permiso para editar este producto.')
        return redirect('producto_list')

    if request.method == 'POST':
        form = ProductoForm(request.POST, instance=producto)
        if form.is_valid():
            form.save()
            messages.success(request, 'Producto actualizado exitosamente.')
            return redirect('producto_list')
    else:
        form = ProductoForm(instance=producto)
    return render(request, 'gestorProducts/producto_form.html', {'form': form, 'title': 'Editar Producto'})

@login_required
def producto_delete(request, pk):
    if not is_admin(request.user):
        messages.error(request, 'No tienes permiso para eliminar productos.')
        return redirect('producto_list')

    producto = get_object_or_404(Producto, pk=pk)
    if request.method == 'POST':
        producto.delete()
        messages.success(request, 'Producto eliminado exitosamente.')
        return redirect('producto_list')
    return render(request, 'gestorProducts/producto_confirm_delete.html', {'producto': producto})
