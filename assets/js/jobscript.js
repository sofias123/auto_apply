let loginForm = document.getElementById("loginForm");
let isLogged = false;

loginForm.addEventListener("submit", (e) => {
  e.preventDefault();
  var hyperlinkInnerHTMLList = ['Auto Apply', 'Applying!', 'Full Time', 'Full Time', 'Full Time', 'Full Time', 'Full Time', 'Full Time', 'Full Time', 'Full Time', 'Full Time', 'Full Time','Full Time', 'Full Time', 'Full Time', 'Full Time', 'Full Time', '<i class="ti-arrow-up"></i>'];
  localStorage.setItem("hyperlinkInnerHTMLList", JSON.stringify(hyperlinkInnerHTMLList));
  localStorage.setItem('isAutoApplying', false);

  let username = document.getElementById("data_3").value;
  localStorage.setItem('loggedUserName', username);
  localStorage.setItem('islogged', true);
  isLogged = true;
 
  window.location = 'index.php?l=true&un='+username;
});