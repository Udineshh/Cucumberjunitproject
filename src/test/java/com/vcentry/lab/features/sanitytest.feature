Feature: Validate Login
#background is for precondition
Background: Open browser and Launch Url
 Given User should Open browser as "chrome"
   And User should Launch url
  @sanity
 Scenario: User should able to login with valid credentials
 
   Given User enter Username "standard_user"
   And User enter Password "secret_sauce"
   When Click on Login button
   Then User should navigate to HomePage
   Given Add Backpack to the cart
   And Click Checkout and enter details
   When Click on continue and Finish
   Then Verify the Order Placed Message

   
  