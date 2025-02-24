function activateAgentStar(event){
    var curr_star = event.target;
    var is_active = curr_star.classList.contains("active");

    stars_list = document.querySelectorAll("#agent-promotion-star-image");

    stars_list.forEach(star => {
        if(star.getAttribute("data-value") <= curr_star.getAttribute("data-value")){
            if(!star.classList.contains("active") && !is_active){
                star.classList.add("active");
                agent_promotion.forEach(promo => {
                    if(promo["slot"] == star.getAttribute("data-value"))
                        promo["is_active"] = true;
                });
            }
        }
        if(star.getAttribute("data-value") >= curr_star.getAttribute("data-value")){
            if(star.classList.contains("active") && is_active){
                star.classList.remove("active");
                agent_promotion.forEach(promo => {
                    if(promo["slot"] == star.getAttribute("data-value"))
                        promo["is_active"] = false;
                });
            }
        }
    });

    let count_disabled = 0;
    agent_promotion.forEach(promo => {
        if(promo["slot"] != 0 && promo["is_active"] == false)
            count_disabled++;
        if(count_disabled == 5)
            agent_promotion[0]["is_active"] = true;
    });

    getAgentInfo(document.getElementById("current-agent-id").value);
}

function activateAgentMaxedLevel(event){
    var button = event.target;
    var is_active = button.classList.contains("active");

    if(is_active)
        button.classList.remove("active");
    else
        button.classList.add("active");

    getAgentInfo(document.getElementById("current-agent-id").value);
}