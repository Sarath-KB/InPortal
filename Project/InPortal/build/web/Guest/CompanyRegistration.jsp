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
        <title>InPortal::Guest Company Registration</title>
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
    width: 16.6%;
    float: left;
    position: relative;
}

/*Icons in the ProgressBar*/
#progressbar #account:before {
    font-family: FontAwesome;
    content: "\f023";
}
#progressbar #basicinfo:before {
    font-family: FontAwesome;
    content: "\f1c5";
}
#progressbar #location:before {
    font-family: FontAwesome;
    content: "\f041";
}

#progressbar #proof:before {
    font-family: FontAwesome;
    content: "\f1c5";
}
#progressbar #payment:before {
    font-family: FontAwesome;
    content: "\f09d";
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
                <h2><strong>Register Your Company</strong></h2>
                <p>Fill all form field to go to next step</p>
                <div class="row">
                    <div class="col-md-12 mx-0">
                     <%
                     String dis_id="",place_id="";
                     %>
                        <form id="msform" method="post" enctype="multipart/form-data" action="../Assets/Action/CompanyRegistrationAction.jsp">
                            <!-- progressbar -->
                            <ul id="progressbar">
                                <li class="active" id="account"><strong>Account</strong></li>
                                  <li id="basicinfo"><strong>Basic Information</strong></li>
                                <li id="location"><strong>Location</strong></li>
                               
                                 <li id="proof"><strong>Proof</strong></li>
                                <li id="payment"><strong>Payment</strong></li>
                                <li id="confirm"><strong>Finish</strong></li>
                            </ul>
                            <!-- fieldsets -->
                            <fieldset>
                                <div class="form-card">
                                    <h2 class="fs-title">Account Information</h2>
                                      <input type="text" name="txt_name" placeholder="Name"/>
                                    <input type="text" name="txt_contact" placeholder="Contact"/>
                                    <input type="email" name="txt_email" placeholder="Email Id"/>
                                    <textarea rows="4" cols="40" name="txt_address" placeholder="Address"></textarea>
                                    <input type="password" name="txt_password" placeholder="Password"/>
                                    <input type="password" name="txt_cpassword" placeholder="Confirm Password"/>
                                </div>
                                <input type="button" name="next" class="next action-button" value="Next Step"/>
                            </fieldset>
                              <fieldset>
                                <div class="form-card">
                                    <h2 class="fs-title">Basic Information</h2>
                                    <select class="form-control" name="sector_list" >
                                        <option selected>--Select--</option>
                                          <%
                                            String s2="select *from tbl_sector";
                                            ResultSet rs1 = con.selectCommand(s2);
                                          while(rs1.next()){
                   
                                          %> 
                                       
                                         <option  value="<%=rs1.getString("sector_id")%>"><%=rs1.getString("sector_name")%></option>
                                         <%
                                          }
                                         %>
                                    </select>
                                    <input type="text" name="txt_website" placeholder="Company Website"/>
                                   
                                    <textarea rows="4" cols="40" name="txt_about" placeholder="About(Optional)"></textarea>
                                    
                                </div>
                                     <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
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
                                     <input type="text" name="txt_landmark1" placeholder="Land Mark 1"/>
                                      <input type="text" name="txt_landmark2" placeholder="Land Mark 2"/>
                                </div>
                                <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
                                <input type="button" name="next" class="next action-button" value="Next Step"/>
                            </fieldset>
                             <fieldset>
                                <div class="form-card">
                                    <h2 class="fs-title">Kyc</h2>
                                     Logo <input name="logo" type="file"  data-height="100" />
                                     Proof <input name="proof" type="file"  data-height="100" />
                                    <input type="text" name="txt_liscenceno" placeholder="Liscence No"/>
                                    Company Start Date  <input type="date" name="txt_date" >
                                    
                                </div>
                                  <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
                                <input type="button" name="submit" class="next action-button" value="Next Step"/>
                            </fieldset>
                            <fieldset>
                                <div class="form-card">
                                    <h2 class="fs-title">Payment Information</h2>
                                    <div class="radio-group">
                                        <div class='radio' data-value="credit"><img src="https://i.imgur.com/XzOzVHZ.jpg" width="200px" height="100px"></div>
                                        <div class='radio' data-value="paypal"><img src="https://i.imgur.com/jXjwZlj.jpg" width="200px" height="100px"></div>
                                        <br>
                                    </div>
                                    <label class="pay">Card Holder Name*</label>
                                    <input type="text"  placeholder=""/>
                                    <div class="row">
                                        <div class="col-9">
                                            <label class="pay">Card Number*</label>
                                            <input type="text"  placeholder=""/>
                                        </div>
                                        <div class="col-3">
                                            <label class="pay">CVC*</label>
                                            <input type="password"  placeholder="***"/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-3">
                                            <label class="pay">Expiry Date*</label>
                                        </div>
                                        <div class="col-9">
                                            <select class="list-dt" >
                                                <option selected>Month</option>
                                                <option>January</option>
                                                <option>February</option>
                                                <option>March</option>
                                                <option>April</option>
                                                <option>May</option>
                                                <option>June</option>
                                                <option>July</option>
                                                <option>August</option>
                                                <option>September</option>
                                                <option>October</option>
                                                <option>November</option>
                                                <option>December</option>
                                            </select>
                                            <select class="list-dt">
                                                <option selected>Year</option>
                                                  <option>2022</option>
                                                <option>2023</option>
                                                <option>2024</option>
                                                <option>2025</option>
                                                <option>2026</option>
                                                <option>2027</option>
                                                <option>2028</option>
                                                <option>2029</option>
                                                <option>2030</option>
                                                <option>2031</option>
                                                <option>2032</option>
                                                <option>2033</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
                                <input type="button" name="make_payment" class="next action-button" value="Pay ₹2250 "/>
                            </fieldset>
                            <fieldset>
                                <div class="form-card">
                                    <h2 class="fs-title text-center">Payment Success !</h2>
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
                                         <a href="Login.jsp" style="margin-left: 29em;"><input type="submit" name="make_payment" class="next action-button" 
                                                                                               style="
                                                                                               width: 191px !important;
                                                                                               margin:10px -32px !important;
                                                                                               " value="Complete Registration"/></a>
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
    

