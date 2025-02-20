from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status

from .models import Basestatsname, Element, Type, Faction, Agents, Agentinfo, Agentstats, Discsinfo, Passivestat, Discs, Possiblestats, Possiblesubstats, Constantsubstats, Wengineinfo, Wengineagentinfo, Wengine, Wenginemainstats, Wenginesubstats, Colors
from .serializer import BasestatsnameSerializer, ElementSerializer, TypeSerializer, FactionSerializer, AgentsSerializer, AgentstatsSerializer, AgentinfoSerializer, DiscsinfoSerializer, PassivestatSerializer, DiscsSerializer, PossiblestatsSerializer, PossiblesubstatsSerializer, ConstantsubstatsSerializer, WengineinfoSerializer, WengineagentinfoSerializer, WengineSerializer, WenginemainstatsSerializer, WenginesubstatsSerializer, ColorsSerializer

# Create your views here.

@api_view(['GET'])
def index(request):
    return Response(status=status.HTTP_204_NO_CONTENT)

@api_view(['GET'])
def GetStatsName(request):
    table = Basestatsname.objects.all()
    serializer = BasestatsnameSerializer(table, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def GetElements(request):
    table = Element.objects.all()
    serializer = ElementSerializer(table, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def GetTypes(request):
    table = Type.objects.all()
    serializer = TypeSerializer(table, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def GetFactions(request):
    table = Faction.objects.all()
    serializer = FactionSerializer(table, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def GetAgents(request):
    table = Agents.objects.all()
    serializer = AgentsSerializer(table, many=True)
    return Response(serializer.data)

@api_view(['GET', 'POST'])
def PostAgentInfo(request):
    if request.method == "GET":
        table = Agentinfo.objects.all()
        serializer = AgentinfoSerializer(table, many=True)
        return Response(serializer.data)
    if request.method == "POST":
        serializer = AgentinfoSerializer(data=request.data)    
        if serializer:
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'POST'])
def PostAgentStats(request):
    if request.method == "GET":
        table = Agentstats.objects.all()
        serializer = AgentstatsSerializer(table, many=True)
        return Response(serializer.data)
    if request.method == "POST":
        serializer = AgentstatsSerializer(data=request.data)    
        if serializer:
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def GetDiscsInfo(request):
    table = Discsinfo.objects.all()
    serializer = DiscsinfoSerializer(table, many=True)
    return Response(serializer.data)

@api_view(['GET', 'POST'])
def PostPassiveStatDisc(request):
    if request.method == "GET":
        table = Passivestat.objects.all()
        serializer = PassivestatSerializer(table, many=True)
        return Response(serializer.data)
    if request.method == "POST":
        serializer = PassivestatSerializer(data=request.data)    
        if serializer:
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'POST'])
def PostInfoDisc(request):
    if request.method == "GET":
        table = Discs.objects.all()
        serializer = DiscsSerializer(table, many=True)
        return Response(serializer.data)
    if request.method == "POST":
        serializer = DiscsSerializer(data=request.data)    
        if serializer:
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def GetPossibleStats(request):
    if request.method == "GET":
        table = Possiblestats.objects.all()
        serializer = PossiblestatsSerializer(table, many=True)
        return Response(serializer.data)
    
@api_view(['GET'])
def GetPossibleSubStats(request):
    if request.method == "GET":
        table = Possiblesubstats.objects.all()
        serializer = PossiblesubstatsSerializer(table, many=True)
        return Response(serializer.data)
    
@api_view(['GET'])
def GetConstantSubStats(request):
    if request.method == "GET":
        table = Constantsubstats.objects.all()
        serializer = ConstantsubstatsSerializer(table, many=True)
        return Response(serializer.data)
    
@api_view(['GET'])
def GetWengineInfo(request):
    if request.method == "GET":
        table = Wengineinfo.objects.all()
        serializer = WengineinfoSerializer(table, many=True)
        return Response(serializer.data)
    
@api_view(['GET'])
def GetWengineAgentInfo(request):
    if request.method == "GET":
        table = Wengineagentinfo.objects.all()
        serializer = WengineagentinfoSerializer(table, many=True)
        return Response(serializer.data)
    

@api_view(['GET', 'POST'])
def PostWengineMainStat(request):
    if request.method == "GET":
        table = Wenginemainstats.objects.all()
        serializer = WenginemainstatsSerializer(table, many=True)
        return Response(serializer.data)
    if request.method == "POST":
        serializer = WenginemainstatsSerializer(data=request.data)    
        if serializer:
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data, status=status.HTTP_201_CREATED)

@api_view(['GET', 'POST'])
def PostWengineSubStat(request):
    if request.method == "GET":
        table = Wenginesubstats.objects.all()
        serializer = WenginesubstatsSerializer(table, many=True)
        return Response(serializer.data)
    if request.method == "POST":
        serializer = WenginesubstatsSerializer(data=request.data)    
        if serializer:
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data, status=status.HTTP_201_CREATED)

@api_view(['GET', 'POST'])
def PostWengine(request):
    if request.method == "GET":
        table = Wengine.objects.all()
        serializer = WengineSerializer(table, many=True)
        return Response(serializer.data)
    if request.method == "POST":
        serializer = WengineSerializer(data=request.data)    
        if serializer:
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data, status=status.HTTP_201_CREATED)
            
@api_view(['GET'])
def GetWengineInfoById(request, pk):
    if request.method == "GET":
        table = Wengineinfo.objects.filter(id=pk)
        serializer = WengineinfoSerializer(table, many=True)
        return Response(serializer.data)
    

@api_view(['GET'])
def GetColors(request):
    if request.method == "GET":
        table = Colors.objects.all()
        serializer = ColorsSerializer(table, many=True)
        return Response(serializer.data)