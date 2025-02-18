from django.conf import settings
from django.contrib import admin
from django.urls import include, path
from django.conf.urls.static import static

from api import views

urlpatterns = [
    path('test/', views.index),

    #Agents
    path('agents/', views.GetAgents),
    path('agents/stats/', views.PostAgentStats),
    path('agents/info/', views.PostAgentInfo),
    
    #WEngines
    path('wengines/', views.GetWengineInfo),
    path('wengines/<int:pk>', views.GetWengineInfoById),
    path('wengines/agent', views.GetWengineAgentInfo),
    path('wengine/', views.PostWengine),
    path('wengine/main', views.PostWengineMainStat),
    path('wengine/sub', views.PostWengineSubStat),

    #Discs
    path('discs/', views.GetDiscsInfo),
    path('discs/passive/', views.PostPassiveStatDisc),
    path('discs/info/', views.PostInfoDisc),
    
    #Stats
    path('stats/', views.GetStatsName),
    path('stats/possible', views.GetPossibleStats),
    path('stats/sub/possible', views.GetPossibleSubStats),
    path('stats/sub/constant', views.GetConstantSubStats),

    #Elements
    path('elements/', views.GetElements),
    path('types/', views.GetTypes),

    #Factions
    path('factions/', views.GetFactions),
]