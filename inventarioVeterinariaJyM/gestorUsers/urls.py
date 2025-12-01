from django.urls import path
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
    path('login/', auth_views.LoginView.as_view(template_name='gestorUsersApp/login.html'), name='login'),
    path('logout/', auth_views.LogoutView.as_view(next_page='home'), name='logout'),
    path('usuarios/', views.user_list, name='user_list'),
    path('usuarios/crear/', views.user_create, name='user_create'),
    path('usuarios/editar/<int:pk>/', views.user_update, name='user_update'),
    path('usuarios/eliminar/<int:pk>/', views.user_delete, name='user_delete'),
]
