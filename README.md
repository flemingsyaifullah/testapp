Study Case :

1. Please create interface for above project with abstract method : GetCarListing 

2. Please implement the interface for existing method CarListing (public ActionResult CarListing()) which is currently 
still implemented at controller (HomeController) then from the controller call the interface

3. Please create new class (CarExpiration) inherited from Car and add an entity : PlateNumberExpiredDate (datetime).
Please note we can not update/modify directly Car & CarManufacturer classes because they are root class.

4. Please use the new class (CarExpiration) and implement the interface abstract method GetCarListing with below logic :
- the same query logic as existing CarListing method
- add filter ONLY PlateNumberExpiredDate < 5 tahun should be displayed.

You can modify/update existing class CarListingView to display the new entity

5. Rewritten the solutions in .NET 6 or 7 is a bug plus since this test app still using .NET Framework 4.8 (optional) 

Please find the source code at github link :

git clone https://github.com/flemingsyaifullah/testapp.git

Please upload your completed code by creating New Branch and inform us your branch to review
eg branch_test_<your name>

Thank you
