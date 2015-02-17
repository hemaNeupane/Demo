Feature: Save the screenshots of different pages

Scenario Outline: Save the screenshots of different pages

Given I am on the <desired_page>
  Then I save the screenshot with <file_name>

Examples:
|file_name|desired_page|
|"Bridal Dresses"|"http://www1.macys.com/shop/womens-clothing/wedding-day-dresses?id=68262"|
|"Bridal Shower Dress"|"http://www1.macys.com/shop/womens-clothing/bridal-shower-dresses?id=68260"|