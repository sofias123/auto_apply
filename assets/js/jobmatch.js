async function applyNowJob(jobIndex) {
    document.getElementById("applyNow").innerHTML = 'Applying!';
    document.getElementById("preloader-apply").style.display="block";
    await sleep(3500);
    var jobName = document.getElementById("jobTitle").textContent;
    var desiredJob = localStorage.getItem("applyRole");
    // Get the array from localStorage and parse it
    var storedArray = JSON.parse(localStorage.getItem('jobappliedDetails'));

    if (jobName.includes(desiredJob)) {
        document.getElementById("preloader-apply").style.display="none";
        document.getElementById("applyNow").innerHTML = 'Applied!';
        var storedHyperlinkInnerHTMLList = JSON.parse(localStorage.getItem("hyperlinkInnerHTMLList"));
        console.log(storedHyperlinkInnerHTMLList); // Check the contents of the stored array
        storedHyperlinkInnerHTMLList[jobIndex] = "Applied!";
        localStorage.setItem("hyperlinkInnerHTMLList", JSON.stringify(storedHyperlinkInnerHTMLList));
        document.getElementById("applyNow").innerHTML = 'Applied!';
        var innerHTMLs = JSON.parse(localStorage.getItem('myLinksInnerHTML'));
        innerHTMLs[jobIndex] = "Applied!";
        localStorage.setItem('myLinksInnerHTML', JSON.stringify(innerHTMLs));
        storedArray.push('Applied!');
    } else {
        document.getElementById("preloader-apply").style.display="none";
        document.getElementById("applyNow").innerHTML = 'No Match';
        var storedHyperlinkInnerHTMLList = JSON.parse(localStorage.getItem("hyperlinkInnerHTMLList"));
        console.log(storedHyperlinkInnerHTMLList); // Check the contents of the stored array
        storedHyperlinkInnerHTMLList[jobIndex] = "No Match";
        localStorage.setItem("hyperlinkInnerHTMLList", JSON.stringify(storedHyperlinkInnerHTMLList));
        document.getElementById("applyNow").innerHTML = 'No Match';
        var innerHTMLs = JSON.parse(localStorage.getItem('myLinksInnerHTML'));
        innerHTMLs[jobIndex] = "No Match";
        localStorage.setItem('myLinksInnerHTML', JSON.stringify(innerHTMLs));
        storedArray.push('No Match!');
    }
    // Save the updated array back to localStorage
    localStorage.setItem('jobappliedDetails', JSON.stringify(storedArray));
    console.log(innerHTMLs);
    await sleep(3500);
    window.location.href = "job_listing.html?l=true"; 
    
}
