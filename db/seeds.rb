
Image.create!([
  {url: "http://www.themusiczoo.com/PDGImages/11928_Way_Huge_Electronics_Fat_Sandwich_Harmonic_Saturator_Distortion_Guitar_Effects_Pedal_WHE301_a.jpg", product_id: 1, name: "Fat Sandwich_1"},
  {url: "http://www.sweetwater.com/images/items/750/FullDrive3Bk-large.jpg", product_id: 2, name: "Full Drive 3_1"},
  {url: "http://c1.zzounds.com/media/fit,2018by3200/quality,85/DL4_300_RGB-5bc0573077d640ad80004b200306b2c7.jpg", product_id: 3, name: "DL4_1"},
  {url: "http://ecx.images-amazon.com/images/I/91PiNRf%2B-cL._SY355_.jpg", product_id: 4, name: "Metal Zone_1"},
  {url: "https://guitargear.files.wordpress.com/2010/11/carbon_copy.jpg", product_id: 5, name: "Carbon Copy_1"},
  {url: "http://www.jimdunlop.com/images/products/PorkLoinOverdrive-11.png", product_id: 6, name: "Pork Loin_1"},
  {url: "https://toomuchgear.files.wordpress.com/2014/11/photo-1.jpg", product_id: 5, name: "Carbon Copy_2"},
  {url: "http://medias.audiofanzine.com/images/normal/boss-mt-2-metal-zone-206137.jpg", product_id: 4, name: "Metal Zone_2"},
  {url: "http://shop.musix.ch/images/products/orig/electro-harmonix-HOG-Guitar-Synthesizer-Harmonic-Octave-Generator.jpg", product_id: 10, name: "Hog_1"},
  {url: "http://media.musiciansfriend.com/is/image/MMGS7/Classics-POG-Polyphonic-Octave-Generator-Guitar-Effects-Pedal/153330000000000-00-500x500.jpg", product_id: 12, name: "POG"},
  {url: "http://www.ehx.com/assets/jpg240h/pog2.jpg", product_id: 14, name: "POG2"},
  {url: "https://upload.wikimedia.org/wikipedia/commons/0/0f/Boss-DS-1.jpg", product_id: 17, name: nil},
  {url: "", product_id: 18, name: nil}
])
Order.create!([
  {user_id: 1, product_id: nil, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 6, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 17, quantity: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 17, quantity: 2, subtotal: 0, tax: nil, total: nil},
  {user_id: 1, product_id: 6, quantity: 2, subtotal: 0, tax: nil, total: nil},
  {user_id: 1, product_id: 5, quantity: 4, subtotal: 0, tax: nil, total: nil},
  {user_id: 1, product_id: 5, quantity: 3, subtotal: 0, tax: nil, total: nil},
  {user_id: 1, product_id: 14, quantity: 5, subtotal: 0, tax: nil, total: nil},
  {user_id: 1, product_id: 5, quantity: 3, subtotal: 0, tax: 0, total: 0},
  {user_id: 1, product_id: 5, quantity: 3, subtotal: 0, tax: 0, total: 0},
  {user_id: 1, product_id: 5, quantity: 3, subtotal: 0, tax: 0, total: 0},
  {user_id: 1, product_id: 5, quantity: 3, subtotal: 525, tax: 47, total: 572},
  {user_id: 1, product_id: 17, quantity: 2, subtotal: 200, tax: 18, total: 218},
  {user_id: 1, product_id: 14, quantity: 4, subtotal: 1320, tax: 118, total: 1438},
  {user_id: 1, product_id: 10, quantity: 2, subtotal: 998, tax: 89, total: 1087},
  {user_id: 1, product_id: 17, quantity: 4, subtotal: 400, tax: 36, total: 436}
])
Product.create!([
  {name: "Fat Sandwich", price: "0.0", description: "A fantastic Distortion", in_stock: nil, supplier_id: 1, user_id: 1},
  {name: "Full Drive 3", price: "0.0", description: "Sick OD with magenificent separate boost section.  Can have boost routed to OD for more crunch or OD routed to boost for louder OD", in_stock: nil, supplier_id: 2, user_id: 1},
  {name: "Line 6 DL4", price: "0.0", description: "The industry standard for delay.  NUFF SAID", in_stock: nil, supplier_id: 2, user_id: 1},
  {name: "Metal Zone", price: "0.0", description: "Yucky", in_stock: nil, supplier_id: 1, user_id: 1},
  {name: "Carbon Copy Delay", price: "175.0", description: "Nice small awesome sounding delay", in_stock: nil, supplier_id: 1, user_id: 1},
  {name: "Pork Loin", price: "99.0", description: "Big OD\n", in_stock: false, supplier_id: 2, user_id: 1},
  {name: "Hog", price: "499.0", description: "An amazing harmonic octave generator", in_stock: true, supplier_id: 2, user_id: 1},
  {name: "POG", price: "330.0", description: "Polyphonic Octave Generator", in_stock: true, supplier_id: 1, user_id: 1},
  {name: "POG2", price: "330.0", description: "An Upgraded Pog", in_stock: true, supplier_id: 1, user_id: 1},
  {name: "Dist", price: "100.0", description: "Dist", in_stock: true, supplier_id: 1, user_id: 1}
])
Supplier.create!([
  {name: "Reverb.com", email: "reverb@Reverb.com", phone: "555-555-5555"},
  {name: "Guitar Center", email: "gc@guitarcenter.com", phone: "555-555-5555"}
])
