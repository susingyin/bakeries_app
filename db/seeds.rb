puts "Products and Reviews Added"

Product.destroy_all
Review.destroy_all

rev1 = Review.create(
    description: 'These cookies are soft and chewy!',
    stars: 5
)

rev2 = Review.create(
    description: 'The cheesecake is delicious and fluffy!',
    stars: 4
)

Product.create(
	title: 'Avocado Chocolate Chip Cookies',
    category: 'Cookies',
    photo: 'products/cookies.jpg',
    price: '10',
    review_id: rev1
)

Product.create(
    title: 'Oreo Cheesecake',
    category: 'Cheesecake',
    photo: 'products/cheesecake.jpg',
    price: '20',
    review_id: rev2
)