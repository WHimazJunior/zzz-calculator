/*Resize Text Size of Stats*/
callResizer();

window.addEventListener('resize', function(){
    callResizer();
});

function resizeAgentNameOverflowText(div){
    let fontSize = parseInt(window.getComputedStyle(div).fontSize);

    div.style.fontSize = '26px';
    let is_beyond = div.scrollHeight > div.clientHeight || div.scrollWidth  > div.clientWidth;

    while(is_beyond){
        is_beyond = div.scrollHeight > div.clientHeight || div.scrollWidth  > div.clientWidth;

        fontSize -= 4;
        div.style.fontSize = fontSize + 'px';
        
        if(fontSize < 22){
            console.log(fontSize);
            div.style.fontSize = '22px';
            break;
        }
    }
}

function resizeAgentFactionOverflowText(div){
    let fontSize = parseInt(window.getComputedStyle(div).fontSize);
    
    div.style.fontSize = '16px';
    let is_beyond = div.scrollHeight > div.clientHeight || div.scrollWidth  > div.clientWidth;

    while(is_beyond){
        is_beyond = div.scrollHeight > div.clientHeight || div.scrollWidth  > div.clientWidth;

        fontSize -= 0.3;
        div.style.fontSize = fontSize + 'px';
        
        if(fontSize < 12){
            div.style.fontSize = '12px';
            break;
        }
    }
}

function resizeWEngineOverflowText(div){
    let fontSize = parseInt(window.getComputedStyle(div).fontSize);
    
    div.style.fontSize = '22px';
    let is_beyond = div.scrollHeight > div.clientHeight || div.scrollWidth  > div.clientWidth;

    while(is_beyond){
        is_beyond = div.scrollHeight > div.clientHeight || div.scrollWidth  > div.clientWidth;

        fontSize -= 0.3;
        div.style.fontSize = fontSize + 'px';
        
        if(fontSize < 18){
            div.style.fontSize = '18px';
            break;
        }
    }
}

function callResizer(){
    resizeAgentFactionOverflowText(document.getElementById("overflow-div-agent-faction"));
    resizeAgentNameOverflowText(document.getElementById("overflow-div-agent-name"));
    resizeWEngineOverflowText(document.getElementById("overflow-div-wengine-name"));
}
