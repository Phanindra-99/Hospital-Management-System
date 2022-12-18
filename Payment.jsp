<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type = "text/javascript">
      function validate() {
           var name =
               document.forms.myForm.Patient_Name.value;
           var dname =
               document.forms.myForm.Doctor_name.value;
           var number =
               document.forms.myForm.Mobile_Number.value;
           var address=
               document.forms.myForm.Address.value;
           var pin =
        	   document.forms.myForm.Pin_Code.value;
           var nameoncard=
        	   document.forms.myForm.Name_On_Card.value;
           var creditcardnumber=
               document.forms.myForm.Credit_Card_Number.value;
           var expmonth =
               document.forms.myForm.Exp_Month.value;
           var expyear =
               document.forms.myForm.Exp_Year.value;
           var cvv =
               document.forms.myForm.CVV.value;
          
           var regNumber=/^\d{10}$/;                                        // Javascript reGex for Phone Number validation.
           var regName = /\d+$/g;                                    // Javascript reGex for Name validation
           var regDname = /\d+$/g;                                    // Javascript reGex for Dname validation
           var regPin=/^\d{6}$/;                                        // Javascript reGex for Pin validation
           var regCreditcardnumber=/^\d{16}$/;                                        // Javascript reGex for Credit Card Number validation
           var regExpmonth=/^\d{2}$/;                                        // Javascript reGex for Exp Month validation
           var regExpyear=/^\d{4}$/;                                        // Javascript reGex for Exp Year validation
           var regCvv=/^\d{3}$/;                                        // Javascript reGex for Cvv validation
           
      
         if(name == ""  || regName.test(name) ) {
            alert( "Please provide your name!" );
            name.focus() ;
            return true;
         }
         if(dname == ""  || regDname.test(dname) ) {
           alert( "Please provide your Doctor Name !" ); 
            dname.focus() ;
            return false;
         }
         if(number== ""|| !regNumber.test(number) || isNaN(number)) {
            
            alert( "Please provide your Mobile Number!" );
            number.focus() ;
            return false;
         }
         if(address == "" ) {
             alert( "Please provide your Address");
             address.focus() ;
             return false;
          } 
         if(pin== "" || !regPin.test(pin) || isNaN(pin))  {
              alert( "Please provide your Pin Code" ); 
              pin.focus() ;
              return true;
           } 
         if(nameoncard == "") {
               alert( "Please provide your Name On Card" ); 
               nameoncard.focus() ;
               return false;
            } 
         if(creditcardnumber == "" || !regCreditcardnumber.test(creditcardnumber) || isNaN(creditcardnumber) ) {
                alert( "Please provide your Credit Card Number" ); 
                creditcardnumber.focus() ;
                return false;
             } 
         if(expmonth == "" || !regExpmonth.test(expmonth) || isNaN(expmonth)) {
                 alert( "Please provide your Exp Month" ); 
                 expmonth.focus() ;
                 return false;
              }
         if(expyear == "" || !regExpyear.test(expyear) || isNaN(expyear) ) {
                  alert( "Please provide your Exp Year" ); 
                  expyear.focus() ;
                  return false;
               }
         if(cvv.value == ""|| !regCvv.test(cvv)|| isNaN(cvv)) {
                   alert( "Please provide your CVV" ); 
                   cvv.focus() ;
                   return false;
                }
         return( true );
          }
   
</script>
</head>
<div class="container">
<body>
<form name="myForm" onsubmit="return validate()" method="post">
        <div class="row">

            <div class="col">
                <h3 class="title">Billing</h3>
                <div class="inputBox">
                    <span>Patient name :</span>
                    <input type="text"></input>
                </div>
                <div class="inputBox">
                    <span>Doctor name :</span>
                    <input type="text"></input>
                </div>
                <div class="inputBox">
                    <span>Mobile Number :</span>
                    <input type="number"></input>
                </div>
                <div class="inputBox">
                    <span>Address :</span>
                    <input type="text"></input>
                </div>
                    <div class="inputBox">
                        <span>Pin Code :</span>
                        <input type="number"></input>
                    </div>
                </div>

            </div>

            <div class="col">

                <h3 class="title">Payment</h3>

                <div class="inputBox">
                    <span>Cards accepted :</span>
                    <img src="card_img.PNG" alt=""></img>
                </div>
                <div class="inputBox">
                    <span>Name On Card :</span>
                    <input type="text"></input>
                </div>
                <div class="inputBox">
                    <span>Credit Card Number :</span>
                    <input type="number"></input>
                </div>
                <div class="inputBox">
                    <span>Exp Month :</span>
                    <input type="number"></input>
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>Exp Year :</span>
                        <input type="number"></input>
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="number"></input>
                    </div>
                </div>

            </div>
    
        </div>

        <input type="submit" value="Proceed to checkout" class="submit-btn"></input>
        <input type="button" value="load" onclick="window.location='PayBill.jsp'">
        <form name="myForm" onsubmit="return validate()" method="post">
</div> 
</form>
</body>   
</html>