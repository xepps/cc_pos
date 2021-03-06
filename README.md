# Point of Sale using lua for Computer Craft

In order to run an effective shop, a custommer must find it easy purchase items. This computer craft software should enable a player to set up a shop that allows multiple items to be sold for prices that are governed by the 'value' of items that the shop keeper can set.

## Requirements

This uses the following setup:

* one POS computer node 
  * has a 4x3 set of monitors attached above
  * has a modem attached at the rear
  * uses the pos.lua code and the libraries in the pos directory. These all sit in the same directory on the POS computer.
* four slave "shelf" turtles
  * each shelf runs the shelf.lua script
  * the shelf.lua script is modified such that the port of that shelf matches the one in the pos's look up
  * each shelf must have a wireless modem attached at the back
  * for the armour set up, have a chest above, below to the right and left of the turtle containing one piece of the armour. Sets must be complete.
  * an output to the front to the customer
* a cashier turtle which to be written

## Restrictions

There are no restrictions to using this code - please go ahead and do what you want with it. However, I ask that you do not use knowledge of this software to break into someone else's shop (including mine), however easy it may be. This goes against the spirit of the game and only makes it less fun for everyone.

## Releases

Once a release is suitable for release, I will release each file to pastebin and detail the hashes for download to relevent turtles/computers.

There are no current releases as this software is in progress

## TODO

* Extract config out to seperate file
* Allow purchase message to flow to shelf and back
* Method for determining stock (when and where)
* Write cashier system
  * Calculate value of items in "payment"
  * Lock "payment" whilst stock is delivered
  * Return "payment" if purchase fails
  * Store "payment" on success
* Create delevery mechanism for items
* Create payment system for "payment"
* Refactor to make customisation easier
* ...
* profit

