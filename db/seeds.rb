Image.create!([
  {url: "http://www.themusiczoo.com/PDGImages/11928_Way_Huge_Electronics_Fat_Sandwich_Harmonic_Saturator_Distortion_Guitar_Effects_Pedal_WHE301_a.jpg", product_id: 1, name: "Fat Sandwich_1"},
  {url: "http://www.sweetwater.com/images/items/750/FullDrive3Bk-large.jpg", product_id: 2, name: "Full Drive 3_1"},
  {url: "http://c1.zzounds.com/media/fit,2018by3200/quality,85/DL4_300_RGB-5bc0573077d640ad80004b200306b2c7.jpg", product_id: 3, name: "DL4_1"},
  {url: "http://ecx.images-amazon.com/images/I/91PiNRf%2B-cL._SY355_.jpg", product_id: 4, name: "Metal Zone_1"},
  {url: "https://guitargear.files.wordpress.com/2010/11/carbon_copy.jpg", product_id: 5, name: "Carbon Copy_1"},
  {url: "http://www.jimdunlop.com/images/products/PorkLoinOverdrive-11.png", product_id: 6, name: "Pork Loin_1"},
  {url: "https://toomuchgear.files.wordpress.com/2014/11/photo-1.jpg", product_id: 5, name: "Carbon Copy_2"},
  {url: "http://medias.audiofanzine.com/images/normal/boss-mt-2-metal-zone-206137.jpg", product_id: 4, name: "Metal Zone_2"},
  {url: nil, product_id: nil, name: nil}
])
Product.create!([
  {name: "Fat Sandwich", price: "0.0", description: "A fantastic Distortion", in_stock: nil, supplier_id: 1},
  {name: "Full Drive 3", price: "0.0", description: "Sick OD with magenificent separate boost section.  Can have boost routed to OD for more crunch or OD routed to boost for louder OD", in_stock: nil, supplier_id: 2},
  {name: "Line 6 DL4", price: "0.0", description: "The industry standard for delay.  NUFF SAID", in_stock: nil, supplier_id: 2},
  {name: "Metal Zone", price: "0.0", description: "Yucky", in_stock: nil, supplier_id: 1},
  {name: "Carbon Copy Delay", price: "175.0", description: "Nice small awesome sounding delay", in_stock: nil, supplier_id: 1},
  {name: "Pork Loin", price: "99.0", description: "Big OD\n", in_stock: false, supplier_id: 2}
])
Supplier.create!([
  {name: "Reverb.com", email: "reverb@Reverb.com", phone: "555-555-5555"},
  {name: "Guitar Center", email: "gc@guitarcenter.com", phone: "555-555-5555"}
])
