Study Case :

<B>Given a simple app to display second car on sale at a Second Car Dealer Website</b>

![image](https://user-images.githubusercontent.com/44523673/216550250-27a4e44c-70be-4cfc-ae72-b34f823aa295.png)

The dealer has some new requirements to be applied at this app to accomodate some business needs and regulation as below :

1. This app still have no interface implementation, please create <b>interface ICarListingService</b> for this app with <b>abstract method GetCarListing</b>

2. Please give implementation to the abstract method. 
The implementation is just to migrate existing method CarListing (public ActionResult CarListing()) 
whereas currently still implemented at controller (HomeController). There is no logic changes

3. Please create new class (CarExpiration) inherited from Car class then add 2 fields : PlateNumberExpiredDate (datetime) and IsTheCarCanBeSold(bool).
Please note we can not update/modify directly Car & CarManufacturer classes because they are root class.

4. Please use the new class (CarExpiration) and give <b>new implementation</b> to the abstract method with below new logic :
- display the same fields as the existing UI table
- field PlateNumberExpiredDate also need to be displayed at the UI table 
- field IsTheCarCanBeSold also need to be displayed at the UI table with below condition
- if PlateNumberExpiredDate <= 5 years of the date now then the field IsTheCarCanBeSold should be filled with "Bisa dijual"
- if PlateNumberExpiredDate > 5 years of the date now then the field IsTheCarCanBeSold should be filled with "Tidak bisa dijual"

Please note <b>Do Not update/modify</b> the existing method implementation (test case number 2)

5. Rewritten this test solutions in .NET 6 or 7 is a big plus since this test app still using .NET Framework 4.8 (optional) 

Please find the source code at github link :

git clone https://github.com/flemingsyaifullah/testapp.git

Please upload your completed code by creating <b>New Branch</b>
eg branch_your name

Please inform us once you have completed your test and uploaded your codes to your branch

Thank you

Note : 
Technology Stack at this app : .NET C#, Entity Framework, MVC
