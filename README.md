# TENSION - ASSP06

## Guide
1. `bundle`
2. `rails db:create`
3. `rails db:migrate`
4. `rails db:seed`

## Run test
In the console: `bundle exec guard` to automatically run test every changes.

### Sprint 1

* [x] User can sign in / register new account by Email
* [x] User can see all products of the website with paginator, on the homepage
* [x] User can browse through categories and collections on the homepage by clicking on each of them.
* [x] User can see details about a product by clicking on it. Details about a product are photos, size, color, description, price.
* [x] Admin can CRUD users.

### Sprint 2
* [ ] Photos of a product are clickable, and zoomed when user click on a photo.
* [x] Each product has many units that come with different colors and sizes. User can choose between colors and sizes of a product, then it supposed to notice user about the quantity left.
* [x] User can add an unit of a product to cart after choosing color and size. A notification will raised to notice user about adding product to cart.
* [x] User can see all product in the cart at anytime.

### Sprint 3
* [x] Collection is a bunch of product related by a sales session, a marketing strategy or something like `New Arrived`. Display some collections on the navbar of homepage so user can navigate to it.
* [x] Each unit of a product has distict photos that displayed when user choose between colors and sizes
* [ ] User can update quantity of a product in the cart before place order
* [ ] User can delete a product in the cart before place order
* [x] User can cancer an order before it's been processed
* [x] User can place order by clicking `Place order` in the cart showing page. It will display **checkout with Stripe** the invoice to confirm before user click purchase.

### Sprint 4
* [x] User can track order status by navigate to `Order` section
* [ ] User will be notified by email when the status of their order changed.
* [ ] Admin will be notified when new order is coming.
* [ ] User can type a `Coupon code` for discount.
* [ ] Each order will be transfer to an amount of points, depend on total due. User will have discount if they reach an amount of points.

### Docs
[RSpec][https://www.relishapp.com/rspec/rspec-rails/docs/controller-specs]
