LOOT

Objective

Solve the following problem:

"How do you draw repeat visitors to a company site that sells a limited (<10) number of products?"
..
//


Problem:

I was asked to create a site for a new line of clothing products coming out in the next ~6 months. I asked the client what they would like for the site, and if they could please write me some user stories so that I could have an idea of how the site might function. I was provided the following:

"As a user I would like to go to the site and enter my email address
As a user I would like to then click a button to take me to the next page
As a user I would like to be able to click a button to find out about loot
As a user I would like to click a ‘contact’ button to contact the company
As a user I would like to be able to click on the twitter and instagram page"

Not a great deal of help here, but it was the first attempt. Upon meeting with the client twice more, I brought with me samples of sites ranging from classic retail to award winning design/layout. Since they only had a few pieces of retail, I suggested we go with something more design-heavy. After some deliberation, I landed on the following:

..

Solution:

 A lifestyle site, offering the experience of a walk through a day in the life of the hosts. The classical notion of the retail site is one predicated on organization, UI and path-to-purchase. While these factors are of consideration here, they are ancillary to presentation, UX, and the dissemination of ideas. 

The design needs to be smooth, guiding the visitors eye while holding their attention. This idea begot the interest in a (layered) single-page, horizontal scroll design centered around a blog-like amalgamation of thought-provoking images, videos, quotes and - of course - products, all curated by the hosts. Rather than dragging users to seperate pages for each of the fancies they choose to click on, the content would be rendered in a lightbox for closer inspection. From there, users will be able to choose whether they want to continue on to wherever the content is being hosted (if the media so entails). In addition, we will explore the usefulness of sharing the content with others via email / social outlets. 

The product will need to meld seamlessly into the lifestyle on exhibit while still compelling the user to realize the potential for purchase. This will be achieved primarily through design elements, though front-end functionality will play a big role as well. Ideally, a click onto the product page would render a lightbox wherein a user could easily make a purchase, though different modalities for this path are in discussion. 
..
//


Wireframe / Inspiration:

http://paulineosmont.com/  /// This was the site I had originally presented to the client as a representation of what I thought would be the best solution for them. After walking them through what I believed to be an optimal layout type 
..
//


Additional User Stories (that I generated):

1) As a user, I want to log into loot and see the homepage so that I can decide where I want to navigate to.
2) As a user, I want to be able to click "Loot" and see the 'feed' for that day, so that I can see all of the interesting images and other curated content.
3) As a user, I want to be able to slide seamlessly through the content, so that there is no pain associated with the experience.
3.5) As a user, I want to be able to click on any of the content and see it rendered without having to reload any pages, so that I can continue browsing at any point. 
4) As a user, I want to be able to see the products within the curated content, so that I know what products LOOT is offering.
5) As a user, I want to be able to click on the products, so that I can see their cost/available sizes/available colors.
6) As a user, I want to be able to purchase the product in my selected options so that I can have them. 
7) As a user, I want to be able to see what LOOT is all ABOUT through their ABOUT page so that I can figure out if I prescribe to their gospel.
8) As a user, I want to be able to click on a CONTACT page so that I can figure out how to contact them for any reason. 
9) As a visitor, I want to be able to do all of the above without having to sign in (except for the purchasing).
..
//


Data Model:


User

User has a login/authentication (email/password, no username)
User has a credit card number (?)
User has an address for shipping and an address for billing (?)
User may have a product history (boolean)
User has a promotional code (boolean)

Product

Product is for men (boolean)
Product may have many mens sizes (t.integers?)
Product may have many womens sizes (t.integers?)
Product has many colors (t.string, url?)
Product has a cost (integer)
Product is in stock (boolean)
Product is on sale (boolean)
..
//


github : 
https://github.com/russelltaff/lootly
..
//


