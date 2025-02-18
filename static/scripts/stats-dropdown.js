const stats_dropdownButton = document.getElementById("stats-dropdownButton");
const stats_dropdownList = document.getElementById("stats-dropdownList");
const stats_selectedText = document.getElementById("stats-selectedText");
const stats_input = document.getElementById("stats-input");

stats_dropdownButton.addEventListener("click", (event) => {
    event.preventDefault();
    stats_dropdownList.style.display =
    stats_dropdownList.style.display === "block" ? "none" : "block";
});

document.querySelectorAll(".stats-dropdown-list li").forEach((item) => {
    item.addEventListener("click", () => {
        const value = item.textContent.trim();
        stats_selectedText.textContent = value;
        stats_input.value = item.getAttribute("data-value");
        stats_dropdownList.style.display = "none";
    });
});

document.addEventListener("click", (event) => {
    if (!stats_dropdownButton.contains(event.target) && !stats_dropdownList.contains(event.target)) {
        stats_dropdownList.style.display = "none";
    }
});