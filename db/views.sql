/*CREATE VIEW agents AS
SELECT agentinfo.id, agentinfo.name, agentinfo.nickname, agentinfo.tier, faction.name AS 'faction', element.name AS 'element', type.name AS 'type', agentstats.health_point, agentstats.attack, agentstats.defense, agentstats.impact, agentstats.crit_rate, agentstats.crit_damage, agentstats.anomaly_mastery, agentstats.anomaly_proficiency, agentstats.penetration_ratio, agentstats.penetration, agentstats.energy_regen
FROM agentinfo
INNER JOIN faction
ON agentinfo.faction_id = faction.id
INNER JOIN element
ON agentinfo.element_id = element.id
INNER JOIN type
ON agentinfo.type_id = type.id
INNER JOIN agentstats
ON agentinfo.stats_id = agentstats.id
ORDER BY agentinfo.tier;*/

CREATE VIEW discs_info AS
SELECT discs.id, discs.name AS disc_name, basestatsname.name AS stat_name, passivestat.value AS value, basestatsname.type AS type
FROM discs
INNER JOIN passivestat
ON discs.passive_stat_id = passivestat.id
INNER JOIN basestatsname
ON passivestat.statname_id = basestatsname.id;

CREATE VIEW possible_stats AS
SELECT possiblepositionstat.id, possiblepositionstat.position, basestatsname.name, basestatsname.type, constantmainstat.value
FROM possiblepositionstat
INNER JOIN basestatsname
ON basestatsname.id = possiblepositionstat.statname_id
INNER JOIN constantmainstat
ON constantmainstat.statname_id = basestatsname.id;

CREATE VIEW possible_sub_stats AS
SELECT possiblesubstat.id, basestatsname.name, basestatsname.type
FROM possiblesubstat
INNER JOIN basestatsname
ON basestatsname.id = possiblesubstat.statname_id;

CREATE VIEW constant_sub_stats AS
SELECT constantsubstat.id, basestatsname.name, basestatsname.type, constantsubstat.value
FROM constantsubstat
INNER JOIN basestatsname
ON basestatsname.id = constantsubstat.statname_id;

CREATE VIEW wengine_agent_info AS
SELECT wengine.id, wengine.name, wengine.tier, agentinfo.name AS agent_name, agentinfo.nickname AS agent_nickname, type.name AS type, mainstatsname.name AS main_stat_name, wenginemainstats.value AS main_stat_value, mainstatsname.type AS main_stat_type, substatsname.name AS sub_stat_name, wenginesubstats.value AS sub_stat_value, substatsname.type AS sub_stat_type
FROM wengine
INNER JOIN wengine_agent
ON wengine_agent.wengine_id = wengine.id
INNER JOIN agentinfo
ON wengine_agent.agent_id = agentinfo.id
INNER JOIN type
ON wengine.type_id = type.id
INNER JOIN wenginemainstats
ON wengine.stat_id = wenginemainstats.id
INNER JOIN wenginesubstats
ON wengine.substat_id = wenginesubstats.id
INNER JOIN basestatsname AS mainstatsname
ON wenginemainstats.statname_id = mainstatsname.id
INNER JOIN basestatsname AS substatsname
ON wenginesubstats.statname_id = substatsname.id
ORDER BY wengine.tier;

CREATE VIEW wengine_info AS
SELECT wengine.id, wengine.name, wengine.tier, type.name AS type, mainstatsname.name AS main_stat_name, wenginemainstats.value AS main_stat_value, mainstatsname.type AS main_stat_type, substatsname.name AS sub_stat_name, wenginesubstats.value AS sub_stat_value, substatsname.type AS sub_stat_type
FROM wengine
INNER JOIN type
ON wengine.type_id = type.id
INNER JOIN wenginemainstats
ON wengine.stat_id = wenginemainstats.id
INNER JOIN wenginesubstats
ON wengine.substat_id = wenginesubstats.id
INNER JOIN basestatsname AS mainstatsname
ON wenginemainstats.statname_id = mainstatsname.id
INNER JOIN basestatsname AS substatsname
ON wenginesubstats.statname_id = substatsname.id
ORDER BY wengine.tier;


CREATE VIEW agents AS
SELECT agentinfo.id,
	agentinfo.name, agentinfo.nickname,
	agentinfo.tier, faction.name AS 'faction',
    element.name AS 'element',
    type.name AS 'type',
    agents_stats_per_level.promotion_level,
    agents_stats_per_level.agent_level,
    agentstats.health_point,
    agentstats.attack,
    agentstats.defense,
    agentstats.impact,
    agentstats.crit_rate,
    agentstats.crit_damage,
    agentstats.anomaly_mastery,
    agentstats.anomaly_proficiency,
    agentstats.penetration_ratio,
    agentstats.penetration,
    agentstats.energy_regen
FROM agents_stats_per_level
INNER JOIN agentstats
ON agentstats.id = agents_stats_per_level.stats_id
INNER JOIN agentinfo
ON agents_stats_per_level.agent_id = agentinfo.id
INNER JOIN faction
ON agentinfo.faction_id = faction.id
INNER JOIN element
ON agentinfo.element_id = element.id
INNER JOIN type
ON agentinfo.type_id = type.id
ORDER BY agentinfo.tier;

CREATE VIEW agent_core_stats AS
SELECT agentinfo.id, agentinfo.name, agentinfo.nickname, basestatsname.id AS 'stat_id', basestatsname.name AS 'stat_name', basestatsname.type AS 'stat_type', constant_core_stat.value AS 'stat_value'
FROM `agent_core_constant_stat`
INNER JOIN agentinfo
ON agentinfo.id = agent_core_constant_stat.agent_id
INNER JOIN constant_core_stat
ON constant_core_stat.id = agent_core_constant_stat.constant_stat_id
INNER JOIN basestatsname
ON constant_core_stat.stat_id = basestatsname.id;