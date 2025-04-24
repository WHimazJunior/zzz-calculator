function exportBuildImage() {
    const div = document.getElementById("build-div");
    html2canvas(div).then(canvas => {
        const link = document.createElement("a");
        link.download = "minha-div.png";
        link.href = canvas.toDataURL();
        link.click();
    });
}