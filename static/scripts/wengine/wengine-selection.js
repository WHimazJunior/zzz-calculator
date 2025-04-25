/*import { promises as fs } from 'fs';

async function checkIfFileExists(path) {
    try{
        await fs.access(path);
        console.log(path + "\nExists");
        return true;
    }catch(err){
        console.log(path + "\nDoes not Exists");
        return false;
    }
}*/

async function checkIfFileExists(url) {
    try{
        const resposta = await fetch(url, { method: 'HEAD' }); // HEAD evita baixar o conteúdo
        return resposta.ok; // true se status 200–299
    }catch(erro){
        console.error("Erro ao tentar aceder ao ficheiro:", erro);
        return false;
    }
}
  

var wengines = [];
let wengine_startIndex = 0;
const wengine_gridContainer = document.getElementById("wengine-gridContainer");
const wengineDisplay = document.getElementById("wengineDisplay");

wengine_list.forEach(wengine => {
    let path = static_path+"WEngines/"+wengine["name"]+".png";
    wengines.push({ id : wengine["id"], name : wengine["name"], img : path, tier : wengine["tier"]});
});

function updateWengineGrid() {
    wengine_gridContainer.innerHTML = "";

    let hoveredElement = document.querySelector(".grid-item:hover"); // Check if mouse is over an existing image

    for (let i = wengine_startIndex; i < wengine_startIndex + displayCount && i < wengines.length; i++) {
        const img = document.createElement("img");
        img.id = wengines[i].id;
        img.src = wengines[i].img;
        img.alt = wengines[i].name;
        img.classList.add("wengine-grid-item");
        img.addEventListener("click", (event) => getWEngineInfo(event.target.id));

        img.addEventListener("mouseenter", () => {
            wengineDisplay.textContent = wengines[i].name;
        });

        if(wengines[i].tier == "B")
            img.style.background = "linear-gradient(-75deg, rgb(0, 122, 189), rgb(50, 192, 226))";
        if(wengines[i].tier == "A")
            img.style.background = "linear-gradient(-75deg, rgb(158, 0, 250), rgb(240, 5, 250))";
        if(wengines[i].tier == "S")
            img.style.background = "linear-gradient(-75deg, rgb(255, 125, 0), rgb(250, 210, 5))";

        wengine_gridContainer.appendChild(img);
    }

    setTimeout(() => {
        const newHoveredElement = document.querySelector(".wengine-grid-item:hover");
        if (newHoveredElement) {
                wengineDisplay.textContent = newHoveredElement.alt;
        }
    }, 0);
}

document.getElementById("wengine-gridContainer").addEventListener("wheel", (event) => {
    event.preventDefault();
    if (event.deltaY > 0) {
        wengine_startIndex = Math.min(wengine_startIndex + 3, wengines.length - displayCount);
    } else {
        wengine_startIndex = Math.max(0, wengine_startIndex - 3);
    }
    updateWengineGrid();
}, { passive: false });

updateWengineGrid();

function getWEngineInfo(id){
    document.getElementById("current-wengine-id").value = id;
    wengine_name = document.getElementById("w-engine-name-label");
    wengine_video = document.getElementById("w-engine-video");
    wengine_player = document.getElementById("w-engine-video-player");

    wengine_base_stat_name  = document.getElementById("w-engine-base-stat-name");
    wengine_base_stat_value = document.getElementById("w-engine-base-stat-value");
    wengine_sub_stat_name   = document.getElementById("w-engine-sub-stat-name");
    wengine_sub_stat_value  = document.getElementById("w-engine-sub-stat-value");

    wengine_type_icon = document.getElementById("w-engine-type-image");


    wengine_video.style.display =
        wengine_video.style === "block" ? "none" : "block";

    wengine_list.forEach(wengine => {
        if(id == wengine["id"]){
            wengine_owner = document.getElementById("w-engine-owner-image");
            let owner_path = "";
            let perc_string = "";

            wengine_name.innerHTML = wengine["name"];
            document.getElementById("wengine-name").value = wengine["name"];

            wengine_base_stat_name.innerHTML  = wengine["main_stat_name"];
            document.getElementById("wengine-main-stat-name").value = wengine["main_stat_name"];
            wengine_base_stat_value.innerHTML = wengine["main_stat_value"];
            document.getElementById("wengine-main-stat-value").value = wengine["main_stat_value"];
            

            if(wengine["sub_stat_type"] == "Percentage") perc_string = "%";

            wengine_sub_stat_name.innerHTML   = wengine["sub_stat_name"];
            document.getElementById("wengine-substat-name").value = wengine["sub_stat_name"];
            wengine_sub_stat_value.innerHTML  = wengine["sub_stat_value"] + perc_string;
            document.getElementById("wengine-substat-value").value = wengine["sub_stat_value"] + perc_string;

            video_path = static_path+"WEngines/Video/"
            /*if(checkIfFileExists(video_path + wengine["name"] + '.mp4'))
                wengine_player.src = video_path + wengine["name"] + '.mp4';
            else
                wengine_player.src = video_path + wengine["name"] + '.gif';*/

            checkIfFileExists(video_path + wengine["name"] + '.mp4')
            .then(exist => {
                if(exist){
                    wengine_player.src = video_path + wengine["name"] + '.mp4';
                }else{
                    wengine_player.src = video_path + wengine["name"] + '.gif';
                }
            });
            console.log(wengine_player.src);


            wengine_slot.forEach(slot => {
                slot["id"] = wengine["id"];
                slot["main_stat_name"] = wengine["main_stat_name"];
                slot["main_stat_value"] = wengine["main_stat_value"];
                slot["main_stat_type"] = wengine["main_stat_type"];

                slot["sub_stat_name"] = wengine["sub_stat_name"];
                slot["sub_stat_value"] = wengine["sub_stat_value"];
                slot["sub_stat_type"] = wengine["sub_stat_type"];
            });

            let owner = "";

            wengine_agent_list.forEach(wengine_agent => {
                if(wengine_agent["id"] == wengine["id"]){
                    owner = wengine_agent["agent_name"];
                    owner_path = static_path+"Agents/" + wengine_agent["agent_name"] + ".png";
                }
            });

            wengine_owner.src = 
                owner_path == "" ? wengine_owner.src = static_path+"Agents/Icon.png" : wengine_owner.src = owner_path;

            document.getElementById("wengine-owner").value = owner;
            document.getElementById("wengine-type").value = wengine["type"];

            let type_icon_path = static_path+"Types/" + wengine["type"] + ".png";
            wengine_type_icon.src = type_icon_path;

            updateAgentStats();
        }
    });

    //resizeWEngineOverflowText(document.getElementById("overflow-div-wengine-name"));
    callResizer();
}