<!DOCTYPE html>
<html lang="en">
    <style>
        *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family:sans-serif;

}
body{
    background-image: url("/static/images/register.jpg");
    background-size: cover;
    
    background-position: center; 
    background-repeat: no-repeat;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
}
.container{
    max-width: 650px;
    padding: 28px;
    /* margin:0 px; */
    box-shadow: 0 15px 20px #0009;
}
 h2{
    font-size: 26px;
    font-weight: 600;
    text-align: left;
    /* color: white; */
    padding-bottom: 8px;
    border-bottom: 1px solid silver;
} 
.content{
    display:flex;
    flex-wrap: wrap;
     justify-content: space-between; 
     padding: 20px 0; 
} 
.input-box{
    display:flex;
    flex-wrap:wrap;
    width:50%;
    padding-bottom: 20px;
}
select{
    height:40px;
    width:95%;
    padding: 0 10px;
    border-radius: 5px;
    border:1px solid #ccc;
    outline:none;
    
}
textarea{
    width:100%;
}
 .input-box:nth-child(2n){
    justify-content:end;
} 
 .input-box label,.gender-title{
    width: 95%;
    /* color:white; */
    font-weight: bold;
    margin:5px 0;
} 
.gender-title{
    font-size: 16px;
}
.input-box input{
    height:40px;
    width:95%;
    padding: 0 10px;
    border-radius: 5px;
    border:1px solid #ccc;
    outline:none;
}
 .input-box input:is(:focus,:valid){
    box-shadow:0 3px 6px rgba(0,0,0,0.2);
}
.gender-category{
    color: grey;
}
.gender-category label{
    padding:0 20px 0 5px;
    font-size: 14px;
}
.gender-category label,.gender-category input{
    cursor:pointer;
}   
.alert p{
    font-size: 14px;
    font-style: italic;
    color: dimgray;
    margin:5px 0;
    padding: 10px;
}
.file{
    height:40px;
    width:95%;
    padding: 0 10px;
    display: block;
    /* border-radius: 5px; */
    /* border:1px solid #ccc; */
    outline:none;

}
.file_upload{
    /* display: block; */
    color:#2f4f4f;
    font-weight: bold;
}
  

    



.button-container{
    margin:15px 0; 
}
.button-container button{
    width: 600%;
    margin-top: 10px;
    padding:10px;
    display:block;
    font-size: 20px;
    color:#fff;
    border:none;
    border-radius: 5px;
    background-image: linear-gradient(to right,#aa076b,#61045f);
}



.button-container button:hover{
    background-image: linear-gradient(to right,#61045f,#aa076b);

}
/* @media(max-width:100px){
    .container{
        min-width: 280px;
    }
    .content{
        max-height: 380px;
        overflow: auto;
    }
    .input-box{
        margin-bottom: 12px;
        width:100%;
    }
    .input-box:nth-child(2n){
        justify-content: space-between;
    }
    .gender-category{
        display: flex;
        justify-content: space-between;
        width: 60%;
    }

} */


    </style>
<head>
    <meta charset="UTF-8">
    
</head>
<body>  
    

    <div class="container">
        <form action="" method="POST">
           
            <h2>Add Leave Type</h2>
            <div class="content">
                <div class="input-box">
                    <label for="EmploymentType">Leave Type</label>
                    <select id="EmploymentType"name="EmploymentType">
                      <option >Choose the option</option>
                      <option value="Permanent">Sick Leave</option>
                      <option value="Contract">Casual Leave</option>
                      <option value="Contract">LOP</option>
                      <!-- <option value="MCA"></option>
                      <option value="BE">BE</option>
                      <option value="MBA">MBA</option> -->
                    </select>
                </div> 
                <div class="input-box">
                    <label for="JobName">Allowed/month</label>
                    <input type="number" id="quantity" name="tcl" min="1" max="5" value="casual_leave">
                </div>
                
                 
                <div class="input-box">
                    <label for="Qualification">Total Allowed</label>
                    <input type="number" id="quantity" name="tcl" min="1" max="5" value="casual_leave">
                  </div> 
                   
                  <div class="input-box">
                    <label for="JobLocation">Department</label>
                    <select id="JobLocation" name="JobLocation">
                      <option >Select type</option>
                      <option value="Chennai">Admin</option>
                      <option value="Bangalore">Software</option>
                      <option value="Madurai">System Admin</option>
                      <option value="kochi">User</option>
                    </select>
                  </div> 
                
                
                
                     <!-- <span class="gender-title">Gender</span>
                            <div class="gender-category">
                            <input type="radio" name="gender" id="male">
                            <label for="gender">Male</label>
                            <input type="radio" name="gender" id="female">
                            <label for="gender">Female</label>
                            <input type="radio" name="gender" id="other">
                            <label for="gender">other</label>
                     </div> 
                     <div class="alert">
                         <p>By clicking register, you agree to our <a href="#">Terms,</a><a  href="#">privacy policy,</a>and <a href="">cookies policy.</a>you mayreceive sms notifications from us and can opt out at any time</p>
                     </div>  -->

                 
                 <!-- <div class="file">
                    <label for="file_upload" style="color: rgb(31, 29, 29);"><b>Upload Resume</b></label>
                    <input type="file" >
                </div>  -->
                
                <div class="button-container">
                    <button >SUBMIT</button>
                  </div>
            </div>
            <script>
                document.getElementById('today').valueAsDate = new Date();
                </script>
        </form>
    </div>
   
    
</body>
</html>