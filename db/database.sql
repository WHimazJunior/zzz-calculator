CREATE TABLE AgentStats( /*ADD Agent For Each New Agent*/
    id int PRIMARY KEY AUTO_INCREMENT,
    health_point int,
    attack int,
    defense int,
    impact int,
    crit_rate float,
    crit_damage float,
    anomaly_mastery int,
    anomaly_proficiency int,
    penetration_ratio float,
    penetration float,
    energy_regen float
);

CREATE TABLE Faction( /*ADD Faction For Each New Faction*/
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255)
);

CREATE TABLE Element( /*ADD Element For Each New Element*/
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255)
);

CREATE TABLE Type(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255)
);

CREATE TABLE BaseStatsName(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    type enum('Flat', 'Percentage')
);

CREATE TABLE AgentInfo( /*ADD Agent For Each New Agent*/
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    nickname varchar(255),
    tier enum('A', 'S'),

    faction_id int,
    element_id int,
    type_id int,
    stats_id int,

    FOREIGN KEY (faction_id) REFERENCES Faction (id) ON DELETE CASCADE,
    FOREIGN KEY (element_id) REFERENCES Element (id) ON DELETE CASCADE,
    FOREIGN KEY (type_id) REFERENCES Type (id) ON DELETE CASCADE,
    FOREIGN KEY (stats_id) REFERENCES AgentStats (id) ON DELETE CASCADE
);

CREATE TABLE WEngineMainStats( /*ADD MainStat For Each New WEngine with New Stat*/
    id int PRIMARY KEY AUTO_INCREMENT,
    statname_id int,
    value float,

    FOREIGN KEY (statname_id) REFERENCES BaseStatsName (id) ON DELETE CASCADE
);

CREATE TABLE WEngineSubStats( /*ADD SubStat For Each New WEngine with New Stat*/
    id int PRIMARY KEY AUTO_INCREMENT,
    statname_id int,
    value float,

    FOREIGN KEY (statname_id) REFERENCES BaseStatsName (id) ON DELETE CASCADE
);

CREATE TABLE WEngine( /*ADD WEngine For Each New WEngine*/
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    tier enum('B', 'A', 'S'),
    type_id int,
    stat_id int,
    substat_id int,

    FOREIGN KEY (type_id) REFERENCES Type (id) ON DELETE CASCADE,
    FOREIGN KEY (stat_id) REFERENCES WEngineMainStats (id) ON DELETE CASCADE,
    FOREIGN KEY (substat_id) REFERENCES WEngineSubStats (id) ON DELETE CASCADE
);

CREATE TABLE WEngine_Agent( /*ADD WEngine+Agent For Each New WEngine+Agent*/
    id int PRIMARY KEY AUTO_INCREMENT,
    wengine_id int,
    agent_id int,

    FOREIGN KEY (wengine_id) REFERENCES WEngine (id) ON DELETE CASCADE,
    FOREIGN KEY (agent_id) REFERENCES AgentInfo (id) ON DELETE CASCADE
);

CREATE TABLE PassiveStat( /*ADD PassiveStat For Each New PassiveStat in Disc*/
    id int PRIMARY KEY AUTO_INCREMENT,
    statname_id int,
    value float,

    FOREIGN KEY (statname_id) REFERENCES BaseStatsName (id) ON DELETE CASCADE
);

CREATE TABLE Discs( /*ADD Disc For Each New Disc*/
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),

    passive_stat_id int,
    FOREIGN KEY (passive_stat_id) REFERENCES PassiveStat (id) ON DELETE CASCADE
);

CREATE TABLE ConstantMainStat( /*ADD Default Stats for Main Stat in Disc*/
    id int PRIMARY KEY AUTO_INCREMENT,
    statname_id int,
    value float,
    
    FOREIGN KEY (statname_id) REFERENCES BaseStatsName (id) ON DELETE CASCADE
);

CREATE TABLE ConstantSubStat( /*ADD Default Stats for Roles*/
    id int PRIMARY KEY AUTO_INCREMENT,
    statname_id int,
    value float,
    
    FOREIGN KEY (statname_id) REFERENCES BaseStatsName (id) ON DELETE CASCADE
);

CREATE TABLE RoleSubStat(
    id int PRIMARY KEY AUTO_INCREMENT,
    role int,
    stat_id int,

    FOREIGN KEY (stat_id) REFERENCES ConstantSubStat (id) ON DELETE CASCADE
);

CREATE TABLE PossiblePositionStat(
    id int PRIMARY KEY AUTO_INCREMENT,
    position int,
    statname_id int,

    FOREIGN KEY (statname_id) REFERENCES BaseStatsName (id) ON DELETE CASCADE
);

CREATE TABLE PossibleSubStat(
    id int PRIMARY KEY AUTO_INCREMENT,
    statname_id int,

    FOREIGN KEY (statname_id) REFERENCES BaseStatsName (id) ON DELETE CASCADE
);

CREATE TABLE colors(
	id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    light_color varchar(12),
    light_gradient varchar(12),
    dark_gradient varchar(12)
);

INSERT INTO `colors` (`id`, `name`, `light_color`, `light_gradient`, `dark_gradient`)
VALUES (NULL, 'Light Blue', '#1ce0ef', '#1fadba', '#115c62');

INSERT INTO `colors` (`id`, `name`, `light_color`, `light_gradient`, `dark_gradient`)
VALUES (NULL, 'Orange', '#ef691c', '#ba581f', '#622f11');

INSERT INTO `colors` (`id`, `name`, `light_color`, `light_gradient`, `dark_gradient`)
VALUES (NULL, 'Yellow', '#efdd1c', '#baad1f', '#625b11');

INSERT INTO `colors` (`id`, `name`, `light_color`, `light_gradient`, `dark_gradient`)
VALUES (NULL, 'Pink', '#ef1cef', '#ba1fba', '#621162');

INSERT INTO `colors` (`id`, `name`, `light_color`, `light_gradient`, `dark_gradient`)
VALUES (NULL, 'Hot Pink', '#ef1c86', '#ba1f6c', '#62113a');

INSERT INTO `colors` (`id`, `name`, `light_color`, `light_gradient`, `dark_gradient`)
VALUES (NULL, 'Purple', '#741cef', '#601fba', '#331162');

INSERT INTO `colors` (`id`, `name`, `light_color`, `light_gradient`, `dark_gradient`)
VALUES (NULL, 'Red', '#ef1c1c', '#ba1f1f', '#621111');

INSERT INTO `colors` (`id`, `name`, `light_color`, `light_gradient`, `dark_gradient`)
VALUES (NULL, 'Green', '#38ef1c', '#34ba1f', '#1c6211');

INSERT INTO `colors` (`id`, `name`, `light_color`, `light_gradient`, `dark_gradient`)
VALUES (NULL, 'Blue', '#1c1cef', '#1f1fba', '#111162');