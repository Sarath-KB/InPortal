<%-- 
    Document   : StudentRegistration
    Created on : Aug 12, 2022, 10:44:32 AM
    Author     : Angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>InPortal::Guest Student Registration</title>
        <style>
            * {
    margin: 0;
    padding: 0;
}

html {
    height: 100%;
}

/*Background color*/
#grad1 {
    background-color: : #9C27B0;
    background-image: linear-gradient(120deg, #FF4081, #81D4FA);
}

/*form styles*/
#msform {
    text-align: center;
    position: relative;
    margin-top: 20px;
}

#msform fieldset .form-card {
    background: white;
    border: 0 none;
    border-radius: 0px;
    box-shadow: 0 2px 2px 2px rgba(0, 0, 0, 0.2);
    padding: 20px 40px 30px 40px;
    box-sizing: border-box;
    width: 94%;
    margin: 0 3% 20px 3%;

    /*stacking fieldsets above each other*/
    position: relative;
}

#msform fieldset {
    background: white;
    border: 0 none;
    border-radius: 0.5rem;
    box-sizing: border-box;
    width: 100%;
    margin: 0;
    padding-bottom: 20px;

    /*stacking fieldsets above each other*/
    position: relative;
}

/*Hide all except first fieldset*/
#msform fieldset:not(:first-of-type) {
    display: none;
}

#msform fieldset .form-card {
    text-align: left;
    color: #9E9E9E;
}

#msform input, #msform textarea {
    padding: 0px 8px 4px 8px;
    border: none;
    border-bottom: 1px solid #ccc;
    border-radius: 0px;
    margin-bottom: 25px;
    margin-top: 2px;
    width: 100%;
    box-sizing: border-box;
    font-family: montserrat;
    color: #2C3E50;
    font-size: 16px;
    letter-spacing: 1px;
}

#msform input:focus, #msform textarea:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: none;
    font-weight: bold;
    border-bottom: 2px solid skyblue;
    outline-width: 0;
}

/*Blue Buttons*/
#msform .action-button {
    width: 100px;
    background: orange;
    font-weight: bold;
    color: white;
    border: 0 none;
    border-radius: 0px;
    cursor: pointer;
    padding: 10px 5px;
    margin: 10px 5px;
}

#msform .action-button:hover, #msform .action-button:focus {
    box-shadow: 0 0 0 2px white, 0 0 0 3px skyblue;
}

/*Previous Buttons*/
#msform .action-button-previous {
    width: 100px;
    background: #15151f;
    font-weight: bold;
    color: white;
    border: 0 none;
    border-radius: 0px;
    cursor: pointer;
    padding: 10px 5px;
    margin: 10px 5px;
}

#msform .action-button-previous:hover, #msform .action-button-previous:focus {
    box-shadow: 0 0 0 2px white, 0 0 0 3px #616161;
}

/*Dropdown List Exp Date*/
select.list-dt {
    border: none;
    outline: 0;
    border-bottom: 1px solid #ccc;
    padding: 2px 5px 3px 5px;
    margin: 2px;
}

select.list-dt:focus {
    border-bottom: 2px solid skyblue;
}

/*The background card*/
.card {
    z-index: 0;
    border: none;
    border-radius: 0.5rem;
    position: relative;
}

/*FieldSet headings*/
.fs-title {
    font-size: 25px;
    color: #2C3E50;
    margin-bottom: 10px;
    font-weight: bold;
    text-align: left;
}

/*progressbar*/
#progressbar {
    margin-bottom: 30px;
    overflow: hidden;
    color: lightgrey;
}

#progressbar .active {
    color: #000000;
}

#progressbar li {
    list-style-type: none;
    font-size: 12px;
    width: 25%;
    float: left;
    position: relative;
}

/*Icons in the ProgressBar*/
#progressbar #account:before {
    font-family: FontAwesome;
    content: "\f023";
}

#progressbar #location:before {
    font-family: FontAwesome;
    content: "\f041";
}
#progressbar #proof:before {
    font-family: FontAwesome;
    content: "\f1c5";
}


#progressbar #confirm:before {
    font-family: FontAwesome;
    content: "\f00c";
}

/*ProgressBar before any progress*/
#progressbar li:before {
    width: 50px;
    height: 50px;
    line-height: 45px;
    display: block;
    font-size: 18px;
    color: #ffffff;
    background: lightgray;
    border-radius: 50%;
    margin: 0 auto 10px auto;
    padding: 2px;
}

/*ProgressBar connectors*/
#progressbar li:after {
    content: '';
    width: 100%;
    height: 2px;
    background: lightgray;
    position: absolute;
    left: 0;
    top: 25px;
    z-index: -1;
}

/*Color number of the step and the connector before it*/
#progressbar li.active:before, #progressbar li.active:after {
    background: orange;
}

/*Imaged Radio Buttons*/
.radio-group {
    position: relative;
    margin-bottom: 25px;
}

.radio {
    display:inline-block;
    width: 204;
    height: 104;
    border-radius: 0;
    background: lightblue;
    box-shadow: 0 2px 2px 2px rgba(0, 0, 0, 0.2);
    box-sizing: border-box;
    cursor:pointer;
    margin: 8px 2px; 
}

.radio:hover {
    box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.3);
}

.radio.selected {
    box-shadow: 1px 1px 2px 2px rgba(0, 0, 0, 0.1);
}

/*Fit image in bootstrap div*/
.fit-image{
    width: 100%;
    object-fit: cover;
}
        </style>
       

    </head>
    
            <jsp:include page="GuestHomeHeader.jsp" /> 
         <!-- Multipage Form -->
         
         <!-- MultiStep Form -->
                                       
<div class="container-fluid" >
    <div class="row justify-content-center mt-0" >
        <div style="width: 93em;margin-top: 6em;padding: 2em;margin-left: 46em;">
        <div class="col-11 col-sm-9 col-md-7 col-lg-6 text-center p-0 mt-3 mb-2">
            <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                <h2><strong>Register Your Account</strong></h2>
                <p>Fill all form field to go to next step</p>
                <div class="row">
                    <div class="col-md-12 mx-0">
                     <%
                     String dis_id="",place_id="";
                     %>
                     <form id="msform" method="post" enctype="multipart/form-data" action="../Assets/Action/StudentRegistrationAction.jsp">
                            <!-- progressbar -->
                            <ul id="progressbar">
                                <li class="active" id="account"><strong>Account</strong></li>
                                <li id="location"><strong>Location</strong></li>
                                 <li id="proof"><strong>Proof</strong></li>
                                
                                <li id="confirm"><strong>Finish</strong></li>
                            </ul>
                            <!-- fieldsets -->
                            <fieldset>
                                <div class="form-card">
                                    <h2 class="fs-title">Account Information</h2>
                                      <input type="text" name="txt_name" placeholder="Name"/>
                                      <input type="email" name="txt_email" placeholder="Email Id"/>
                                   <input type="text" name="txt_contact" placeholder="Contact"/>
                                     Gender
                                     <select name="gender" class="form-control"  >
                                         <option selected="">--Select--</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Others">Others</option>
                                    </select>
                                  
                                    <textarea rows="4" cols="40" name="txt_address" placeholder="Address"></textarea>
                                    <input type="password" name="txt_password" placeholder="Password"/>
                                    <input type="password" name="txt_cpassword" placeholder="Confirm Password"/>
                                </div>
                                <input type="button" name="next" class="next action-button" value="Next Step"/>
                            </fieldset>
                            <fieldset>
                                       
                                <div class="form-card">
                                    <h2 class="fs-title">Location</h2>
                                    <select name="txt_state" class="form-control" required onchange="getDistrict(this.value)">
                                         <%
                                            String s="select *from tbl_state";
                                            ResultSet rs = con.selectCommand(s);
            
                                         %>
                                          <option>--State--</option>
                                         <%
                                          while(rs.next()){
                   
                                          %> 
                                       
                                         <option  value="<%=rs.getString("state_id")%>"><%=rs.getString("state_name")%></option>
                                         <%
                                          }
                                         %>
                                    </select>
                                    <br>
                                   
                                     <select name="district_list" class="form-control" id="inputdistrict" required onchange="getPlace(this.value)" >
                                        <option>--District--</option>
                                        
                                        
                                    </select>
                                    <br>
                                     <select name="txt_place" class="form-control" id="inputplace">
                                      
                                        <option>--Place--</option>
                                          
                                      
                                       
                                    </select>
                                    <br>
                                    <input type="text" name="txt_location" placeholder="Location"/>
                                     
                                </div>
                                <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
                                <input type="button" name="next" class="next action-button" value="Next Step"/>
                            </fieldset>
                             <fieldset>
                                <div class="form-card">
                                    <h2 class="fs-title">Kyc</h2>
                                     Photo <input name="photo" type="file"  data-height="100" />
                                     Proof <input name="proof" type="file"  data-height="100" />
                                    Date of Joining <input type="date" name="txt_date" placeholder="Date of Joining"/>
                                    
                                </div>
                                 
                                <input type="submit" name="submit" class="next action-button" value="Confirm"/>
                            </fieldset>
                           
                               
                            <fieldset>
                                <div class="form-card">
                                    <h2 class="fs-title text-center">Registration Success !</h2>
                                    <br><br>
                                    <div class="row justify-content-center">
                                        <div class="col-3">
                                            <img src="https://img.icons8.com/color/96/000000/ok--v2.png" class="fit-image">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="row justify-content-center">
                                        <div class="col-7 text-center">
                                            <h5>You Have Successfully Signed Up</h5>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                     </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>
</div>
         
         <script>
             $(document).ready(function(){
    
var current_fs, next_fs, previous_fs; //fieldsets
var opacity;

$(".next").click(function(){
    
    current_fs = $(this).parent();
    next_fs = $(this).parent().next();
    
    //Add Class Active
    $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
    
    //show the next fieldset
    next_fs.show(); 
    //hide the current fieldset with style
    current_fs.animate({opacity: 0}, {
        step: function(now) {
            // for making fielset appear animation
            opacity = 1 - now;

            current_fs.css({
                'display': 'none',
                'position': 'relative'
            });
            next_fs.css({'opacity': opacity});
        }, 
        duration: 600
    });
});

$(".previous").click(function(){
    
    current_fs = $(this).parent();
    previous_fs = $(this).parent().prev();
    
    //Remove class active
    $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
    
    //show the previous fieldset
    previous_fs.show();

    //hide the current fieldset with style
    current_fs.animate({opacity: 0}, {
        step: function(now) {
            // for making fielset appear animation
            opacity = 1 - now;

            current_fs.css({
                'display': 'none',
                'position': 'relative'
            });
            previous_fs.css({'opacity': opacity});
        }, 
        duration: 600
    });
});

$('.radio-group .radio').click(function(){
    $(this).parent().find('.radio').removeClass('selected');
    $(this).addClass('selected');
});

$(".submit").click(function(){
    return false;
})
    
});
         </script>     
     
         
         <!-- Multipage Form ends -->
         
            <!--dropify-->
        <script type="text/javascript">
      
      $('.dropify').dropify();
  </script>
  
            <jsp:include page="GuestHomeFooter.jsp" /> 
         
              <script src="../Assets/GuestHomeProperties/js/bootstrap.min.js"></script>
               <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
               <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
     <script>
function getDistrict(did)
{

	$.ajax({
	  url:"../Assets/Ajaxpages/AjaxDistrict.jsp?did="+did,
	  success: function(html){
		$("#inputdistrict").html(html);
	  }
	});
}
</script>

  <script>
function getPlace(pid)
{

	$.ajax({
	  url:"../Assets/Ajaxpages/AjaxPlace.jsp?pid="+pid,
	  success: function(html){
		$("#inputplace").html(html);
	  }
	});
}
</script>
    

