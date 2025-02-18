/*Stat Name*/

INSERT INTO basestatsname(name, type)
VALUES('HP', 'Flat');
INSERT INTO basestatsname(name, type)
VALUES('HP', 'Percentage');


INSERT INTO basestatsname(name, type)
VALUES('ATK', 'Flat');
INSERT INTO basestatsname(name, type)
VALUES('ATK', 'Percentage');

INSERT INTO basestatsname(name, type)
VALUES('DEF', 'Flat');
INSERT INTO basestatsname(name, type)
VALUES('DEF', 'Percentage');


INSERT INTO basestatsname(name, type)
VALUES('CRIT Rate', 'Percentage');
INSERT INTO basestatsname(name, type)
VALUES('CRIT DMG', 'Percentage');


INSERT INTO basestatsname(name, type)
VALUES('Anomaly Proficiency', 'Flat');
INSERT INTO basestatsname(name, type)
VALUES('Anomaly Mastery', 'Flat');
INSERT INTO basestatsname(name, type)
VALUES('Anomaly Mastery', 'Percentage');


INSERT INTO basestatsname(name, type)
VALUES('PEN', 'Flat');
INSERT INTO basestatsname(name, type)
VALUES('PEN Ratio', 'Percentage');


INSERT INTO basestatsname(name, type)
VALUES('Impact', 'Flat');
INSERT INTO basestatsname(name, type)
VALUES('Impact', 'Percentage');


INSERT INTO basestatsname(name, type)
VALUES('Energy Regen', 'Flat');
INSERT INTO basestatsname(name, type)
VALUES('Energy Regen', 'Percentage');


INSERT INTO basestatsname(name, type)
VALUES('Physical Damage', 'Percentage');
INSERT INTO basestatsname(name, type)
VALUES('Eletric Damage', 'Percentage');
INSERT INTO basestatsname(name, type)
VALUES('Fire Damage', 'Percentage');
INSERT INTO basestatsname(name, type)
VALUES('Ice Damage', 'Percentage');
INSERT INTO basestatsname(name, type)
VALUES('Ether Damage', 'Percentage');

/*Disc Passive Stat*/

INSERT INTO passivestat(statname_id, value)
VALUES(8 , 16);

INSERT INTO discs(name, passive_stat_id)
VALUES('Branch & Blade Song', 1);

/*Disc Main Stat*/

INSERT INTO constantmainstat(statname_id, value)
VALUES(1, 2200);

INSERT INTO constantmainstat(statname_id, value)
VALUES(3, 316);

INSERT INTO constantmainstat(statname_id, value)
VALUES(5, 184);

INSERT INTO constantmainstat(statname_id, value)
VALUES(4, 30);

INSERT INTO constantmainstat(statname_id, value)
VALUES(2, 30);

INSERT INTO constantmainstat(statname_id, value)
VALUES(6, 30);

INSERT INTO constantmainstat(statname_id, value)
VALUES(7, 24);

INSERT INTO constantmainstat(statname_id, value)
VALUES(8, 48);

INSERT INTO constantmainstat(statname_id, value)
VALUES(9, 30);

INSERT INTO constantmainstat(statname_id, value)
VALUES(13, 24);

INSERT INTO constantmainstat(statname_id, value)
VALUES(11, 30);

INSERT INTO constantmainstat(statname_id, value)
VALUES(15, 18);

INSERT INTO constantmainstat(statname_id, value)
VALUES(17, 60);

INSERT INTO constantmainstat(statname_id, value)
VALUES(18, 30);

INSERT INTO constantmainstat(statname_id, value)
VALUES(19, 30);

INSERT INTO constantmainstat(statname_id, value)
VALUES(20, 30);

INSERT INTO constantmainstat(statname_id, value)
VALUES(21, 30);

INSERT INTO constantmainstat(statname_id, value)
VALUES(22, 30);

/*Disc Sub Stat*/

INSERT INTO constantsubstat(statname_id, value)
VALUES(1, 112);

INSERT INTO constantsubstat(statname_id, value)
VALUES(3, 316);

INSERT INTO constantsubstat(statname_id, value)
VALUES(5, 184);

INSERT INTO constantsubstat(statname_id, value)
VALUES(4, 3);

INSERT INTO constantsubstat(statname_id, value)
VALUES(2, 3);

INSERT INTO constantsubstat(statname_id, value)
VALUES(6, 4.8);

INSERT INTO constantsubstat(statname_id, value)
VALUES(7, 2.4);

INSERT INTO constantsubstat(statname_id, value)
VALUES(8, 4.8);

INSERT INTO constantsubstat(statname_id, value)
VALUES(9, 9);

INSERT INTO constantsubstat(statname_id, value)
VALUES(12, 9);

/*Factions*/

INSERT INTO faction(name)
VALUES('Cunning Hares');

INSERT INTO faction(name)
VALUES('Belobog Heavy Industries');

INSERT INTO faction(name)
VALUES('Victoria Housekeeping Co.');

INSERT INTO faction(name)
VALUES('Obol Squad');

INSERT INTO faction(name)
VALUES('Criminal Investigation Special Response Team');

INSERT INTO faction(name)
VALUES('Sons of Calydon');

INSERT INTO faction(name)
VALUES('Hollow Special Operations Section 6');

INSERT INTO faction(name)
VALUES('Stars of Lyra');

/*Elements*/

INSERT INTO element(name)
VALUES('Physical');

INSERT INTO element(name)
VALUES('Eletric');

INSERT INTO element(name)
VALUES('Fire');

INSERT INTO element(name)
VALUES('Ice');

INSERT INTO element(name)
VALUES('Ether');

INSERT INTO element(name)
VALUES('Frost');

/*Type*/

INSERT INTO type(name)
VALUES('Anomaly');

INSERT INTO type(name)
VALUES('Attacker');

INSERT INTO type(name)
VALUES('Support');

INSERT INTO type(name)
VALUES('Defense');

INSERT INTO type(name)
VALUES('Stunner');

/*Agent-Stats*/

INSERT INTO agentstats(health_point, attack, defense, impact, crit_rate, crit_damage, anomaly_mastery, anomaly_proficiency, penetration_ratio, penetration, energy_regen)
VALUES(7673, 606, 880, 86, 5, 50, 116, 180, 0, 0, 1.2);

INSERT INTO agentinfo(name, nickname, tier, faction_id, element_id, type_id, stats_id)
VALUES('Hoshimi Miyabi', 'Miyabi', 'S', 7, 6, 1, 1);

INSERT INTO agentstats(health_point, attack, defense, impact, crit_rate, crit_damage, anomaly_mastery, anomaly_proficiency, penetration_ratio, penetration, energy_regen)
VALUES(8146, 649, 623, 88, 5, 50, 88, 90, 0, 0, 1.56);

INSERT INTO agentinfo(name, nickname, tier, faction_id, element_id, type_id, stats_id)
VALUES('Nicole Demara', 'Nicole', 'A', 1, 5, 3, 2);

INSERT INTO agentstats(health_point, attack, defense, impact, crit_rate, crit_damage, anomaly_mastery, anomaly_proficiency, penetration_ratio, penetration, energy_regen)
VALUES(7501, 613, 659, 136, 5, 50, 93, 90, 0, 0, 1.2);

INSERT INTO agentinfo(name, nickname, tier, faction_id, element_id, type_id, stats_id)
VALUES('Anby Demara', 'Anby', 'A', 1, 2, 5, 3);

INSERT INTO agentstats(health_point, attack, defense, impact, crit_rate, crit_damage, anomaly_mastery, anomaly_proficiency, penetration_ratio, penetration, energy_regen)
VALUES(8609, 715, 600, 83, 5, 50, 93, 90, 0, 0, 1.56);

INSERT INTO agentinfo(name, nickname, tier, faction_id, element_id, type_id, stats_id)
VALUES('Astra Yao', 'Astra', 'S', 8, 5, 3, 4);

INSERT INTO agentstats(health_point, attack, defense, impact, crit_rate, crit_damage, anomaly_mastery, anomaly_proficiency, penetration_ratio, penetration, energy_regen)
VALUES(7674, 938, 607, 93, 19.4, 50, 93, 90, 0, 0, 1.2);

INSERT INTO agentinfo(name, nickname, tier, faction_id, element_id, type_id, stats_id)
VALUES('Ellen Joe', 'Astra', 'S', 3, 4, 2, 5);

INSERT INTO agentstats(health_point, attack, defense, impact, crit_rate, crit_damage, anomaly_mastery, anomaly_proficiency, penetration_ratio, penetration, energy_regen)
VALUES(8578, 653, 724, 95, 5, 50, 90, 90, 0, 0, 1.56);

INSERT INTO agentinfo(name, nickname, tier, faction_id, element_id, type_id, stats_id)
VALUES('Ben Bigger', 'Ben', 'A', 2, 3, 4, 6);

INSERT INTO agentstats(health_point, attack, defense, impact, crit_rate, crit_damage, anomaly_mastery, anomaly_proficiency, penetration_ratio, penetration, energy_regen)
VALUES(7789, 881, 601, 86, 5, 50, 150, 90, 0, 0, 1.2);

INSERT INTO agentinfo(name, nickname, tier, faction_id, element_id, type_id, stats_id)
VALUES('Jane Doe', 'Jane', 'S', 5, 1, 1, 7);

INSERT INTO agentstats(health_point, attack, defense, impact, crit_rate, crit_damage, anomaly_mastery, anomaly_proficiency, penetration_ratio, penetration, energy_regen)
VALUES(8026, 659, 613, 86, 5, 50, 93, 90, 0, 0, 1.56);

INSERT INTO agentinfo(name, nickname, tier, faction_id, element_id, type_id, stats_id)
VALUES('Luciana de Montefio', 'Lucy', 'A', 6, 3, 3, 8);

/*Default Disc's Stats*/

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(1, 1);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(2, 3);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(3, 5);

/**/

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(4, 2);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(4, 4);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(4, 6);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(4, 7);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(4, 8);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(4, 9);


INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(5, 2);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(5, 4);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(5, 6);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(5, 13);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(5, 18);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(5, 19);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(5, 20);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(5, 21);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(5, 22);


INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(6, 2);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(6, 4);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(6, 6);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(6, 11);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(6, 15);

INSERT INTO PossiblePositionStat(position, statname_id)
VALUES(6, 17);

/**/

INSERT INTO PossibleSubStat(statname_id)
VALUES(1);

INSERT INTO PossibleSubStat(statname_id)
VALUES(2);

INSERT INTO PossibleSubStat(statname_id)
VALUES(3);

INSERT INTO PossibleSubStat(statname_id)
VALUES(4);

INSERT INTO PossibleSubStat(statname_id)
VALUES(5);

INSERT INTO PossibleSubStat(statname_id)
VALUES(6);

INSERT INTO PossibleSubStat(statname_id)
VALUES(7);

INSERT INTO PossibleSubStat(statname_id)
VALUES(8);

INSERT INTO PossibleSubStat(statname_id)
VALUES(9);

INSERT INTO PossibleSubStat(statname_id)
VALUES(12);

/*Views*/

CREATE VIEW agents AS
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
ORDER BY agentinfo.tier;

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