<B>Given a simple existing app to display second car on sale at a Second Car Dealer Website as below capture</b>

![image](https://user-images.githubusercontent.com/44523673/216550250-27a4e44c-70be-4cfc-ae72-b34f823aa295.png)

This app using technology stack : .NET C#, Entity Framework, MVC, Visual Studio 2019/2022

How to run this app
- Clone this repository https://github.com/flemingsyaifullah/testapp.git
- open the solution using visual studio 2019/2022 and run
- the database should be auto created with 2 empty tables (Car & CarManufacturer)
- Please use the db_script.sql to fill the tables with the prepared data as the above UI table

Your tasks :

The dealer has some new requirements to be applied at this app to accomodate some business needs and regulation as below

1. This app still have no interface implementation, please create <b>interface ICarListingService</b> for this app with <b>abstract method GetCarListing</b>

2. Please give implementation to the abstract method. 
The implementation is just to migrate existing method CarListing (public ActionResult CarListing()) 
whereas currently still implemented at controller (HomeController). There is no logic changes

3. Please create new class (CarExpiration) inherited from Car class then add 2 fields : PlateNumberExpiredDate (datetime) and IsTheCarCanBeSold(bool).
Please note we can not update/modify directly Car & CarManufacturer classes because they are root classes.

4. Please use the new class (CarExpiration) and give <b>new implementation</b> to the abstract method with below new logic
- display the same fields as the existing UI table
- field PlateNumberExpiredDate also need to be displayed at the UI table 
- field IsTheCarCanBeSold also need to be displayed at the UI table with below condition
  - if PlateNumberExpiredDate <= 5 years of the date now then the field IsTheCarCanBeSold should be filled with "Bisa dijual"
  - if PlateNumberExpiredDate > 5 years of the date now then the field IsTheCarCanBeSold should be filled with "Tidak bisa dijual"

Please note <b>Do Not update/modify</b> the existing method implementation (test case number 2)

5. Rewrite this test solution in .NET 6 or 7 is a big plus since this test app still using .NET Framework 4.8 (optional) 

Please upload your changes code based on the requirements by creating <b>New Branch</b>
eg branch_your name

Thank you
