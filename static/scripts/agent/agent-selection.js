var agents = [];

agents_info_list.forEach(agent => {
    let path = static_path+"Agents/"+agent["name"]+".png";
    agents.push({ id : agent["id"], name : agent["name"], img : path, tier : agent["tier"]});
});

let agent_startIndex = 0;
const displayCount = 9;
const agent_gridContainer = document.getElementById("agent-gridContainer");
const agent = document.getElementById("agentDisplay");

function updateAgentGrid() {
    agent_gridContainer.innerHTML = "";

    let hoveredElement = document.querySelector(".grid-item:hover"); // Check if mouse is over an existing image

    for (let i = agent_startIndex; i < agent_startIndex + displayCount && i < agents.length; i++) {
        const img = document.createElement("img");
        img.id = agents[i].id;
        img.src = agents[i].img;
        img.alt = agents[i].name;
        img.classList.add("agent-grid-item");
        img.addEventListener("click", (event) => getAgentInfo(event.target.id));

        img.addEventListener("mouseenter", () => {
            agentDisplay.textContent = agents[i].name;
        });

        if(agents[i].tier == "A")
            img.style.background = "linear-gradient(-75deg, rgb(158, 0, 250), rgb(240, 5, 250))";
        if(agents[i].tier == "S")
            img.style.background = "linear-gradient(-75deg, rgb(255, 125, 0), rgb(250, 210, 5))";

        agent_gridContainer.appendChild(img);
    }

    setTimeout(() => {
        const newHoveredElement = document.querySelector(".agent-grid-item:hover");
        if (newHoveredElement) {
            agentDisplay.textContent = newHoveredElement.alt;
        }
    }, 0);
}

document.getElementById("agent-gridContainer").addEventListener("wheel", (event) => {
    event.preventDefault();
    if (event.deltaY > 0) {
        agent_startIndex = Math.min(agent_startIndex + 3, agents.length - displayCount);
    } else {
        agent_startIndex = Math.max(0, agent_startIndex - 3);
    }
    updateAgentGrid();
}, { passive: false });

updateAgentGrid();
getAgentInfo(1);
function getAgentInfo(id){
    const curr_agent_id = document.getElementById("current-agent-id");
    const agent_name = document.getElementById("agent-name");
    const agent_nickname = document.getElementById("agent-nickname");
    const agent_level = document.getElementById("agent-actual-level-label");
    const agent_tier = document.getElementById("agent-tier-img");
    const agent_faction = document.getElementById("agent-faction");
    const faction_img = document.getElementById("faction-img");
    const faction_background = document.getElementById("agent-faction-background-image");
    const agent_element = document.getElementById("agent-element-img");
    const agent_element_label = document.getElementById("agent-element-label");
    const agent_type = document.getElementById("agent-type-img");
    const agent_type_label = document.getElementById("agent-type-label");

    const stat_hp = document.getElementById("stat_hp");
    const stat_atk = document.getElementById("stat_atk");
    const stat_def = document.getElementById("stat_def");
    const stat_impact = document.getElementById("stat_impact");
    const stat_crit_rate = document.getElementById("stat_crit_rate");
    const stat_crit_damage = document.getElementById("stat_crit_damage");
    const stat_anomaly_mastery = document.getElementById("stat_anomaly_mastery");
    const stat_anomaly_proficiency= document.getElementById("stat_anomaly_proficiency");
    const stat_pen_ratio = document.getElementById("stat_pen_ratio");
    const stat_energy_regen = document.getElementById("stat_energy_regen");

    

    agents_core_list.forEach(core => {
        if(core["id"] == id){
            agent_core.forEach(slot => {
                if(slot["slot"]%2 == 0){
                    slot["stat_id"] = core["stat_id"];
                    slot["stat_value"] = core["stat_value"];
                }
            });
        }
    });


    let promotion_level = 0;
    let curr_level = 1;

    curr_agent_id.value = id;
    agent_promotion.forEach(promo => {
        if(promo["slot"] >= promotion_level && promo["is_active"]){
            promotion_level = promo["slot"];
            let is_maxed = document.getElementById("agent-promotion-maxed").classList.contains("active");
            if(is_maxed)
                curr_level = promo["max"];
            else
                curr_level = promo["min"];
            document.getElementById("agent-max-level-label").innerHTML = promo["max"];
        }
    });

    console.log(id);
    agents_list.forEach(agent => {
        if(id == agent['id'] && promotion_level == agent["promotion_level"] && curr_level == agent["agent_level"]){
            agent_name.innerHTML = agent['name'];
            agent_nickname.innerHTML = agent['nickname'];
            agent_level.innerHTML = "Lv."+agent['agent_level'];

            agent_tier.src = static_path + "Tier/" + agent['tier'] + '.png';

            agent_faction.innerHTML = agent['faction'];

            faction_img.src = static_path + "Factions/" + agent['faction'] + '.png';
            faction_background.src = static_path + "Factions/" + agent['faction'] + '.png';

            agent_element.src = static_path + "Elements/" + agent['element'] + '.png';
            agent_element_label.innerHTML = agent['element'];

            agent_type.src = static_path + "Types/" + agent['type'] + '.png';
            agent_type_label.innerHTML = agent['type'];



            stat_hp.innerHTML = agent['health_point'];
            stat_hp.setAttribute("data-value", agent['health_point']);

            stat_atk.innerHTML = agent['attack'];
            stat_atk.setAttribute("data-value", agent['attack']);

            stat_def.innerHTML = agent['defense'];
            stat_def.setAttribute("data-value", agent['defense']);

            stat_impact.innerHTML = agent['impact'];
            stat_impact.setAttribute("data-value", agent['impact']);

            stat_crit_rate.innerHTML = agent['crit_rate'];
            stat_crit_rate.setAttribute("data-value", agent['crit_rate']);

            stat_crit_damage.innerHTML = agent['crit_damage'];
            stat_crit_damage.setAttribute("data-value", agent['crit_damage']);

            stat_anomaly_mastery.innerHTML = agent['anomaly_mastery'];
            stat_anomaly_mastery.setAttribute("data-value", agent['anomaly_mastery']);

            stat_anomaly_proficiency.innerHTML = agent['anomaly_proficiency'];
            stat_anomaly_proficiency.setAttribute("data-value", agent['anomaly_proficiency']);

            stat_pen_ratio.innerHTML = agent['penetration_ratio'];
            stat_pen_ratio.setAttribute("data-value", agent['penetration_ratio']);

            stat_energy_regen.innerHTML = agent['energy_regen'];
            stat_energy_regen.setAttribute("data-value", agent['energy_regen']);

            return;
        }

        updateCoreDescription();
    });
}