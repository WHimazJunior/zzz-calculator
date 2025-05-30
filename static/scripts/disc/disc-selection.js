var discs = [];

discs_list.forEach(disc => {
    let path = static_path+"Discs/"+encodeURIComponent(disc["disc_name"])+".png";
    discs.push({ id : disc["id"], name : disc["disc_name"], img : path});
});

let disc_startIndex = 0;
const disc_gridContainer = document.getElementById("disc-gridContainer");
const disc = document.getElementById("discDisplay");

function updateDiscGrid() {
    disc_gridContainer.innerHTML = "";

    let hoveredElement = document.querySelector(".grid-item:hover"); // Check if mouse is over an existing image

    for (let i = disc_startIndex; i < disc_startIndex + displayCount && i < discs.length; i++) {
        const div = document.createElement("div");
        div.id = "disc-active";
        div.classList.add("disc-icon");
        div.setAttribute("data-id", discs[i].id);
        div.setAttribute("data-img", discs[i].img);

        const img = document.createElement("img");
        img.id = discs[i].id;
        img.src = discs[i].img;
        img.alt = discs[i].name;
        img.classList.add("disc-grid-item");
        img.setAttribute("data-id", discs[i].id);
        img.setAttribute("data-img", discs[i].img);

        img.addEventListener("mouseenter", () => {
            discDisplay.textContent = discs[i].name;
        });

        div.appendChild(img);
        disc_gridContainer.appendChild(div);
    }

    setTimeout(() => {
        const newHoveredElement = document.querySelector(".disc-grid-item:hover");
        if (newHoveredElement) {
            discDisplay.textContent = newHoveredElement.alt;
        }
    }, 0);
}

document.getElementById("disc-gridContainer").addEventListener("wheel", (event) => {
    event.preventDefault();
    if (event.deltaY > 0) {
        disc_startIndex = Math.min(disc_startIndex + 3, discs.length - displayCount);
    } else {
        disc_startIndex = Math.max(0, disc_startIndex - 3);
    }
    updateDiscGrid();
}, { passive: false });

updateDiscGrid();

function updateDiscSlotsImages(){
    disc_slot.forEach(slot => {
        if(slot["id"] != 0){
            let disc_element = document.getElementById("disc-background-"+slot["slot"]);
            document.getElementById("disc-label-"+slot["slot"]).innerHTML = "";
            discs.forEach(disc => {
                if(disc["id"] == slot["id"]){
                    disc_element.style.backgroundImage = 'url("'+disc['img']+'")';
                }
            });
        }else{
            let disc_element = document.getElementById("disc-background-"+slot["slot"]);
            document.getElementById("disc-label-"+slot["slot"]).innerHTML = slot["slot"];
            disc_element.style.backgroundImage = '';
        }
    });
}