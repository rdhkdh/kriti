# MarketMate

MarketMate is a user-friendly 'Campus Catalogue application' that allows campus residents to browse menus,
place orders from local restaurants available, send files beforehand to available stationeries and easily access
up-to-date information about shops and services within the campus. The app provides a comprehensive list of
shops and services, including their operating hours, menus, and service lists.  
  
**This project was part of the Inter-Hostel Tech Event - Kriti 2023, held at IIT Guwahati and bagged the 4th position.**
> *Credits:* Ridhiman Dhindsa, Riya Mittal

## Download APK of the app here: 
[Download APK]( https://drive.google.com/file/d/1OeZaLaAj2jFCAPT8X6HFS_ASew1Jhfxc/view?usp=sharing )

## Tech Stack
* Flutter
* Dart
* FireBase Authentication
* Cloud FireStore Database
* APIs- RazorPay, Google Maps, QR, URL launcher

## Salient Features
This large scale app has 2 sides- one for customers, and the other for shop owners.
### Customer Side:
It has a home screen with 3 functionalities:
1) **Restaurants** - Customers can browse through menus of various cafes and eating joints in campus. 
They can pre-order through the app and pay through the integrated payment gateway. This is complete with 
implementation of customized cart screen and a variety of payment options including UPI and credit/debit card. 
A unique QR code is generated for each order placed.
2) **Stationeries** - Users can view the opening/closing timings of the shop. They can also send documents for 
printing/photocopying through the app itself, to be collected later from the stationery. Implemented using Whatsapp 
integration and URL launching API.
3) **Essentials** - Users can view the opening/closing timings of the shop.
> Also developed a sidebar displaying user profile, blogs and recommendations, along with the facility to locate the required restaurants, 
stationers, departmental stores etc. efficiently.

### Shopkeeper side:
It has a home screen displaying the orders received. Once completed, it can be checked off the list. A separate screen for 
editing menu and timings of the shop is provided. 

## Snapshots
<p float="left">
  <img src="/img1.png" width="100" />
  <img src="/img2.png" width="100" /> 
  <img src="/img3.png" width="100" />
</p>

## Impending Enhancements:
* Transaction History for all users - shop owners and customers
* Push Notifications
* Provision for quick refund
