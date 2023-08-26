function navToJobDetails(pagename){
    var islogged = localStorage.getItem("islogged");
    if(islogged == 'true') {
        window.location = pagename+'?l=true';
    } else{
        window.location = pagename+'?l=false';
    }
}

function autoApply(){
    if (localStorage.getItem('isAutoApplying') == 'false') {
        localStorage.setItem('isAutoApplying', true);
    }
    testSleep();

}

const sleep = async (milliseconds) => {
    await new Promise(resolve => {
        return setTimeout(resolve, milliseconds)
    });
};

const testSleep = async () => {
    document.getElementById("applying").style.display = "inline-block";
    document.getElementById("autoApply").style.display = "none";
    var storedHyperlinkInnerHTMLList = JSON.parse(localStorage.getItem("hyperlinkInnerHTMLList"));
    if(storedHyperlinkInnerHTMLList[2] == "Full Time") {
        window.location.href = "job_details.html?l=true&apply=true";
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[3] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_elisa.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[4] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_rostele.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[5] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_volia.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[6] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_ziggo2.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[7] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_rostele2.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[8] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_volia2.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[9] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_software_engineer.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[10] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_software_developer.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[11] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_java_developer.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[12] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_mechanical_engineer.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[13] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_mechanical_specialist.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[14] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_senior_software_engineer.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[15] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_product_owner.html?l=true&apply=true"; 
        await sleep(4000);;
    }
    else if(storedHyperlinkInnerHTMLList[16] == "Full Time") {
        await sleep(4000);;
        window.location.href = "job_details_content_writer.html?l=true&apply=true"; 
        await sleep(4000);;
    }
}

async function applyNowJob(jobIndex) {
    document.getElementById("applyNow").innerHTML = 'Applying!';
    document.getElementById("preloader-apply").style.display="block";
    await sleep(5000);
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
    await sleep(5000);
    window.location.href = "job_listing.html?l=true"; 
    
}

function getLatestHyperlink(){
    var storedHyperlinkInnerHTMLList = JSON.parse(localStorage.getItem("hyperlinkInnerHTMLList"));
    var itemList = document.getElementsByClassName("jobinjoblist");
    var storedArray = JSON.parse(localStorage.getItem('jobappliedDetails'));
    if(storedArray != null) {
        for (var i = 0; i < storedArray.length; i++) {
            if (itemList[i]) {
                itemList[i].innerHTML = storedArray[i];
            }
        }
    } else {
        storedArray = [];
    }
    
    if(itemList.length < storedArray.length) {
        var jobappliedDetails = [];
        localStorage.setItem('jobappliedDetails', JSON.stringify(jobappliedDetails));
    }
    if(itemList.length == storedArray.length) {
        document.getElementById("applying").style.display = "none";
        document.getElementById("applied").style.display = "inline-block";
        var d = new Date,
            dformat = [d.getMonth()+1,
                d.getDate(),
                d.getFullYear()].join('/')+' '+
                [d.getHours(),
                d.getMinutes(),
                d.getSeconds()
            ].join(':');
        d = new Date(d.getTime() - 150000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        const data = [
            ['TimeStamp', 'Job Title', 'Company', 'Job Apply Attempted', 'Job Applied', 'Job Page Link']
        ];
        data.push([d, 'Digital Marketer', 'Ziggo', 'Yes', storedArray[0],'http://localhost/autoApply/job_details.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Sales Specialist', 'Elisa', 'Yes', storedArray[1],'http://localhost/autoApply/job_details_elisa.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Digital Marketing Executive', 'RosteleCom', 'Yes', storedArray[2],'http://localhost/autoApply/job_details_rostele.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Marketing Content Product Owner', 'Veolia', 'Yes', storedArray[3],'http://localhost/autoApply/job_details_volia.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Digital Analyst', 'Ziggo', 'Yes', storedArray[4],'http://localhost/autoApply/job_details_ziggo2.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'UI UX Designer', 'RsoteleCom', 'Yes', storedArray[5],'http://localhost/autoApply/job_details_rostele2.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Digital Marketing Manager', 'Veoloa', 'Yes', storedArray[6],'http://localhost/autoApply/job_details_volia2.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Software Engineer', 'Veoloa', 'Yes', storedArray[7],'http://localhost/autoApply/job_details_software_engineer.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Software Developer', 'Veoloa', 'Yes', storedArray[8],'http://localhost/autoApply/job_details_software_developer.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Java Developer', 'Veoloa', 'Yes', storedArray[9],'http://localhost/autoApply/job_details_java_developer.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Mechanical Engineer', 'Tyres', 'Yes', storedArray[10],'http://localhost/autoApply/job_details_mechanical_engineer.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Mechanical Specialist', 'Tyres', 'Yes', storedArray[11],'http://localhost/autoApply/job_details_mechanical_specialist.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Senior Software Engineer', 'Infosys', 'Yes', storedArray[12],'http://localhost/autoApply/job_details_senior_software_engineer.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Product Owner', 'Kainos', 'Yes', storedArray[13],'http://localhost/autoApply/job_details_product_owner.html']);
        d = new Date(d.getTime() + 40000), dformat = [d.getMonth()+1, d.getDate(), d.getFullYear()].join('/')+' '+ [d.getHours(), d.getMinutes(), d.getSeconds()].join(':');
        data.push([d, 'Content Writer', 'Content Writer', 'Yes', storedArray[14],'http://localhost/autoApply/job_details_content_writer.html']);

        // Convert the data to a CSV string
        const csvString = data.map(row => row.join(',')).join('\n');

        // Create a new Blob object with the CSV string and set the MIME type
        const blob = new Blob([csvString], { type: 'text/csv' });

        // Create a new URL object with the Blob and get the URL string
        const url = URL.createObjectURL(blob);

        // Create a new download link and click it to download the CSV file
        const link = document.createElement('a');
        link.href = url;
        link.download = 'autoapply_report.csv';
        link.click();
        hyperlinkInnerHTMLList = ['Auto Apply', 'Applying!', 'Full Time', 'Full Time', 'Full Time', 'Full Time', 'Full Time', 'Full Time', 'Full Time', '<i class="ti-arrow-up"></i>'];
        localStorage.setItem("hyperlinkInnerHTMLList", JSON.stringify(hyperlinkInnerHTMLList));
        localStorage.setItem('isAutoApplying', false);
    }
}


