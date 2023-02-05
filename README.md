<B>Given a simple existing app to display second car on sale at a Second Car Dealer Website as below capture</b>

![image](https://user-images.githubusercontent.com/44523673/216550250-27a4e44c-70be-4cfc-ae72-b34f823aa295.png)

This app using technology stack : .NET C#, Entity Framework, MVC, Visual Studio 2019/2022

How to run this app
- Clone this repository https://github.com/flemingsyaifullah/testapp.git
- open the solution using visual studio 2019/2022 and run
- the database should be auto created with 2 empty tables (Car & CarManufacturer)
- Please get existing data by execute db_script.sql

Your tasks :

The dealer has some new requirements to be applied at this app to accomodate some business needs and regulation as below

1. This app still have no interface implementation, please create <b>interface ICarListingService</b> for this app with <b>abstract method GetCarListing</b>

2. Please give implementation to the abstract method. 
The implementation is just to migrate existing method CarListing (public ActionResult CarListing()) 
whereas currently still implemented at controller (HomeController). There is no logic changes

3. Please give <b>new implementation</b> to the abstract method with below new logic
- display the same columns as the existing UI
- Add column Plate Number Expired Date at the UI
- Add column Status at the UI with below condition
  - if plate number expired date <= 5 years of the date now then Status should be displayed "Bisa dijual"
  - if plate number expired date > 5 years of the date now then Status should be displayed "Tidak bisa dijual"

Please note <b>Do Not modify</b> the existing method implementation (test case number 2)</br> 
and <b>Do Not modify</b> Car and CarManufacturer classes because they are root classes.

Please also update db_script.sql with data of plate number expired date (no need create new record)

4. Rewrite this test solution in .NET 6 or 7 is a big plus since this test app still using .NET Framework 4.8 (optional) 

Please push your changes code by creating <b>New Branch</b>
eg branch_your name

Thank you
