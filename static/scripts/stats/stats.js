/*
{% load static %}
<script>
    const stats_list = {{Stats|safe}};
    const possible_stats_list = {{PossibleStats|safe}};
    const constant_substats = {{ConstantSubStats|safe}};
    const possible_substats_list = {{PossibleSubStats|safe}};
    const agents_list = {{Agents|safe}};
    const agents_info_list = {{AgentsInfo|safe}};
    const agents_core_list = {{AgentsCore|safe}};
    const discs_list = {{Discs|safe}};
    const wengine_list = {{Wengines|safe}};
    const wengine_agent_list = {{WenginesAgent|safe}};
    const static_path = "{% static '' %}";

    let disc_slot = [
        { id: 0, slot: 1, is_active: false, is_selected: false,
                                            main_stat_name: "", main_stat_value: 0,  main_stat_type: "",
                                            substat_name_1:"Stat 1",  substat_value_1: 0, substat_type_1: "", substat_role_1: 0,
                                            substat_name_2:"Stat 2",  substat_value_2: 0, substat_type_2: "", substat_role_2: 0,
                                            substat_name_3:"Stat 3",  substat_value_3: 0, substat_type_3: "", substat_role_3: 0,
                                            substat_name_4:"Stat 4",  substat_value_4: 0, substat_type_4: "", substat_role_4: 0},

        { id: 0, slot: 2, is_active: false, is_selected: false,
                                            main_stat_name: "", main_stat_value: 0,  main_stat_type: "",
                                            substat_name_1:"Stat 1",  substat_value_1: 0, substat_type_1: "", substat_role_1: 0,
                                            substat_name_2:"Stat 2",  substat_value_2: 0, substat_type_2: "", substat_role_2: 0,
                                            substat_name_3:"Stat 3",  substat_value_3: 0, substat_type_3: "", substat_role_3: 0,
                                            substat_name_4:"Stat 4",  substat_value_4: 0, substat_type_4: "", substat_role_4: 0},

        { id: 0, slot: 3, is_active: false, is_selected: false,
                                            main_stat_name: "", main_stat_value: 0,  main_stat_type: "",
                                            substat_name_1:"Stat 1",  substat_value_1: 0, substat_type_1: "", substat_role_1: 0,
                                            substat_name_2:"Stat 2",  substat_value_2: 0, substat_type_2: "", substat_role_2: 0,
                                            substat_name_3:"Stat 3",  substat_value_3: 0, substat_type_3: "", substat_role_3: 0,
                                            substat_name_4:"Stat 4",  substat_value_4: 0, substat_type_4: "", substat_role_4: 0},

        { id: 0, slot: 4, is_active: false, is_selected: false,
                                            main_stat_name: "", main_stat_value: 0,  main_stat_type: "",
                                            substat_name_1:"Stat 1",  substat_value_1: 0, substat_type_1: "", substat_role_1: 0,
                                            substat_name_2:"Stat 2",  substat_value_2: 0, substat_type_2: "", substat_role_2: 0,
                                            substat_name_3:"Stat 3",  substat_value_3: 0, substat_type_3: "", substat_role_3: 0,
                                            substat_name_4:"Stat 4",  substat_value_4: 0, substat_type_4: "", substat_role_4: 0},

        { id: 0, slot: 5, is_active: false, is_selected: false,
                                            main_stat_name: "", main_stat_value: 0,  main_stat_type: "",
                                            substat_name_1:"Stat 1",  substat_value_1: 0, substat_type_1: "", substat_role_1: 0,
                                            substat_name_2:"Stat 2",  substat_value_2: 0, substat_type_2: "", substat_role_2: 0,
                                            substat_name_3:"Stat 3",  substat_value_3: 0, substat_type_3: "", substat_role_3: 0,
                                            substat_name_4:"Stat 4",  substat_value_4: 0, substat_type_4: "", substat_role_4: 0},

        { id: 0, slot: 6, is_active: false, is_selected: false,
                                            main_stat_name: "", main_stat_value: 0,  main_stat_type: "",
                                            substat_name_1:"Stat 1",  substat_value_1: 0, substat_type_1: "", substat_role_1: 0,
                                            substat_name_2:"Stat 2",  substat_value_2: 0, substat_type_2: "", substat_role_2: 0,
                                            substat_name_3:"Stat 3",  substat_value_3: 0, substat_type_3: "", substat_role_3: 0,
                                            substat_name_4:"Stat 4",  substat_value_4: 0, substat_type_4: "", substat_role_4: 0}];

    let wengine_slot = [{ id: 0, main_stat_name: "", main_stat_value: 0, main_stat_type: "",
                                    sub_stat_name:  "", sub_stat_value:  0, sub_stat_type:  ""}];

    let agent_core = [
        {slot: 1, letter: "A", stat_id: 3, stat_value: 25,  is_active: false},
        {slot: 2, letter: "B", stat_id: 0, stat_value: 0,   is_active: false},
        {slot: 3, letter: "C", stat_id: 3, stat_value: 25,  is_active: false},
        {slot: 4, letter: "D", stat_id: 0, stat_value: 0,   is_active: false},
        {slot: 5, letter: "E", stat_id: 3, stat_value: 25,  is_active: false},
        {slot: 6, letter: "F", stat_id: 0, stat_value: 0,   is_active: false}];

    let agent_promotion = [
        {slot: 0, min: 1, max: 10, is_active: true},
        {slot: 1, min: 10, max: 20, is_active: false},
        {slot: 2, min: 20, max: 30, is_active: false},
        {slot: 3, min: 30, max: 40, is_active: false},
        {slot: 4, min: 40, max: 50, is_active: false},
        {slot: 5, min: 50, max: 60, is_active: false},
    ];

    let exclusive_stats = ["CRIT Rate", "CRIT DMG", "PEN Ratio", "Physical Damage", "Eletric Damage", "Fire Damage", "Ice Damage", "Ether Damage"];
</script>
*/

const stat_dropdownButton = document.getElementById("stat-dropdownButton");
const stat_dropdownList = document.getElementById("stat-dropdownList");
const stat_selected_name = document.getElementById("stat-selected-name");
const stat_selected_value = document.getElementById("stat-selected-value");

const substat_dropdownButton = document.querySelectorAll("#substat-dropdownButton");
const substat_dropdownList = document.querySelectorAll("#substat-dropdownList");

const up_statButton = document.querySelectorAll("#up-stat");
const down_statButton = document.querySelectorAll("#down-stat");

/**/

up_statButton.forEach(up_button => {
    up_button.addEventListener("click", (event) => {
        let slot_position = up_button.getAttribute("data-value");
        let position = document.getElementById("slot-position-selected").value;
        
        disc_slot.forEach(slot => {
            if(slot["slot"] == position){
                slot["substat_role_"+slot_position] += 1;
                changeDiscInfo(position);
            }
        });
    });
});


down_statButton.forEach(down_button => {
    down_button.addEventListener("click", (event) => {
        let slot_position = down_button.getAttribute("data-value");
        let position = document.getElementById("slot-position-selected").value;
        
        disc_slot.forEach(slot => {
            if(slot["slot"] == position){
                slot["substat_role_"+slot_position] -= 1;
                if(slot["substat_role_"+slot_position] < 0)
                    slot["substat_role_"+slot_position] = 0;
                changeDiscInfo(position);
            }
        });
    });
});

if(stat_dropdownButton){
    stat_dropdownButton.addEventListener("click", (event) => {
        event.preventDefault();
        const positionSelected = document.getElementById("slot-position-selected").value;
        if(positionSelected != 0)
            stat_dropdownList.style.display =
                stat_dropdownList.style.display === "block" ? "none" : "block";
    });
    
    document.addEventListener("click", (event) => {
        if (!stat_dropdownButton.contains(event.target) && !stat_dropdownList.contains(event.target)) 
            stat_dropdownList.style.display = "none";
    });
}

substat_dropdownButton.forEach(button => {
    button.addEventListener("click", (event) => {
        event.preventDefault();
        
        const positionSelected = document.getElementById("slot-position-selected").value;
        if(positionSelected != 0){
            substat_dropdownList.forEach(dropdown => {
                if(dropdown.getAttribute("data-value") == button.getAttribute("data-value")){
                    dropdown.style.display =
                    dropdown.style.display === "block" ? "none" : "block";

                    disc_slot.forEach(slot => {
                        let position = document.getElementById("slot-position-selected").value
                        if(slot["slot"] == position){
                            clearDropdownSubStatsOptions();
                            setDropdownSubStats(slot, position);
                        }
                    });
                }
            });
        }
    });
    
    document.addEventListener("click", (event) => {
        substat_dropdownList.forEach(dropdown => {
            if(dropdown.getAttribute("data-value") == button.getAttribute("data-value"))
                if (!button.contains(event.target) && !dropdown.contains(event.target))
                    dropdown.style.display = "none";
        });
    });
});

/**/

updateAgentStats();

function updateAgentStats(){
    stats_list.forEach(stat => {
        let stat_label = document.querySelector(".stat_"+stat["id"]);

        if(stat_label){
            let base_stat = stat_label.getAttribute("data-value");
            let private_stats = { name: "", Flat_value: 0, Percentage_value: 0 };
            let private_effects = { name: "", Flat_value: 0, Percentage_value: 0 };
            let private_main_wengine = { name: "", Flat_value: 0, Percentage_value: 0 };
            let private_sub_wengine = { name: "", Flat_value: 0, Percentage_value: 0 };
            let private_core = { name: "", Flat_value: 0, Percentage_value: 0 };
            let temporary_disc_counter = [];
            let is_exclusive = false;

            exclusive_stats.forEach(e_stat => {
                if(e_stat == stat["name"])
                    is_exclusive = true;
            });
            
            discs_list.forEach(disc => {
                temporary_disc_counter.push({ id : disc["id"], stat_name : disc["stat_name"], stat_value : disc["value"], stat_type : disc["type"], counter : 0 , is_aplied : false});
            });
            
            disc_slot.forEach(slot => {
                temporary_disc_counter.forEach(disc_counter => {
                    if(disc_counter["id"] == slot["id"])
                        disc_counter["counter"] += 1;
                });

                /* MAIN STATS CALC */
                if(slot["main_stat_name"] == stat["name"]){
                    if(private_stats["name"] == "")
                        private_stats["name"] = stat["name"];
                    
                    if(private_stats["name"] == stat["name"]){
                        if(is_exclusive)
                            private_stats["Flat_value"] += Number(slot["main_stat_value"]);
                        else
                            private_stats[slot["main_stat_type"]+"_value"] += Number(slot["main_stat_value"]);    
                    }
                }

                /* SUB STATS CALC */
                for(let sub_index = 1; sub_index <= 4; sub_index++){
                    if(slot["substat_name_"+sub_index] == stat["name"]){
                        if(private_stats["name"] == "")
                            private_stats["name"] = stat["name"];

                        if(private_stats["name"] == stat["name"]){
                            if(is_exclusive)
                                private_stats["Flat_value"] +=
                                    Number(slot["substat_value_"+sub_index]) * (Number(slot["substat_role_"+sub_index]) + 1);
                            else
                                private_stats[slot["substat_type_"+sub_index]+"_value"] +=
                                    Number(slot["substat_value_"+sub_index]) * (Number(slot["substat_role_"+sub_index]) + 1);
                        }
                    }
                }

                /* EFFECT STATS CALC */
                temporary_disc_counter.forEach(disc_counter => {
                    if(private_effects["name"] == "")
                        private_effects["name"] = stat["name"];

                    if(private_effects["name"] == stat["name"] && stat["name"] == disc_counter["stat_name"]){
                        if(disc_counter["counter"] >= 2 && !disc_counter["is_aplied"]){
                            disc_counter["is_aplied"] = true;

                            if(is_exclusive)
                                private_effects["Flat_value"] += Number(disc_counter["stat_value"]);
                            else
                                private_effects[disc_counter["stat_type"]+"_value"] += Number(disc_counter["stat_value"]);
                        }
                    }
                });
            });

            wengine_slot.forEach(wengine => {
                /* W-ENGINE MAIN STAT CALC */
                if(stat["name"] == wengine["main_stat_name"]){
                    if(private_main_wengine["name"] == ""){
                        private_main_wengine["name"] = wengine["main_stat_name"];
                        if(is_exclusive)
                            private_main_wengine["Flat_value"] += Number(wengine["main_stat_value"]);
                        else
                            private_main_wengine[wengine["main_stat_type"]+"_value"] += Number(wengine["main_stat_value"]);
                        
                    }
                }

                /* W-ENGINE SUB STAT CALC */
                if(stat["name"] == wengine["sub_stat_name"]){
                    if(private_sub_wengine["name"] == ""){
                        private_sub_wengine["name"] = wengine["sub_stat_name"];
                        if(is_exclusive)
                            private_sub_wengine["Flat_value"] += Number(wengine["sub_stat_value"]);
                        else
                            private_sub_wengine[wengine["sub_stat_type"]+"_value"] += Number(wengine["sub_stat_value"]);
                    }
                }
            });

            /* CORE STAT CALC */

            agent_core.forEach(core => {
                if(stat["id"] == core["stat_id"] && core["is_active"]){
                    if(is_exclusive)
                        private_core["Flat_value"] += Number(core["stat_value"]);
                    else
                        private_core[stat["type"]+"_value"] += Number(core["stat_value"]);
                }
            });

            let base_stat_post_core = (Number(base_stat * Number(private_core["Percentage_value"]))) + Number(private_core["Flat_value"]);
            let base_stat_post_wengine = (Number(base_stat * Number(private_main_wengine["Percentage_value"]))) + Number(private_main_wengine["Flat_value"]);

            let altered_base = Number(base_stat_post_core) + Number(base_stat_post_wengine) + Number(base_stat);

            let effect_stat      = (Number(altered_base) * Number(private_effects["Percentage_value"])     / 100) + Number(private_effects["Flat_value"]);
            let disc_stat        = (Number(altered_base) * Number(private_stats["Percentage_value"])       / 100) + Number(private_stats["Flat_value"]);
            let wengine_sub_stat = (Number(altered_base) * Number(private_sub_wengine["Percentage_value"]) / 100) + Number(private_sub_wengine["Flat_value"]);

            base_stat = Number(altered_base) + Number(disc_stat) + Number(effect_stat) + Number(wengine_sub_stat);

            let perc_string = "";
            if(stat["type"] == "Percentage")
                perc_string = "%";

            let decimal_stats = ["CRIT Rate", "CRIT DMG", "PEN Ratio", "Energy Regen"];

            for(let index = 0; index < decimal_stats.length; index++){
                if(stat["name"] == decimal_stats[index]){
                    stat_label.innerHTML = Number(base_stat).toFixed(2) + perc_string;
                    break;
                }else
                    stat_label.innerHTML = Number(base_stat).toFixed(0) + perc_string;
            }
        }
    });
}

function setDiscInfo(id, slot){
    discs_list.forEach(disc => {
        if(disc["id"] == id){
            slot["id"] = id;
            document.getElementById("slot-frame-info").style.display = "flex";
            const slot_name = document.getElementById("slot-disc-name-label");
            const slot_effect_name = document.getElementById("slot-effect-name");
            const slot_effect_value = document.getElementById("slot-effect-value");
            let perc_string = "";

            if(disc["type"] == "Percentage") perc_string = "%";
            slot_name.innerHTML = disc["disc_name"] + " ["+slot["slot"]+"]";
            slot_effect_name.innerHTML = disc["disc_name"];
            slot_effect_value.innerHTML = "2-Piece Set: " + disc["stat_name"] + "+" + disc["value"];
            if(disc["type"] == "Percentage") text = slot_effect_value.innerHTML+perc_string;
        }
    });
    changeDiscInfo(slot["slot"]);
}

function changeDiscInfo(position){
    discs_list.forEach(disc => {
        disc_slot.forEach(slot => {
            const slot_name = document.getElementById("slot-disc-name-label");
            const slot_effect_name = document.getElementById("slot-effect-name");
            const slot_effect_value = document.getElementById("slot-effect-value");
            const substat_name_list = document.querySelectorAll("#substat-selected-name");
            const substat_value_list = document.querySelectorAll("#substat-selected-value");
            const substat_role_list = document.querySelectorAll("#substat-selected-role");

            //Change SubStats
            if(position == slot["slot"]){
                substat_name_list.forEach(substat_name => {
                    let substat_position = substat_name.getAttribute("data-value")
                    substat_name.textContent = slot["substat_name_"+substat_position];
                });

                substat_value_list.forEach(substat_value => {
                    let substat_position = substat_value.getAttribute("data-value")

                    if(slot["substat_value_"+substat_position] != 0){
                        if(slot["substat_type_"+substat_position] == "Flat")
                            substat_value.textContent = Number(Number(slot["substat_value_"+substat_position]) * (Number(slot["substat_role_"+substat_position])+1)).toFixed(0);
                        else
                            substat_value.textContent = Number(Number(slot["substat_value_"+substat_position]) * (Number(slot["substat_role_"+substat_position])+1)).toFixed(1)+"%";
                    }else
                        substat_value.textContent = "";
                    
                });
            }

            //Change Info+Stat
            if(position == slot["slot"] && slot["id"] == 0) 
                document.getElementById("slot-frame-info").style.display = "none";
            if(position == slot["slot"] && disc["id"] == slot["id"]){
                document.getElementById("slot-frame-info").style.display = "flex";
                slot_name.innerHTML = disc["disc_name"] + " ["+position+"]";

                stat_selected_name.textContent = "Main Stat";
                stat_selected_value.textContent = "";

                if(slot["main_stat_name"] != ""){
                    stat_selected_name.textContent = slot["main_stat_name"];
                    if(slot["main_stat_type"] == "Percentage")
                        stat_selected_value.textContent = slot["main_stat_value"] +"%";
                    else
                        stat_selected_value.textContent = slot["main_stat_value"];
                }

                slot_effect_name.innerHTML = disc["disc_name"];
                slot_effect_value.innerHTML = "2-Piece Set: " + disc["stat_name"] + "+" + disc["value"];
                
                if(disc["type"] == "Percentage"){
                    text = slot_effect_value.innerHTML;
                    slot_effect_value.innerHTML = text + "%";
                }
                
                substat_role_list.forEach(substat_role => {
                    if(slot["substat_role_"+substat_role.getAttribute("data-value")] > 0)
                        substat_role.textContent = "+" + slot["substat_role_"+substat_role.getAttribute("data-value")];
                    else
                        substat_role.textContent = "";
                });
                
                setDropdownStats(slot);
                return;
            }
        });
    });
}

function removeDropdownStatsOptions(){
    const stats_list = document.querySelectorAll(".stat-dropdown-list li");
    if(stats_list)
        stats_list.forEach( li => li.remove() );
}

function setDropdownStats(slot){
    var ul_stat = document.getElementById("stat-dropdownList");
    removeDropdownStatsOptions();

    possible_stats_list.forEach(stat => {
        if(stat["position"] == slot["slot"]){
            let is_same_stat = false;
            var li = document.createElement("li");
            var span = document.createElement("span");
            li.setAttribute("data-name", stat["name"]);
            li.setAttribute("data-type", stat["type"]);
            li.setAttribute("data-value", stat["value"]);

            for(let pos = 1; pos <= 4; pos++)
                if(slot["substat_name_"+pos] == stat["name"] && slot["substat_type_"+pos] == stat["type"])
                    is_same_stat = true;

            if(!is_same_stat){
                li.addEventListener("click", () => {
                    const name = li.getAttribute("data-name");
                    const value = li.getAttribute("data-value");
                    
                    if(!is_same_stat){
                        slot["main_stat_name"] = name;
                        slot["main_stat_value"] = Number(value).toFixed(0);
                        slot["main_stat_type"] = stat["type"];
                        setDropdownSubStats(slot, slot["slot"]);
                        changeDiscInfo(slot["slot"]);
                    }
                    updateAgentStats();
                    stat_dropdownList.style.display = "none";
                });

                if(stat["type"] == "Flat")
                    span.textContent = stat["name"];
                else
                    span.textContent = stat["name"] + "%";

                li.appendChild(span);
                ul_stat.appendChild(li);
            }
        }
    });
}

function setDropdownSubStats(slot, position){
    clearDropdownSubStatsOptions();
    substat_dropdownList.forEach(ul => {
        possible_substats_list.forEach(stat => {
            let is_same_stat = slot["main_stat_name"] == stat["name"] && slot["main_stat_type"] == stat["type"];

            //Check if substats are the same ._.
            for(let pos = 1; pos <= 4; pos++)
                if(slot["substat_name_"+pos] == stat["name"] && slot["substat_type_"+pos] == stat["type"])
                    is_same_stat = true;

            if(!is_same_stat){
                var li = document.createElement("li");
                var span = document.createElement("span");
                li.setAttribute("data-name", stat["name"]);
                li.setAttribute("data-type", stat["type"]);

                li.addEventListener("click", () => {
                    const name = li.getAttribute("data-name");
                    const type = li.getAttribute("data-type");
                    const substat_position = ul.getAttribute("data-value");
                    let value = 0;

                    constant_substats.forEach(substat => {
                        if(substat["name"] == name && substat["type"] == type)
                            value = substat["value"];
                    });
                    
                    slot["substat_name_"+substat_position] = name;
                    slot["substat_type_"+substat_position] = type;
                    slot["substat_value_"+substat_position] = value;

                    setDropdownStats(slot);
                    changeSubStatsInfo(slot, substat_position, name, value, type)
                    
                    updateAgentStats();
                    ul.style.display = "none";
                });

                if(stat["type"] == "Flat")
                    span.textContent = stat["name"];
                else
                    span.textContent = stat["name"] + "%";

                li.appendChild(span);
                ul.appendChild(li);
            }
        });
    });
}

function changeSubStatsInfo(slot, substat_position){
    substat_dropdownButton.forEach(button => {
        if(substat_position == button.getAttribute("data-value")){
            const substat_name_list = document.querySelectorAll("#substat-selected-name");
            const substat_value_list = document.querySelectorAll("#substat-selected-value");
            
            substat_name_list.forEach(substat_name => {
                if(substat_name.getAttribute("data-value") == substat_position)
                    substat_name.textContent = slot["substat_name_"+substat_position];
            });

            substat_value_list.forEach(substat_value => {
                if(substat_value.getAttribute("data-value") == substat_position){
                    if(slot["substat_type_"+substat_position] == "Flat")
                        substat_value.textContent = Number(slot["substat_value_"+substat_position]) * (Number(slot["substat_role_"+substat_position]) + 1);
                    else
                        substat_value.textContent = Number(Number(slot["substat_value_"+substat_position]) * (Number(slot["substat_role_"+substat_position]) + 1)).toFixed(1)+"%";
                }
            });
        }
    });
}

function clearDropdownSubStatsOptions(){
    const stats_list = document.querySelectorAll("#substat-dropdownList li");
    if(stats_list)
        stats_list.forEach( li => li.remove() );
}

document.querySelectorAll("#disc").forEach((disc) => {
    disc.addEventListener("click", () => {
        let position = disc.getAttribute("data-value");            
        changeDiscInfo(position);
        disc.classList.add('active');

        disc_slot.forEach(slot => {
            if(slot["slot"] == position){
                slot["is_selected"] = true;
                document.getElementById("slot-position-selected").value = position;
                setDropdownStats(slot);
            }
        });

        updateAgentStats();
    });
    
    document.addEventListener("click", (event) => {
        var isSelected = false;
        
        if(!disc.contains(event.target) && disc.classList.contains("active")){
            let select_exception = ["#stat-dropdownButton", "#stat-dropdownList","#substat-dropdownButton", "#substat-dropdownList", "#up-stat", "#down-stat"];
            let position = disc.getAttribute("data-value");
            let disc_div;
            
            document.querySelectorAll("#disc-active").forEach((disc_selected) => {
                if(!isSelected){
                    isSelected = disc_selected.contains(event.target);
                    
                    if(isSelected){
                        disc_div = disc_selected;
                        let label = document.getElementById("disc-label-"+disc.getAttribute("data-value"));
                        label.innerHTML = "";
                    }
                }
            });

            select_exception.forEach(div => {
                isSelected = setSelectedDetection(div, isSelected);
            });

            if(!isSelected){
                disc.classList.remove('active');
                disc_slot.forEach(slot => {
                    if(slot["slot"] == position)
                        slot["is_selected"] = false;
                });
            }else{
                if(disc_div){
                    disc_slot.forEach(slot => {
                        if(slot["slot"] == position){
                            slot["is_active"] = true;
                            background_div = document.getElementById("disc-background-"+position);
                            background_div.style = 'background-image: url("'+disc_div.getAttribute('data-img')+'")';
                            setDiscInfo(disc_div.getAttribute("data-id"), slot);
                            document.getElementById("slot-position-selected").value = position;
                            setDropdownStats(slot);
                        }
                    });
                }
            }
        }
        updateAgentStats();
    });
});

function setSelectedDetection(div, isSelected){
    document.querySelectorAll(div).forEach((disc_selected) => {
        if(!isSelected)
            isSelected = disc_selected.contains(event.target);
    });
    return isSelected;
}

const wengine = document.getElementById("w-engine");
wengine.addEventListener("click", () => {
    wengine.classList.add('active');
    updateAgentStats();
});

document.addEventListener("click", (event) => {
    if(!wengine.contains(event.target)){
        wengine.classList.remove('active');
    }
});