# Nike Store

Simple Flutter app with 3 tabs: Shop, Cart, Profile.

## Overview

* Shop → displays products using `ListView.builder`
* Cart → manages selected items
* Profile → basic UI scaffold

State is handled using `Provider`.

## Screenshots

<p align="center">
  <img src="screenshot/scrn1.png" width="200"/>
  <img src="screenshot/scrn2.png" width="200"/>
  <img src="screenshot/scrn3.png" width="200"/>
</p>

<p align="center">
  <img src="screenshot/scrn4.png" width="200"/>
  <img src="screenshot/scrn5.png" width="200"/>
</p>

## Technical Notes

* State Management: `Provider`

  * Central store for products + cart
  * Notifies UI on updates

* UI Rendering:

  * `ListView.builder` for scalable lists
  * Reusable widgets for items and buttons

* Navigation:

  * Bottom navigation with 3 tabs


## Structure

* `pages/` → main screens (shop, cart, profile)
* `components/` → reusable widgets
* `models/` → data structures
