Feature: Page switch button exists even though there is not enough articles to fill given page

scenario 'Trying to switch page' do
Given Article that i look for is not on a first page 
When I click to switch to another page 
Then My categories are getting mixed, i see all products together
end

Scenario: Trying to switch page 
Given Article that i look for is not on a first page
When I try to look further, i see that there is no a page switch button
Then I realise that i can't find article on that site




Feature: Email value in contact form

scenario 'When i try to contact someone from the company in section "contact" i can enter invalid email or i try to send empty message' do
Given I am in need to contact someone from company
And I enter contact form 
And I type invalid email address in blank field for email or i don't fill form at all
When I fill all blank fields, and try to send message or leave all fields blank
Then A notification/message pops which tells us that message is sent successfully
end

Scenario: When i try to contact someone from the company in section "contact" i can enter invalid email or i try to send empty message
Given I am in need to contact someone from company
And I enter contact form 
And I type invalid email address in blank field for email or i don't fill form at all
When I fill all blank fields, and try to send message or leave all fields blank
Then A notification/message pops that tells us about invalid email address or notification that i need to fill all fields and than try sending message again




Feature: Empty Cart

scenario 'I am trying to realise purchase even though i didn't select any item' do
Given That i didn't select any item 
And I regardlessly enter my cart 
And I correctly fill the form
When I try to realise my purchase
Then Notification pops about a purchase done right
end

Scenario:I am trying to realise purchase even though i didn't select any item
Given That i didn't select any item 
And I regardlessly enter my cart 
And I correctly fill the form
When I try to realise my purchase
Then Notification pops about impossible purchase because cart is empty





Feature: Cart credit card

scenario 'I am trying to eneter invalid characters for credit card number' do
Given I am filling form to make a purchase 
And I am entering credit card number 
When I enter invalid charaters (charaters other then numbers)
Then It is alowed to insert other characters than numbers
end

Scenario: I am trying to eneter invalid characters for credit card number
Given I am filling form to make a purchase 
And I am entering credit card number 
When I enter invalid charaters (charaters other then numbers)
Then it is impossible to enter another type of characters other than numbers




Feature: Cart date

scenario 'Notification given after placing order' do
Given That i filled all fields corretly in cart form 
And I place order for realisation 
When I did all steps 
Then In pop up window with notification, date is displayed incorrectly
end

Scenario: Notification given after placing order
Given That i filled all fields corretly in cart form 
And I place order for realisation 
When I did all steps 
Then In pop up window with notification about successfull purchase date is displayed corretly, which means date that is displayed is the date of a purchase realisation