from rest_framework import serializers
from .models import Agentinfo, Agentstats, Basestatsname, Constantmainstat, Constantsubstat, Discs, Element, Faction, Passivestat, Rolesubstat, Type, Wengine, WengineAgent, Wenginemainstats, Wenginesubstats
from .models import Agents, Discsinfo, Possiblepositionstat, Possiblestats, Possiblesubstats, Constantsubstats, Wengineinfo, Wengineagentinfo

class AgentinfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Agentinfo
        fields = '__all__'

class AgentstatsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Agentstats
        fields = '__all__'

class BasestatsnameSerializer(serializers.ModelSerializer):
    class Meta:
        model = Basestatsname
        fields = '__all__'

class ConstantmainstatSerializer(serializers.ModelSerializer):
    class Meta:
        model = Constantmainstat
        fields = '__all__'


class ConstantsubstatSerializer(serializers.ModelSerializer):
    class Meta:
        model = Constantsubstat
        fields = '__all__'


class DiscsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Discs
        fields = '__all__'

class ElementSerializer(serializers.ModelSerializer):
    class Meta:
        model = Element
        fields = '__all__'


class FactionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Faction
        fields = '__all__'


class PassivestatSerializer(serializers.ModelSerializer):
    class Meta:
        model = Passivestat
        fields = '__all__'


class RolesubstatSerializer(serializers.ModelSerializer):
    class Meta:
        model = Rolesubstat
        fields = '__all__'


class TypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Type
        fields = '__all__'


class WengineSerializer(serializers.ModelSerializer):
    class Meta:
        model = Wengine
        fields = '__all__'


class WengineAgentSerializer(serializers.ModelSerializer):
    class Meta:
        model = WengineAgent
        fields = '__all__'


class WenginemainstatsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Wenginemainstats
        fields = '__all__'

class WenginesubstatsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Wenginesubstats
        fields = '__all__'

class PossiblepositionstatSerializer(serializers.ModelSerializer):
    class Meta:
        model = Possiblepositionstat
        fields = '__all__'

class AgentsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Agents
        fields = '__all__'

class DiscsinfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Discsinfo
        fields = '__all__'

class PossiblestatsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Possiblestats
        fields = '__all__'

class PossiblesubstatsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Possiblesubstats
        fields = '__all__'

class ConstantsubstatsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Constantsubstats
        fields = '__all__'

class WengineinfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Wengineinfo
        fields = '__all__'

class WengineagentinfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Wengineagentinfo
        fields = '__all__'