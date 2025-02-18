const element_dropdownButton = document.getElementById("element-dropdownButton");
const element_dropdownList = document.getElementById("element-dropdownList");
const element_selectedIcon = document.getElementById("element-selectedIcon");
const element_selectedText = document.getElementById("element-selectedText");
const element_input = document.getElementById("element-input");

if(element_dropdownButton){
    element_dropdownButton.addEventListener("click", (event) => {
        event.preventDefault();
        element_dropdownList.style.display =
        element_dropdownList.style.display === "block" ? "none" : "block";
    });
    
    document.querySelectorAll(".element-dropdown-list li").forEach((item) => {
        item.addEventListener("click", () => {
            const icon = item.getAttribute("data-icon");
            const value = item.textContent.trim();
            element_selectedIcon.src = icon;
            element_selectedText.textContent = value;
            element_input.value = value;
            element_dropdownList.style.display = "none";
        });
    });
    
    document.addEventListener("click", (event) => {
        if (!element_dropdownButton.contains(event.target) && !element_dropdownList.contains(event.target)) {
            element_dropdownList.style.display = "none";
        }
    });
}

/**/

const type_dropdownButton = document.getElementById("type-dropdownButton");
const type_dropdownList = document.getElementById("type-dropdownList");
const type_selectedIcon = document.getElementById("type-selectedIcon");
const type_selectedText = document.getElementById("type-selectedText");
const type_input = document.getElementById("type-input");

if(type_dropdownButton){
    type_dropdownButton.addEventListener("click", (event) => {
        event.preventDefault();
        type_dropdownList.style.display =
        type_dropdownList.style.display === "block" ? "none" : "block";
    });
    
    document.querySelectorAll(".type-dropdown-list li").forEach((item) => {
        item.addEventListener("click", () => {
            const icon = item.getAttribute("data-icon");
            const value = item.textContent.trim();
            type_selectedIcon.src = icon;
            type_selectedText.textContent = value;
            type_input.value = value;
            type_dropdownList.style.display = "none";
        });
    });
    
    document.addEventListener("click", (event) => {
        if (!type_dropdownButton.contains(event.target) && !type_dropdownList.contains(event.target)) {
            type_dropdownList.style.display = "none";
        }
    });
}

/**/

const faction_dropdownButton = document.getElementById("faction-dropdownButton");
const faction_dropdownList = document.getElementById("faction-dropdownList");
const faction_selectedIcon = document.getElementById("faction-selectedIcon");
const faction_logo = document.getElementById("agent-faction-img");
const faction_selectedText = document.getElementById("faction-selectedText");
const faction_input = document.getElementById("faction-input");

if(faction_dropdownButton){
    faction_dropdownButton.addEventListener("click", (event) => {
        event.preventDefault();
        faction_dropdownList.style.display =
        faction_dropdownList.style.display === "block" ? "none" : "block";
    });
    
    document.querySelectorAll(".faction-dropdown-list li").forEach((item) => {
        item.addEventListener("click", () => {
            const icon = item.getAttribute("data-icon");
            const value = item.textContent.trim();
            faction_selectedIcon.src = icon;
            faction_logo.src = icon;
            faction_selectedText.textContent = value;
            faction_input.value = value;
            faction_dropdownList.style.display = "none";
        });
    });
    
    document.addEventListener("click", (event) => {
        if (!faction_dropdownButton.contains(event.target) && !faction_dropdownList.contains(event.target)) {
            faction_dropdownList.style.display = "none";
        }
    });
}

/**/

