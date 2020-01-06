
document.getElementById("login").addEventListener('submit', function(e){
e.preventDefault()
document.getElementById("load").style.display = "flex";
document.getElementById("error").style.opacity = 0;
const username= document.getElementById('username').value+'@lms.com'
const password= document.getElementById('psd').value
if ((username===null || username==="") ||(password===null || password==="")  ){
    document.getElementById("load").style.display = "none";
    document.getElementById("error").style.opacity = 1;

}
else{
    firebase.auth().signInWithEmailAndPassword(username,password).then(res=>{
        document.getElementById("error").style.opacity = 0;
        document.getElementById("load").style.display = "none";
window.location.href='<%=Common_Things.url %>/admin-sign-in'
}).catch(err=>{
    document.getElementById("error").style.opacity = 0;
    document.getElementById("load").style.display = "none";
    alert(err.message)
   
})

}




})


         