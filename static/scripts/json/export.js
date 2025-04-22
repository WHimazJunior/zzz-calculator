function ExportBuild(){
    let export_file = {};

    export_file["agent_id"] = document.getElementById("current-agent-id").value;
    export_file["agent_core"] = [];
    export_file["agent_promotion"] = [];
    export_file["agent_maxed"] = document.getElementById("agent-promotion-maxed").classList.contains("active");
    export_file["wengine_id"] = document.getElementById("current-wengine-id").value;
    export_file["disc_slot"] = [];

    agent_promotion.forEach(promo => {
        if(promo["slot"] != 0)
            export_file["agent_promotion"].push(promo["is_active"]);
    });

    agent_core.forEach(core => {
        if(core["slot"] != 0)
            export_file["agent_core"].push(core["is_active"]);
    });

    disc_slot.forEach(slot => {
        let temp_disc_slot = {
            id: slot["id"],
            slot: slot["slot"],
            is_active: slot["is_active"],
            is_selected: slot["is_selected"],
            main_stat_name: slot["main_stat_name"],
            main_stat_value: slot["main_stat_value"],
            main_stat_type: slot["main_stat_type"],


            substat_name_1: slot["substat_name_1"],
            substat_value_1: slot["substat_value_1"],
            substat_type_1: slot["substat_type_1"],
            substat_role_1: slot["substat_role_1"],

            substat_name_2: slot["substat_name_2"],
            substat_value_2: slot["substat_value_2"],
            substat_type_2: slot["substat_type_2"],
            substat_role_2: slot["substat_role_2"],

            substat_name_3: slot["substat_name_3"],
            substat_value_3: slot["substat_value_3"],
            substat_type_3: slot["substat_type_3"],
            substat_role_3: slot["substat_role_3"],

            substat_name_4: slot["substat_name_4"],
            substat_value_4: slot["substat_value_4"],
            substat_type_4: slot["substat_type_4"],
            substat_role_4: slot["substat_role_4"]
        };

        export_file["disc_slot"].push(temp_disc_slot);
    });

    let agent_name = "build";

    agents_list.forEach(agent => {
        if(export_file["agent_id"] == agent["id"]){
            agent_name = agent["name"];
            return;
        }
    });

    const blob = new Blob([JSON.stringify(export_file, null, 4)], { type: "text/plain" });

    const link = document.createElement("a");
    link.href = URL.createObjectURL(blob);
    link.download = agent_name+".json";
    link.click();

    URL.revokeObjectURL(link.href);
    console.log(export_file);
}