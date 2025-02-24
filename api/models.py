from django.db import models


class Agentinfo(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    nickname = models.CharField(max_length=255, blank=True, null=True)
    tier = models.CharField(max_length=1, blank=True, null=True)
    faction = models.ForeignKey('Faction', models.DO_NOTHING, blank=True, null=True)
    element = models.ForeignKey('Element', models.DO_NOTHING, blank=True, null=True)
    type = models.ForeignKey('Type', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'agentinfo'


class AgentsStatsPerLevel(models.Model):
    promotion_level = models.CharField(max_length=1, blank=True, null=True)
    agent_level = models.CharField(max_length=2, blank=True, null=True)
    stats = models.ForeignKey('Agentstats', models.DO_NOTHING, blank=True, null=True)
    agent = models.ForeignKey(Agentinfo, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'agents_stats_per_level'


class Agentstats(models.Model):
    health_point = models.IntegerField(blank=True, null=True)
    attack = models.IntegerField(blank=True, null=True)
    defense = models.IntegerField(blank=True, null=True)
    impact = models.IntegerField(blank=True, null=True)
    crit_rate = models.FloatField(blank=True, null=True)
    crit_damage = models.FloatField(blank=True, null=True)
    anomaly_mastery = models.IntegerField(blank=True, null=True)
    anomaly_proficiency = models.IntegerField(blank=True, null=True)
    penetration_ratio = models.FloatField(blank=True, null=True)
    penetration = models.FloatField(blank=True, null=True)
    energy_regen = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'agentstats'


class Basestatsname(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    type = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'basestatsname'


class Colors(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    light_color = models.CharField(max_length=12, blank=True, null=True)
    light_gradient = models.CharField(max_length=12, blank=True, null=True)
    dark_gradient = models.CharField(max_length=12, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'colors'


class Constantmainstat(models.Model):
    statname = models.ForeignKey(Basestatsname, models.DO_NOTHING, blank=True, null=True)
    value = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'constantmainstat'


class Constantsubstat(models.Model):
    statname = models.ForeignKey(Basestatsname, models.DO_NOTHING, blank=True, null=True)
    value = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'constantsubstat'


class Discs(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    passive_stat = models.ForeignKey('Passivestat', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'discs'


class Element(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'element'


class Faction(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'faction'


class Passivestat(models.Model):
    statname = models.ForeignKey(Basestatsname, models.DO_NOTHING, blank=True, null=True)
    value = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'passivestat'


class Possiblepositionstat(models.Model):
    position = models.IntegerField(blank=True, null=True)
    statname = models.ForeignKey(Basestatsname, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'possiblepositionstat'


class Possiblesubstat(models.Model):
    statname = models.ForeignKey(Basestatsname, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'possiblesubstat'


class Type(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'type'


class Wengine(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    tier = models.CharField(max_length=1, blank=True, null=True)
    type = models.ForeignKey(Type, models.DO_NOTHING, blank=True, null=True)
    stat = models.ForeignKey('Wenginemainstats', models.DO_NOTHING, blank=True, null=True)
    substat = models.ForeignKey('Wenginesubstats', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'wengine'


class WengineAgent(models.Model):
    wengine = models.ForeignKey(Wengine, models.DO_NOTHING, blank=True, null=True)
    agent = models.ForeignKey(Agentinfo, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'wengine_agent'


class Wenginemainstats(models.Model):
    statname = models.ForeignKey(Basestatsname, models.DO_NOTHING, blank=True, null=True)
    value = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'wenginemainstats'


class Wenginesubstats(models.Model):
    statname = models.ForeignKey(Basestatsname, models.DO_NOTHING, blank=True, null=True)
    value = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'wenginesubstats'


"""

VIEWS

"""


class Agents(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    nickname = models.CharField(max_length=255, blank=True, null=True)
    tier = models.CharField(max_length=1, blank=True, null=True)
    
    faction = models.CharField(max_length=255, blank=True, null=True)
    element = models.CharField(max_length=255, blank=True, null=True)
    type = models.CharField(max_length=255, blank=True, null=True)

    promotion_level = models.CharField(max_length=1, blank=True, null=True)
    agent_level = models.CharField(max_length=2, blank=True, null=True)
    
    health_point = models.IntegerField(blank=True, null=True)
    attack = models.IntegerField(blank=True, null=True)
    defense = models.IntegerField(blank=True, null=True)
    impact = models.IntegerField(blank=True, null=True)
    crit_rate = models.FloatField(blank=True, null=True)
    crit_damage = models.FloatField(blank=True, null=True)
    anomaly_mastery = models.IntegerField(blank=True, null=True)
    anomaly_proficiency = models.IntegerField(blank=True, null=True)
    penetration_ratio = models.FloatField(blank=True, null=True)
    penetration = models.FloatField(blank=True, null=True)
    energy_regen = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'agents'


class Discsinfo(models.Model):
    disc_name = models.CharField(max_length=255, blank=True, null=True)
    stat_name = models.CharField(max_length=255, blank=True, null=True)
    value = models.FloatField(blank=True, null=True)
    type = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'discs_info'

class Possiblestats(models.Model):
    position = models.IntegerField(blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    type = models.CharField(max_length=10, blank=True, null=True)
    value = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'possible_stats'

class Possiblesubstats(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    type = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'possible_sub_stats'

class Constantsubstats(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    type = models.CharField(max_length=10, blank=True, null=True)
    value = models.FloatField(blank=True, null=True)
    
    class Meta:
        managed = False
        db_table = 'constant_sub_stats'

class Wengineagentinfo(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    tier = models.CharField(max_length=1, blank=True, null=True)
    agent_name = models.CharField(max_length=255, blank=True, null=True)
    agent_nickname = models.CharField(max_length=255, blank=True, null=True)
    type = models.CharField(max_length=255, blank=True, null=True)
    main_stat_name = models.CharField(max_length=255, blank=True, null=True)
    main_stat_value = models.FloatField(blank=True, null=True)
    main_stat_type = models.CharField(max_length=10, blank=True, null=True)
    sub_stat_name = models.CharField(max_length=255, blank=True, null=True)
    sub_stat_value = models.FloatField(blank=True, null=True)
    sub_stat_type = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'wengine_agent_info'

class Wengineinfo(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    tier = models.CharField(max_length=1, blank=True, null=True)
    type = models.CharField(max_length=255, blank=True, null=True)
    main_stat_name = models.CharField(max_length=255, blank=True, null=True)
    main_stat_value = models.FloatField(blank=True, null=True)
    main_stat_type = models.CharField(max_length=10, blank=True, null=True)
    sub_stat_name = models.CharField(max_length=255, blank=True, null=True)
    sub_stat_value = models.FloatField(blank=True, null=True)
    sub_stat_type = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'wengine_info'