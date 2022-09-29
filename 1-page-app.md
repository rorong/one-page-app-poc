# Approach 001
1. Use watir for 1 page app
2. login by browser
3. store creds in DB
4. Fetch user detail from DB Whenever browser


# Approach 002
1. Open browser login
2. Set the creds in cookies
3. Make creds available for future login in the browser


## Problems
1. We can't detect if user logged-out or not, bcoz we can't access logout button.
2. Once user logged-out we can't find cookies(After every log-out cookie changes), until we make watir to do so.


## Solution
1. For problem 2, we can store the user creds and make watir to login every time on tab click.


# Before Login
* _js_datr
* datr
* fr
* sb
* wb


# After Login
* c_user
* datr
* fr
* sb
* wd
* xs


## Points to be noted
* c_user
* datr
- These 2 will require for login it seems...


# Use '/' in path


# CREDS
**Name: 'c_user'
Content: '100010222652927'
Domain: '.facebook.com'
Path: '/'
Send for: 'Secure connections only'
Created: 'Thursday, 22 September 2022 at 12:46:54'
Expires: 'Friday, 22 September 2023 at 12:46:52'**

**Name: 'xs'
Content: '24%3Amj9-TogJQk-l1Q%3A2%3A1663679879%3A-1%3A13397%3A%3AAcXM_GVHIWYR4PRsKkf4h54DTbrlXoOAU0MZpLiLXg'
Content: '3AAcXM_GVHIWYR4PRsKkf4h54DTbrlXoOAU0MZpLiLXg'
Content: '47%3AvYevX5QBeP2gFw%3A2%3A1663914591%3A-1%3A13397'
Content: '8%3Alj7WXtu_1lqTCA%3A2%3A1663915989%3A-1%3A13397'
Domain: '.facebook.com'
Path: '/'
Send for: 'Secure connections only'
Created: 'Thursday, 22 September 2022 at 12:46:54'
Expires: 'Friday, 22 September 2023 at 12:46:52'**


# Clear all browser cookies
*function deleteAllCookies() {
  var cookies = document.cookie.split(";");
  for (var i = 0; i < cookies.length; i++) {
    var cookie = cookies[i];
    var eqPos = cookie.indexOf("=");
    var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
    document.cookie = name + "=;domain=.facebook.com;expires=Thu, 01 Jan 1970 00:00:00 GMT";
  }
}*


# JS Code to get, set && check cookie
*function setCookie(cname,cvalue,exdays) {
  const d = new Date();
  d.setTime(d.getTime() + (exdays*24*60*60*1000));
  let expires = "expires=" + d.toUTCString();
  document.cookie = cname + "=" + cvalue + ";" + expires + ";domain=.facebook.com;secure=true;samesite=none" + ";path=/";
};*

*function getCookie(cname) {
  let name = cname + "=";
  let cookies = document.cookie;
  let ca = cookies.split(';');
  for(let i = 0; i < ca.length; i++) {
    let c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
};*

*function checkCookie() {
  let user = getCookie("username");
  if (user != "") {
    alert("Welcome again " + user);
  }
  else {
    user = prompt("Please enter your name:","");
    if (user != "" && user != null) {
      setCookie('c_user', '100010222652927', 365);
    }
  }
}*


# redirect after saving cookies
*window.onload = (event) => {
function onLoad(){
 	var c_user = getCookie('c_user');
 	if (c_user != ''){
 		this.c_user = c_user;
 		window.location = '/seven.cube.31/'
	  console.log('page is fully loaded');
 	};
};*


*getCookie('c_user');*
*setCookie('c_user', '100010222652927', 365);*
*setCookie('xs', '47%3AG_Aqha25kdaCvA%3A2%3A1663937847%3A-1%3A13397', 365);*
*let cname = 'c_user'*


# Getting cookies
[{:name=>"xs", :value=>"34%3AtLJ_H2PfDcdv7g%3A2%3A1664187835%3A-1%3A13397%3A%3AAcX0fINgKZSmfes40-xjSPSJmGkK6ndcUB5sCofcmg", :path=>"/", :domain=>".facebook.com", :expires=>2023-09-26 10:47:59 +0000, :same_site=>"None", :http_only=>true, :secure=>true}, {:name=>"c_user", :value=>"100010222652927", :path=>"/", :domain=>".facebook.com", :expires=>2023-09-26 10:47:59 +0000, :same_site=>"None", :http_only=>false, :secure=>true}]
