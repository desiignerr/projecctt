<?php
 require 'system/autoload.php';
 use Controllers\CustomerController;


 $request = $_GET['request'];
 $customer  = new CustomerController();
 $card = new \Controllers\CardRequestController();
 $admin = new \Controllers\AccountController();
 switch ($request){
     case 'add_customer':
       echo $customer->createAccount();
       break;
     case 'get_customers':
         header('Content-type:text/json');
         echo $customer->showAccounts();
         break;
     case 'get_customer':
         header('Content-type:text/json');
         echo $customer->showAccount($_GET['id']);
         break;
     case 'update_customer':
       echo  $customer->update();
       break;
     case 'delete_customer':
         echo $customer->deleteCustomer($_POST['id']);
         break;
     case 'get_customer_info':
         header('Content-type:text/json');
         echo $card->getCustomerInfo($_GET['account_no']);
        break;
     case 'get_questions':
         header('Content-type:text/json');
         echo $card->getSecurityQuestion();
         break;
     case 'request_card':
         echo $card->handleCardRequest();
         break;
     case 'get_requests':
         header('Content-type:text/json');
         echo $card->getRequests();
         break;
     case 'update_request_status':
         header('Content-type:text/json');
         echo $card->updateRequest();
     case 'get_request_status':
         header('Content-type:text/json');
         echo $card->getRequestStatus();
         break;
     case "account_info":
         echo $admin->getAccountInfo();
         break;
     case 'update_account':
         echo $admin->updateAccount();
         break;

 }

?>
