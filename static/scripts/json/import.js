let import_input = document.getElementById("import-input");

import_input.addEventListener('change', (event) => {
    const file = event.target.files[0];

    if(file && file.name.endsWith('.json')){
        const reader = new FileReader();
        
        reader.onload = function(e) {
            try{
                let temp_agent_id = 0;
                let temp_agent_core = [];
                let temp_agent_promotion = [];
                let temp_agent_maxed = false;
                let temp_wengine_id = 0;
                let temp_disc_slot = [];
                
                const content = JSON.parse(e.target.result);
                Object.entries(content).forEach(([index, value]) => {
                    console.log(`${index}: ${value}`);
                    switch(index){
                        case "agent_id":
                            temp_agent_id = value;
                            break;
                        case "agent_core":
                            temp_agent_core = value;
                            break;
                        case "agent_promotion":
                            temp_agent_promotion = value;
                            break;
                        case "agent_maxed":
                            temp_agent_maxed = value;
                            break;
                        case "wengine_id":
                            temp_wengine_id = value;
                            break;
                        case "disc_slot":
                            temp_disc_slot = value;
                            break;
                        default:
                            console.log("ERROR JSON Index Not Found!");
                            break;
                    }
                });

                console.log("click");
                if(temp_agent_maxed != document.getElementById("agent-promotion-maxed").classList.contains("active"))
                    document.getElementById("agent-promotion-maxed").click();

                temp_agent_promotion.forEach((promo_level, index) => {
                    let star_list = document.querySelectorAll("#agent-promotion-star-image");

                    star_list.forEach(star => {
                        if(star.getAttribute("data-value") == index+1)
                            if(promo_level != star.classList.contains("active"))
                                star.click();
                    });
                });

                getAgentInfo(temp_agent_id);
                getWEngineInfo(temp_wengine_id);
                
                temp_agent_core.forEach((level, index) => {
                    let core_list = document.querySelectorAll(".core-base");

                    agent_core.forEach(core => {
                        if(core["slot"] == index+1){
                            core_list.forEach(core_element => {
                                if(core_element.getAttribute("data-letter") == core["letter"])
                                    if(core["is_active"] != level)
                                        core_element.click();
                            });
                        }
                    });
                });

                disc_slot.forEach(slot => {
                    temp_disc_slot.forEach(disc => {
                        if(slot["slot"] == disc["slot"]){
                            slot["id"] = disc["id"];
                            slot["is_active"] = disc["is_active"];
                            slot["is_selected"] = disc["is_selected"];

                            slot["main_stat_name"] = disc["main_stat_name"];
                            slot["main_stat_value"] = disc["main_stat_value"];
                            slot["main_stat_type"] = disc["main_stat_type"];

                            slot["substat_name_1"] = disc["substat_name_1"];
                            slot["substat_value_1"] = disc["substat_value_1"];
                            slot["substat_type_1"] = disc["substat_type_1"];
                            slot["substat_role_1"] = disc["substat_role_1"];
                            
                            slot["substat_name_2"] = disc["substat_name_2"];
                            slot["substat_value_2"] = disc["substat_value_2"];
                            slot["substat_type_2"] = disc["substat_type_2"];
                            slot["substat_role_2"] = disc["substat_role_2"];
                            
                            slot["substat_name_3"] = disc["substat_name_3"];
                            slot["substat_value_3"] = disc["substat_value_3"];
                            slot["substat_type_3"] = disc["substat_type_3"];
                            slot["substat_role_3"] = disc["substat_role_3"];
                            
                            slot["substat_name_4"] = disc["substat_name_4"];
                            slot["substat_value_4"] = disc["substat_value_4"];
                            slot["substat_type_4"] = disc["substat_type_4"];
                            slot["substat_role_4"] = disc["substat_role_4"];
                        }
                    });
                });
                updateDiscSlotsImages();
                updateAgentStats();

            }catch(error){
                console.log("teste3");
                console.log("JSON ERROR:\n" + error);
                alert("File not valid!");
            }
        };
        reader.readAsText(file);
    }else{
        alert("File not accepted!");
    }
});

function ImportBuild(){
    console.log("import build");
    import_input.click();
}