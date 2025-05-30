from django.conf import settings
from django.contrib import admin
from django.urls import include, path
from django.conf.urls.static import static

from web import views

urlpatterns = [
    path('', views.index),
    path('settings', views.settings),
    path('editor', views.imageEditor),

    path('add/agent', views.addAgent),
    path('add/disc', views.addDisc),
    path('add/wengine', views.addWengine),
    path('import/json', views.importJSON),
]