function activateCore(event){
    var letter = event.target.getAttribute("data-letter");

    agent_core.forEach(core => {
        if(core["letter"] == letter){
            core["is_active"] = !core["is_active"];
            for(let index = agent_core.length; index >= 0; index--)
                if(index > core["slot"])
                    agent_core[index-1]["is_active"] = false;
            
            for(let index = 1; index <= agent_core.length; index++)
                if(index < core["slot"])
                    agent_core[index-1]["is_active"] = true;
        }
    });
    
    agent_core.forEach(core => {
        if(core["is_active"]){
            core_outline_list = document.querySelectorAll(".core-label-outline");

            core_outline_list.forEach(core_outline => {
                if(core["letter"] == core_outline.getAttribute("data-letter")){
                    core_outline.style = 
                        "color: var(--light-color);"+
                        "text-shadow: -1px -1px 0 rgb(13, 13, 13), 0 0 3px var(--light-color), 0 0 4px var(--light-color), 0 0 5px var(--light-color), 0 0 6px var(--light-color), 0 0 9px var(--light-color);";
                }
            });
        }else{
            core_outline_list = document.querySelectorAll(".core-label-outline");

            core_outline_list.forEach(core_outline => {
                if(core["letter"] == core_outline.getAttribute("data-letter")){
                    core_outline.style = 
                        "text-shadow: -1px -1px 0 rgb(13, 13, 13);";
                }
            });
        }
    });

    updateCoreDescription();
}

function updateCoreDescription(){
    base_stat_id = 3;
    base_stat = 0;
    extra_stat_id = 0;
    extra_stat = 0;

    number_core_active = 0;

    agent_core.forEach(slot => {
        if(slot["slot"]%2 == 0) extra_stat_id = slot["stat_id"];
        if(slot["is_active"]){
            number_core_active++;
            if(slot["slot"]%2 == 0)
                extra_stat+=slot["stat_value"];
            else
                base_stat+=slot["stat_value"];
        }
    });

    document.getElementById("agent-core").value = number_core_active;

    let base_div = document.getElementById("core-base-effect");
    let extra_div = document.getElementById("core-second-effect");

    base_div.innerHTML = "Base ATK increase by " + base_stat;
    stats_list.forEach(stat => {
        if(stat["id"] == extra_stat_id){
            if(stat["name"] == "Energy Regen")
                extra_div.innerHTML = stat["name"] + " increase by " + Number(extra_stat).toFixed(2);
            else if(stat["type"] == "Percentage")
                extra_div.innerHTML = stat["name"] + " increase by " + Number(extra_stat).toFixed(1);
            else
                extra_div.innerHTML = stat["name"] + " increase by " + Number(extra_stat).toFixed(0);
        }
    });
}