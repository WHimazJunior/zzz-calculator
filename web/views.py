import json
import os
from django.conf import settings
from django.shortcuts import render
import requests
from django.core.cache import cache

from zzz_calculator.settings import STYLES_URL, STYLES_ROOT, API_URL

# Create your views here.

def index(request):
    return render(request, 'Builder/BuildAgent.html', cache_api())

def settings(request):
    return render(request, 'Settings/Settings.html', cache_api())

def imageEditor(request):
    if request.method == "POST":
        print(request.POST.get("agent-name"))
        agent = {
            "hp" : request.POST.get("stat-hp"),
            "atk" : request.POST.get("stat-atk"),
            "def" : request.POST.get("stat-def"),
            "impact" : request.POST.get("stat-impact"),
            "crit_rate" : request.POST.get("stat-crit-rate"),
            "crit_damage" : request.POST.get("stat-crit-damage"),
            "anomaly_mastery" : request.POST.get("stat-anomaly-mastery"),
            "anomaly_proficiency" : request.POST.get("stat-anomaly-proficiency"),
            "pen_ratio" : request.POST.get("stat-pen-ratio"),
            "energy_regen" : request.POST.get("stat-energy-regen"),
            "pen" : request.POST.get("stat-pen"),
            "physical_dmg" : request.POST.get("stat-physical-dmg"),
            "fire_dmg" : request.POST.get("stat-fire-dmg"),
            "ice_dmg" : request.POST.get("stat-ice-dmg"),
            "eletric_dmg" : request.POST.get("stat-eletric-dmg"),
            "ether_dmg" : request.POST.get("stat-ether-dmg"),
            "agent_name" : request.POST.get("agent-name"),
            "agent_nickname" : request.POST.get("agent-nickname"),
            "agent_max_level" : request.POST.get("agent-max-level"),
            "agent_current_level" : request.POST.get("agent-current-level"),
            "agent_element" : request.POST.get("agent-element-label"),
            "agent_type" : request.POST.get("agent-type-label"),
            "agent_faction" : request.POST.get("agent-faction"),
            "agent_tier" : request.POST.get("agent-tier"),
            "agent_core": request.POST.get("agent-core")
        }

        wengine = {
            "wengine_name": request.POST.get("wengine-name"),
            "wengine_owner": request.POST.get("wengine-owner"),
            "wengine_type": request.POST.get("wengine-type"),
            "wengine_tier": request.POST.get("wengine-tier"),
            "wengine_main_stat_name": request.POST.get("wengine-main-stat-name"),
            "wengine_sub_stat_name": request.POST.get("wengine-substat-name"),
            "wengine_main_stat_value": request.POST.get("wengine-main-stat-value"),
            "wengine_sub_stat_value": request.POST.get("wengine-substat-value")
        }

        disc_1 = {
            "disc_name": request.POST.get("disc-1-name"),
            "disc_set": request.POST.get("disc-1-set"),

            "disc_main_stat_name": request.POST.get("disc-1-main-stat-name"),
            "disc_main_stat_value": request.POST.get("disc-1-main-stat-value"),

            "disc_substat_name_1": request.POST.get("disc-1-substat-name-1"),
            "disc_substat_value_1": request.POST.get("disc-1-substat-value-1"),
            "disc_substat_role_1": request.POST.get("disc-1-substat-role-1"),

            "disc_substat_name_2": request.POST.get("disc-1-substat-name-2"),
            "disc_substat_value_2": request.POST.get("disc-1-substat-value-2"),
            "disc_substat_role_2": request.POST.get("disc-1-substat-role-2"),

            "disc_substat_name_3": request.POST.get("disc-1-substat-name-3"),
            "disc_substat_value_3": request.POST.get("disc-1-substat-value-3"),
            "disc_substat_role_3": request.POST.get("disc-1-substat-role-3"),

            "disc_substat_name_4": request.POST.get("disc-1-substat-name-4"),
            "disc_substat_value_4": request.POST.get("disc-1-substat-value-4"),
            "disc_substat_role_4": request.POST.get("disc-1-substat-role-4")
        }

        disc_2 = {
            "disc_name": request.POST.get("disc-2-name"),
            "disc_set": request.POST.get("disc-2-set"),

            "disc_main_stat_name": request.POST.get("disc-2-main-stat-name"),
            "disc_main_stat_value": request.POST.get("disc-2-main-stat-value"),

            "disc_substat_name_1": request.POST.get("disc-2-substat-name-1"),
            "disc_substat_value_1": request.POST.get("disc-2-substat-value-1"),
            "disc_substat_role_1": request.POST.get("disc-2-substat-role-1"),

            "disc_substat_name_2": request.POST.get("disc-2-substat-name-2"),
            "disc_substat_value_2": request.POST.get("disc-2-substat-value-2"),
            "disc_substat_role_2": request.POST.get("disc-2-substat-role-2"),

            "disc_substat_name_3": request.POST.get("disc-2-substat-name-3"),
            "disc_substat_value_3": request.POST.get("disc-2-substat-value-3"),
            "disc_substat_role_3": request.POST.get("disc-2-substat-role-3"),

            "disc_substat_name_4": request.POST.get("disc-2-substat-name-4"),
            "disc_substat_value_4": request.POST.get("disc-2-substat-value-4"),
            "disc_substat_role_4": request.POST.get("disc-2-substat-role-4")
        }

        disc_3 = {
            "disc_name": request.POST.get("disc-3-name"),
            "disc_set": request.POST.get("disc-3-set"),

            "disc_main_stat_name": request.POST.get("disc-3-main-stat-name"),
            "disc_main_stat_value": request.POST.get("disc-3-main-stat-value"),

            "disc_substat_name_1": request.POST.get("disc-3-substat-name-1"),
            "disc_substat_value_1": request.POST.get("disc-3-substat-value-1"),
            "disc_substat_role_1": request.POST.get("disc-3-substat-role-1"),

            "disc_substat_name_2": request.POST.get("disc-3-substat-name-2"),
            "disc_substat_value_2": request.POST.get("disc-3-substat-value-2"),
            "disc_substat_role_2": request.POST.get("disc-3-substat-role-2"),

            "disc_substat_name_3": request.POST.get("disc-3-substat-name-3"),
            "disc_substat_value_3": request.POST.get("disc-3-substat-value-3"),
            "disc_substat_role_3": request.POST.get("disc-3-substat-role-3"),

            "disc_substat_name_4": request.POST.get("disc-3-substat-name-4"),
            "disc_substat_value_4": request.POST.get("disc-3-substat-value-4"),
            "disc_substat_role_4": request.POST.get("disc-3-substat-role-4")
        }

        disc_4 = {
            "disc_name": request.POST.get("disc-4-name"),
            "disc_set": request.POST.get("disc-4-set"),

            "disc_main_stat_name": request.POST.get("disc-4-main-stat-name"),
            "disc_main_stat_value": request.POST.get("disc-4-main-stat-value"),

            "disc_substat_name_1": request.POST.get("disc-4-substat-name-1"),
            "disc_substat_value_1": request.POST.get("disc-4-substat-value-1"),
            "disc_substat_role_1": request.POST.get("disc-4-substat-role-1"),

            "disc_substat_name_2": request.POST.get("disc-4-substat-name-2"),
            "disc_substat_value_2": request.POST.get("disc-4-substat-value-2"),
            "disc_substat_role_2": request.POST.get("disc-4-substat-role-2"),

            "disc_substat_name_3": request.POST.get("disc-4-substat-name-3"),
            "disc_substat_value_3": request.POST.get("disc-4-substat-value-3"),
            "disc_substat_role_3": request.POST.get("disc-4-substat-role-3"),

            "disc_substat_name_4": request.POST.get("disc-4-substat-name-4"),
            "disc_substat_value_4": request.POST.get("disc-4-substat-value-4"),
            "disc_substat_role_4": request.POST.get("disc-4-substat-role-4")
        }
        
        disc_5 = {
            "disc_name": request.POST.get("disc-5-name"),
            "disc_set": request.POST.get("disc-5-set"),

            "disc_main_stat_name": request.POST.get("disc-5-main-stat-name"),
            "disc_main_stat_value": request.POST.get("disc-5-main-stat-value"),

            "disc_substat_name_1": request.POST.get("disc-5-substat-name-1"),
            "disc_substat_value_1": request.POST.get("disc-5-substat-value-1"),
            "disc_substat_role_1": request.POST.get("disc-5-substat-role-1"),

            "disc_substat_name_2": request.POST.get("disc-5-substat-name-2"),
            "disc_substat_value_2": request.POST.get("disc-5-substat-value-2"),
            "disc_substat_role_2": request.POST.get("disc-5-substat-role-2"),

            "disc_substat_name_3": request.POST.get("disc-5-substat-name-3"),
            "disc_substat_value_3": request.POST.get("disc-5-substat-value-3"),
            "disc_substat_role_3": request.POST.get("disc-5-substat-role-3"),

            "disc_substat_name_4": request.POST.get("disc-5-substat-name-4"),
            "disc_substat_value_4": request.POST.get("disc-5-substat-value-4"),
            "disc_substat_role_4": request.POST.get("disc-5-substat-role-4")
        }

        disc_6 = {
            "disc_name": request.POST.get("disc-6-name"),
            "disc_set": request.POST.get("disc-6-set"),

            "disc_main_stat_name": request.POST.get("disc-6-main-stat-name"),
            "disc_main_stat_value": request.POST.get("disc-6-main-stat-value"),

            "disc_substat_name_1": request.POST.get("disc-6-substat-name-1"),
            "disc_substat_value_1": request.POST.get("disc-6-substat-value-1"),
            "disc_substat_role_1": request.POST.get("disc-6-substat-role-1"),

            "disc_substat_name_2": request.POST.get("disc-6-substat-name-2"),
            "disc_substat_value_2": request.POST.get("disc-6-substat-value-2"),
            "disc_substat_role_2": request.POST.get("disc-6-substat-role-2"),

            "disc_substat_name_3": request.POST.get("disc-6-substat-name-3"),
            "disc_substat_value_3": request.POST.get("disc-6-substat-value-3"),
            "disc_substat_role_3": request.POST.get("disc-6-substat-role-3"),

            "disc_substat_name_4": request.POST.get("disc-6-substat-name-4"),
            "disc_substat_value_4": request.POST.get("disc-6-substat-value-4"),
            "disc_substat_role_4": request.POST.get("disc-6-substat-role-4")
        }

        discs = [ disc_1, disc_2, disc_3, disc_4, disc_5, disc_6 ]

        color_id = int(request.POST.get("color-id-save"))
        color_list = json.loads(request.POST.get("color-list-save"))

        tables = {
            "AgentInfo" : agent,
            "WEngineInfo" : wengine,
            "DiscsInfo" : discs,
            "Color" : color_id,
            "ColorList" : color_list
        }


    return render(request, 'Builder/ExportImage/ImageEditor.html', tables)

def importJSON(request):
    if request.method == "POST":
        base_stats_content = request.POST.get("base-stats")
        constant_stats_content = request.POST.get("constant-stats")
        
        REQUEST_URL = API_URL + "/agents/info/"
        response = requests.get(REQUEST_URL, headers={'Content-Type': 'application/json'})
        response.raise_for_status()

        agent_query = response.json()
        agents_list = []

        base_stats_format = json.loads(base_stats_content)
        constant_stats_format = json.loads(constant_stats_content)

        print("\n\nhehe1\n\n")
        for const_agent in constant_stats_format:
            curr_agent = {}
            for base_agent in base_stats_format:
                if base_agent["name"] == const_agent["name"]:
                    stats = []
                    for stat in base_agent["stats"]:
                        stat_list = {}
                        stat_list.update(stat)
                        stat_list.update(const_agent["stats"])
                        stats.append(stat_list)
                        curr_agent.update({
                            "name" : base_agent["name"],
                            "stats": stats
                        })
            agents_list.append(curr_agent)
        print("\n\nhehe2\n\n")
        for agent in agents_list:
            id = None
            for query in agent_query:
                if(query["name"] == agent["name"]):
                    id = query["id"]
                    break
            if id != None:
                print(agent["name"])

                for stats in agent["stats"]:
                    stat_data = {
                        "health_point": str(stats["health_point"]).replace(",", ""),
                        "attack": str(stats["attack"]).replace(",", ""),
                        "defense": str(stats["defense"]).replace(",", ""),
                        "impact": str(stats["impact"]).replace(",", ""),
                        "crit_rate": str(stats["crit_rate"]).replace(",", ""),
                        "crit_damage": str(stats["crit_damage"]).replace(",", ""),
                        "anomaly_mastery": str(stats["anomaly_mastery"]).replace(",", ""),
                        "anomaly_proficiency": str(stats["anomaly_proficiency"]).replace(",", ""),
                        "penetration_ratio": str(stats["penetration_ratio"]).replace(",", ""),
                        "penetration": str(stats["penetration"]).replace(",", ""),
                        "energy_regen": str(stats["energy_regen"]).replace(",", ""),
                    }
                    print("\n" + str(stat_data))
                    try:
                        REQUEST_URL = API_URL + "/agents/stats/"
                        response = requests.post(REQUEST_URL, json=stat_data, headers={'Content-Type': 'application/json'})
                        response.raise_for_status()
                    except requests.RequestException as error:
                        print(f"Erro ao criar objeto: {str(error)}")
                        return render(request, 'ImportJSON.html')

                    result = response.json()
                    stat_id = result.get("id")

                    level_data = {
                        "promotion_level": stats["promotion_level"],
                        "agent_level": stats["agent_level"],
                        "stats": stat_id,
                        "agent": id,
                    }
                    print(str(level_data) + "\n\n\n")
                    try:
                        REQUEST_URL = API_URL + "/agents/levels/"
                        response = requests.post(REQUEST_URL, json=level_data, headers={'Content-Type': 'application/json'})
                        response.raise_for_status()
                    except requests.RequestException as error:
                        print(f"Erro ao criar objeto: {str(error)}")
                        return render(request, 'ImportJSON.html')

                    result = response.json()
                    
                




    return render(request, 'ImportJSON.html')

def addWengine(request):
    tables = cache_api()

    if request.method == "POST":
        name = request.POST.get("wengine-name")
        tier = request.POST.get("wengine-tier")

        base_id = 0
        base_stat = request.POST.get("base-value")
        base_stat_value = request.POST.get("base-input")
        sub_id = 0
        sub_stat = request.POST.get("sub-value")
        sub_stat_value = request.POST.get("sub-input")

        type = request.POST.get("type-input")

        data_main = {
            "value": base_stat,
            "statname": base_stat_value
        }

        try:
            REQUEST_URL = API_URL + "/wengine/main"
            response = requests.post(REQUEST_URL, data=json.dumps(data_main), headers={'Content-Type': 'application/json'})
            response.raise_for_status()

            result = response.json()
            base_id = result.get("id")

            data_sub = {
                "value": sub_stat,
                "statname": sub_stat_value
            }

            

            try:
                REQUEST_URL = API_URL + "/wengine/sub"
                response = requests.post(REQUEST_URL, data=json.dumps(data_sub), headers={'Content-Type': 'application/json'})
                response.raise_for_status()

                result = response.json()
                sub_id = result.get("id")

                print("SUB-STAT: " + str(sub_id))

                data_info = {
                    "name": name,
                    "tier": tier,
                    "type": type,
                    "stat": base_id,
                    "substat": sub_id
                }

                print(f'INSERT INTO wenginemainstats(value, statname_id) VALUES({base_stat}, {base_stat_value});')
                print(f'INSERT INTO wenginesubstats(value, statname_id) VALUES({sub_stat}, {sub_stat_value});')
                print(f'INSERT INTO wengine(name, tier, type_id, stat_id, substat_id) VALUES({name}, {tier}, {type}, {base_id}, {sub_id});')

                try:
                    REQUEST_URL = API_URL + "/wengine/"
                    response = requests.post(REQUEST_URL, data=json.dumps(data_info), headers={'Content-Type': 'application/json'})
                    response.raise_for_status()
                except requests.RequestException as error:
                    print(f"Erro ao criar objeto: {str(error)}")
                    return render(request, 'Add/AddAgent.html', tables)
            
            except requests.RequestException as error:
                print(f"Erro ao criar objeto: {str(error)}")
                return render(request, 'Add/AddAgent.html', tables)

        except requests.RequestException as error:
            print(f"Erro ao criar objeto: {str(error)}")
            return render(request, 'Add/AddAgent.html', tables)

    return render(request, 'Add/AddWengine.html', tables)

def addAgent(request):
    tables = cache_api()

    if request.method == "POST":
        faction = request.POST.get("faction-input")
        name = request.POST.get("name-input")
        nickname = request.POST.get("nickname-input")
        element = request.POST.get("element-input")
        type = request.POST.get("type-input")
        tier = request.POST.get("tier-input")

        stat_hp = request.POST.get("hp-input")
        stat_atk = request.POST.get("atk-input")
        stat_def = request.POST.get("def-input")
        stat_impact = request.POST.get("impact-input")
        stat_crit_rate = request.POST.get("crit_rate-input")
        stat_crit_damage = request.POST.get("crit_damage-input")
        stat_anomaly_mastery = request.POST.get("anomaly_mastery-input")
        stat_anomaly_proficiency = request.POST.get("anomaly_proficiency-input")
        stat_pen_ratio = request.POST.get("pen_ratio-input")
        stat_energy_regen = request.POST.get("energy_regen-input")

        data_stats = {
            "health_point": stat_hp,
            "attack": stat_atk,
            "defense": stat_def,
            "impact": stat_impact,
            "crit_rate": stat_crit_rate,
            "crit_damage": stat_crit_damage,
            "anomaly_mastery": stat_anomaly_mastery,
            "anomaly_proficiency": stat_anomaly_proficiency,
            "penetration_ratio": stat_pen_ratio,
            "penetration": 0,
            "energy_regen": stat_energy_regen,
        }
        try:
            REQUEST_URL = API_URL + "/agents/stats/"
            response = requests.post(REQUEST_URL, data=json.dumps(data_stats), headers={'Content-Type': 'application/json'})
            response.raise_for_status()

            result = response.json()
            stats_id = result.get("id")

            faction_id  = getTableId(cache.get('/factions/'), faction)
            element_id  = getTableId(cache.get('/elements/'), element)
            type_id     = getTableId(cache.get('/types/'), type)


            data_info = {
                "name": name,
                "nickname": nickname,
                "tier": tier,
                "faction": faction_id,
                "element": element_id,
                "type": type_id,
                "stats": stats_id,
            }

            print(f'INSERT INTO agentstats(health_point, attack, defense, impact, crit_rate, crit_damage, anomaly_mastery, anomaly_proficiency, penetration_ratio, penetration, energy_regen) VALUES({stat_hp}, {stat_atk}, {stat_def}, {stat_impact}, {stat_crit_rate}, {stat_crit_damage}, {stat_anomaly_mastery}, {stat_anomaly_proficiency}, {stat_pen_ratio}, {0}, {stat_energy_regen});')
            print(f'INSERT INTO agentinfo(name, nickname, tier, faction_id, element_id, type_id, stats_id) VALUES("{name}", "{nickname}", "{tier}", {faction_id}, {element_id}, {type_id}, {stats_id});')

            try:
                REQUEST_URL = API_URL + "/agents/info/"
                response = requests.post(REQUEST_URL, data=json.dumps(data_info), headers={'Content-Type': 'application/json'})
                response.raise_for_status()
                return render(request, 'Add/AddAgent.html', tables)
            except requests.RequestException as error:
                print(f"Erro ao criar objeto: {str(error)}")
                return render(request, 'Add/AddAgent.html', tables)
        except requests.RequestException as error:
            print(f"Erro ao criar objeto: {str(error)}")
            return render(request, 'Add/AddAgent.html', tables)
        
    return render(request, 'Add/AddAgent.html', tables)

def addDisc(request):
    tables = cache_api()

    if request.method == "POST":
        disc_name = request.POST.get("disc-name")
        disc_value = request.POST.get("disc-value")
        disc_stat = request.POST.get("stats-input")

        data_passive = {
            "value": disc_value,
            "statname": disc_stat,
        }

        try:
            REQUEST_URL = API_URL + "/discs/passive/"
            response = requests.post(REQUEST_URL, data=json.dumps(data_passive), headers={'Content-Type': 'application/json'})
            response.raise_for_status()

            result = response.json()
            passive_stats_id = result.get("id")

            data_info = {
                "name": disc_name,
                "passive_stat": passive_stats_id,
            }

            print(f'INSERT INTO passivestat(statname_id, value) VALUES({disc_stat}, {disc_value});')
            print(f'INSERT INTO discs(name, passive_stat_id) VALUES("{disc_name}", {passive_stats_id});')

            try:
                REQUEST_URL = API_URL + "/discs/info/"
                response = requests.post(REQUEST_URL, data=json.dumps(data_info), headers={'Content-Type': 'application/json'})
                response.raise_for_status()
                return render(request, 'Add/AddDisc.html', tables)
            except requests.RequestException as error:
                print(f"Erro ao criar objeto: {str(error)}")
                return render(request, 'Add/AddDisc.html', tables)
            
        except requests.RequestException as error:
            print(f"Erro ao criar objeto: {str(error)}")
            return render(request, 'Add/AddDisc.html', tables)
        
    return render(request, 'Add/AddDisc.html', tables)

def getTableId(table, name):
    id = -1
    for content in table:
        if content.get("name") == name:
            id = content.get("id")
    return id

def getApiRequest(URL):
    REQUEST_URL = API_URL + URL

    response = requests.get(REQUEST_URL, timeout=10)
    response.raise_for_status()

    table = response.json()

    return table

def cache_api():
    endpoints = [
        '/agents/',             # 0
        '/agents/info/',        # 1
        '/agents/core/',        # 2
        '/elements/',           # 3
        '/types/',              # 4
        '/factions/',           # 5
        '/discs/',              # 6
        '/stats/',              # 7
        '/stats/possible',      # 8
        '/stats/sub/possible',  # 9
        '/stats/sub/constant',  # 10
        '/wengines/',           # 11
        '/wengines/agent',      # 12
        '/colors/']             # 13
    
    
    for endpoint in endpoints:
        data = cache.get(endpoint)
        if not data:
            data = getApiRequest(endpoint)
            cache.set(endpoint, data, timeout=3600)

    tables = {
        "Agents" : cache.get(endpoints[0]),
        "AgentsInfo" : cache.get(endpoints[1]),
        "AgentsCore" : cache.get(endpoints[2]),
        "Elements" : cache.get(endpoints[3]),
        "Types" : cache.get(endpoints[4]),
        "Factions" : cache.get(endpoints[5]),
        "Discs" : cache.get(endpoints[6]),
        "Stats" : cache.get(endpoints[7]),
        "PossibleStats" : cache.get(endpoints[8]),
        "PossibleSubStats": cache.get(endpoints[9]),
        "ConstantSubStats": cache.get(endpoints[10]),
        "Wengines": cache.get(endpoints[11]),
        "WenginesAgent": cache.get(endpoints[12]),
        "Colors": cache.get(endpoints[13]),
        "STYLES_URL": STYLES_URL,
        "STYLES_ROOT": STYLES_ROOT,
    }

    return tables