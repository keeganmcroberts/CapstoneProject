# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




puts "seeding cities"
City.destroy_all

seattle = City.create(city: "Seattle", state: "Washington", image_url:"https://images.unsplash.com/photo-1542223616-740d5dff7f56?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHNlYXR0bGV8ZW58MHx8MHx8&w=1000&q=80" )
portland = City.create(city: "Portland", state: "Oregon", image_url:"http://www.gonext.com/wp-content/uploads/2019/10/Portland-Oregon_iS_994318522_web.jpg")
sanfran = City.create(city:"San Fransico", state:"California", image_url:"https://media.istockphoto.com/photos/bay-bridge-and-san-francisco-skyline-at-sunset-picture-id476881195?b=1&k=20&m=476881195&s=170667a&w=0&h=mEHJq7rrrlPYy4JmegDVGIBrQ8QW21IFmV0EdSQowPI=")
la = City.create(city: "Los Angeles", state: "California", image_url:"https://media.istockphoto.com/photos/downtown-los-angeles-at-sunset-picture-id1203971684?k=20&m=1203971684&s=612x612&w=0&h=5MRZWDg5A4RQsyEqbGjtrnx1aj7j4klqw6h6rQeHvtI=")
vegas = City.create(city: "Las Vegas", state: "Nevada", image_url:"https://media.istockphoto.com/photos/panoramic-view-of-las-vegas-strip-at-night-in-nevada-picture-id1166193649?k=20&m=1166193649&s=612x612&w=0&h=4i4jr8mB4HhjGej5sc6xcXE9GO_jks7IO04XymKdLdU=")
saltlake = City.create(city: "Salt Lake City", state: "Utah", image_url:"https://media.istockphoto.com/photos/salt-lake-city-utah-picture-id1131482670?k=20&m=1131482670&s=612x612&w=0&h=i-bflx5IwruJNr3iZuVEscK0tV6Xz4GDfW0Dkov6gKA=")
denver = City.create(city: "Denver", state: "Colorado", image_url:"https://media.istockphoto.com/photos/denver-colorado-at-night-picture-id1063388094?b=1&k=20&m=1063388094&s=170667a&w=0&h=VkyVFKSoeivtOWZ8QZ-hrrLdQ08ccC5Wy0ztIOapqdA=")
kc = City.create(city: "Kansas City", state: "Missouri", image_url:"https://media.istockphoto.com/photos/kansas-city-missouri-usa-skyline-picture-id1033802228?k=20&m=1033802228&s=612x612&w=0&h=o5XWO69Zl4QggWtK6RU-rVN7DbBwr3goGXmHzcUwPZw=")
austin = City.create(city: "Austin", state: "Texas", image_url:"https://www.pallasweb.com/p/1-top-10.jpg")
chicago = City.create(city: "Chicago", state: "Illinois", image_url:"https://media.istockphoto.com/photos/dramatic-sunset-downtown-chicago-picture-id1204331594?k=20&m=1204331594&s=612x612&w=0&h=A3jtAUu-SlWPtYiaytmeI7nuU-k_OIDpIWfyeiTk47Y=")
nashville = City.create(city: "Nashville", state: "Tennessee", image_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/5e/12/59/caption.jpg?w=700&h=500&s=1")
raleigh = City.create(city: "Raleigh", state: "North Carolina", image_url:"http://res.cloudinary.com/simpleview/image/upload/v1502138390/clients/raleigh/165_3_0042_jpeg_a32ab91e-8245-42f1-baa2-36a6f2a54dbb.jpg")
boston = City.create(city: "Boston", state:"Massachusetts", image_url:"https://media.istockphoto.com/photos/sailing-in-boston-picture-id469769544?k=20&m=469769544&s=612x612&w=0&h=9JoV7JkVQS3Uj2iU2gpj2zueMSwi3PLNhxBLPdoex44=")
nyc = City.create(city: "New York City", state: "New York", image_url:"https://images.unsplash.com/photo-1546436836-07a91091f160?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3JTIweW9yayUyMGNpdHl8ZW58MHx8MHx8&w=1000&q=80")



puts "seeding bands"
Band.destroy_all

bonIver = Band.create(name: "Bon Iver", genre:"Folk", imaage_url:"https://handsometours.com/wp-content/uploads/2012/01/090115-BonIver.jpg")
jadeBird = Band.create(name: "Jade Bird", genre:"Folk", imaage_url:"https://ichef.bbci.co.uk/news/1024/cpsprodpb/12F8/production/_99665840_4b6131c5-d1a7-4111-b24a-31ee70a8ed99.jpg")
fleetFoxes = Band.create(name: "Fleet Foxes", genre:"Folk", imaage_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Fleet_Foxes_Coachella_2.jpg/1200px-Fleet_Foxes_Coachella_2.jpg")
phoebe = Band.create(name: "Phoebe Bridgers", genre:"Folk", imaage_url:"https://guitar.com/wp-content/uploads/2022/02/phoebe-bridgers@2000x1500.jpg")
lakeStreet = Band.create(name: "Lake Street Dive", genre:"Indie Pop", imaage_url:"https://www.wnrn.org/wp-content/uploads/2020/12/lsd.png")
arloParks = Band.create(name: "Arlo Parks", genre:"Indie Pop", imaage_url:"https://static.independent.co.uk/2020/12/30/17/newFile-1.jpg?quality=75&width=1200&auto=webp")
blackKeys = Band.create(name: "The Black Keys", genre:"Rock", imaage_url:"https://www.rollingstone.com/wp-content/uploads/2019/04/the-black-keys-alysse.jpg")
rhcp = Band.create(name: "Red Hot Chili Peppers", genre:"Rock", imaage_url:"https://i.guim.co.uk/img/media/4486c7ee0a3e358b5804c1b4d99b65b2fe8bc143/0_0_8256_4954/master/8256.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=15219ac7a000305ed8afe8119b4e0fa8")
rollingStones = Band.create(name: "The Rolling Stones", genre:"Rock", imaage_url:"https://i.guim.co.uk/img/media/506c3749f374137d4ad2aacb31c1a67946b4d657/86_97_5803_3482/master/5803.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=6122f5893f97853cd209793357cd0da4")
theWho = Band.create(name: "The Who", genre:"Rock", imaage_url:"https://bloximages.newyork1.vip.townnews.com/stltoday.com/content/tncms/assets/v3/editorial/b/6d/b6d7984d-dfb2-500c-8212-b25cd057d720/620137ef41d5d.image.jpg?resize=1200%2C800")
typhoon = Band.create(name: "Typhoon", genre:"Indie Rock", imaage_url:"https://townsquare.media/site/838/files/2018/01/typhoon-musichallofwilliamsburg-01.jpg?w=980&q=75")
modestMouse = Band.create(name: "Modest Mouse", genre:"Indie Rock", imaage_url:"https://www.nme.com/wp-content/uploads/2021/06/modest-mouse-2007.jpg")
strokes = Band.create(name: "Strokes", genre:"Indie Rock", imaage_url:"https://cdn.smehost.net/rcarecordscom-usrcaprod/wp-content/uploads/2020/02/TheStrokes_Press_01_LR-8x10-1-scaled.jpg")
blackPumas = Band.create(name: "Black Pumas", genre:"Blues Rock", imaage_url:"https://ca-times.brightspotcdn.com/dims4/default/683a25b/2147483647/strip/true/crop/7338x4897+0+0/resize/1486x992!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F2a%2F0a%2F31ab9f164b82b51d8ed054ea42ba%2Fblack-pumas-by-greg-giannukos.jpg")
tedeschi = Band.create(name: "Tedeschi Trucks Band", genre:"Blues Rock", imaage_url:"http://cdn2.atlantamagazine.com/wp-content/uploads/sites/12/2017/06/0717_TedeschiTrucksBand_TabWinters_oneuseonly.jpg")
brittanyH = Band.create(name: "Brittany Howard", genre:"Blues Rock", imaage_url:"https://media-cldnry.s-nbcnews.com/image/upload/newscms/2016_07/1418576/160124-nbcblk28-howard.jpg")
brockHampton = Band.create(name: "BROCKHAMPTON", genre:"Hip Hop", imaage_url:"https://images.complex.com/complex/images/c_fill,dpr_auto,f_auto,q_auto,w_1400/fl_lossy,pg_1/kzebxdhyaymci0qomox8/brockhampton?fimg-ssr-default")
kendrickLamar = Band.create(name: "Kendrick Lamar", genre:"Hip Hop", imaage_url:"https://townsquare.media/site/812/files/2022/05/attachment-kendrick-lamar-the-heart-part-5-video.jpg?w=1200")
frankOcean = Band.create(name: "Frank Ocean", genre:"Hip Hop", imaage_url:"https://media.gq-magazine.co.uk/photos/5d139d742881cc95de0a88fb/4:3/w_1704,h_1278,c_limit/Frank-Ocean-hp-GQ-19Apr17_b.jpg")
tylerTheCreator = Band.create(name: "Tyler, The Creator", genre:"Hip Hop", imaage_url:"https://static.independent.co.uk/s3fs-public/thumbnails/image/2014/09/14/15/Tyler-The-Creator-Rex.jpg?quality=75&width=982&height=726&auto=webp")
sza = Band.create(name: "SZA", genre:"Hip Hop", imaage_url:"https://media.pitchfork.com/photos/62a200cac6bc12979945310f/4:3/w_2000,h_1500,c_limit/SZA.jpg")
joyceManor = Band.create(name: "Joyce Manor", genre:"Punk", imaage_url:"https://www.upsetmagazine.com/images/article/Artist-Images/J/Joyce-Manor/JoyceManor_DanMonick_79970010_HiRes.jpg")
radkey = Band.create(name: "Radkey", genre: "Punk", imaage_url:"https://images.sk-static.com/images/media/profile_images/artists/4226166/huge_avatar")
amyl = Band.create(name: "Amyl and the Sniffers", genre:"Punk", imaage_url:"https://www.nme.com/wp-content/uploads/2019/05/amyl.jpg")




puts "seeding venues"
Venue.destroy_all

seattleCrocodile = Venue.create(name:"The Crocodile", city_id: seattle.id , image_url:"https://res.cloudinary.com/sagacity/image/upload/c_crop,h_4608,w_6908,x_0,y_0/c_limit,dpr_auto,f_auto,fl_lossy,q_80,w_1080/Copy_of_JG703288_ukle4e.jpg")
seattleNeumos = Venue.create(name:"Neumos", city_id: seattle.id , image_url:"https://res.cloudinary.com/sagacity/image/upload/c_crop,h_2000,w_3000,x_0,y_0/c_limit,dpr_2.625,f_auto,fl_lossy,q_80,w_412/DSC_1165_t8rg0q.jpg")
seattleSubstation = Venue.create(name:"Substation Seattle", city_id: seattle.id , image_url:"https://www.ecmag.com/sites/default/files/styles/article_medium/public/NBBJ_DennySubstation-2_BenjaminBenschneider.jpg?itok=nbYZ5RfX")
portlandRevolution = Venue.create(name:"Revolution Hall", city_id: portland.id , image_url:"https://www.revolutionhall.com/wp-content/uploads/2020/06/stageview-small-644x430.jpg")
portlandDougFir = Venue.create(name:"Doug Fir Lounge", city_id: portland.id , image_url:"https://www.vrtxmag.com/site/assets/files/63105/superorganism-5638.jpg")
portlandMississippi = Venue.create(name:"Mississippi Studios", city_id: portland.id , image_url:"https://d2i729k8wyri5w.cloudfront.net/eyJidWNrZXQiOiAiZXZlcm91dC1pbWFnZXMtcHJvZHVjdGlvbiIsICJrZXkiOiAiaW1hZ2UtMTYxNTM0MjcwNTAwMDg2Mi1taXNzMi5qcGciLCAiZWRpdHMiOiB7InJlc2l6ZSI6IHsiZml0IjogImluc2lkZSIsICJwb3NpdGlvbiI6ICJjZW50cmUiLCAid2lkdGgiOiAxMjAwLCAiaGVpZ2h0IjogbnVsbH19fQ==")
sanfranBottom = Venue.create(name:"Bottom of the Hill", city_id: sanfran.id , image_url:"https://media.spacebase.com/img/spaces/7703/16487501_1439309606081599_6333266740927572190_o.jpg")
sanfranFillmore = Venue.create(name:"The Fillmore", city_id: sanfran.id , image_url:"https://s3.amazonaws.com/uploads.thevendry.co/22458/1655305207185_The-Fillmore-San-Francisco-Auditorium-5.jpg")
sanfranIndependent = Venue.create(name:"The Independent", city_id: sanfran.id , image_url:"https://media.timeout.com/images/101722297/image.jpg")
laEchoplex = Venue.create(name:"Echoplex", city_id: la.id , image_url:"https://ca-times.brightspotcdn.com/dims4/default/10bfafa/2147483647/strip/true/crop/2046x1151+0+0/resize/1200x675!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F1b%2F95%2Fcd289c43c0877905e3a2bdde0be8%2Fla-1557953358-myb7yp5eyu-snap-image")
laRegent = Venue.create(name:"Regent Theater", city_id: la.id , image_url:"https://www.historictheatrephotos.com/Resources/Theatre-Photos/Regent-Los-Angeles/Photos/Interior/View_from_Balcony_rear.jpg")
laWiltern = Venue.create(name:"Wiltern", city_id: la.id , image_url:"https://c8.alamy.com/comp/2BH3AJ0/the-historic-wiltern-theater-marquee-and-neon-lights-in-los-angeles-ca-2BH3AJ0.jpg")
vegasEventCenter = Venue.create(name:"Vegas Event Center", city_id: vegas.id , image_url:"https://vegasexperience.com/wp-content/uploads/2020/02/dlvec-600w.jpg")
vegasHOB = Venue.create(name:"HOB Las Vegas", city_id: vegas.id , image_url:"https://mandalaybay.mgmresorts.com/content/dam/MGM/mandalay-bay/entertainment/venues/House-of-Blues/architecture/mandalay-bay-entertainment-house-of-blues-music-hall-heart.TIF")
vegasPearl = Venue.create(name:"Pearl Theater", city_id: vegas.id , image_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/62/45/44/the-pearl-at-the-palms.jpg?w=1200&h=-1&s=1")
saltlakeDepot = Venue.create(name:"the Depot", city_id: saltlake.id , image_url:"https://assets.simpleviewinc.com/simpleview/image/upload/crm/saltlake/MezzanineView-2_526371AE-94C6-40A1-97E8D2492BFD9130_11b93dfc-065a-4cee-901957cc07caedcf.jpg")
saltlakeStateRoom = Venue.create(name:"The State Room", city_id: saltlake.id , image_url:"https://media-cdn.tripadvisor.com/media/photo-m/1280/15/c5/19/f2/the-state-room-inside.jpg")
denverRedRocks = Venue.create(name:"Red Rocks Ampitheatre", city_id: denver.id , image_url:"https://cmhof.org/wp-content/uploads/2019/03/shutterstock_251767525-1.jpg")
denverOgden = Venue.create(name:"Ogden Theatre", city_id: denver.id , image_url:"https://venue-media.eventup.com/resized/venue/ogden-theatre/2065.1920x1080.jpg")
denverSummit = Venue.create(name:"Summit", city_id: denver.id , image_url:"https://assets.simpleviewinc.com/simpleview/image/upload/crm/denver/Summit-Stage-2_A611F1FE-2ED0-47AD-9D42BB5C57BF0897_16fe2120-970d-4dad-b4e68fa3be93df98.jpg")
kcUptown = Venue.create(name:"Uptown Theater", city_id: kc.id , image_url:"https://media-api.xogrp.com/images/cab55d49-1d15-4a19-809c-6d0ee0847bc2")
kcCrossRoads = Venue.create(name:"CrossRoads KC", city_id: kc.id , image_url:"https://img1.10bestmedia.com/Images/Photos/261957/p-USA-Today---Best-Nightlife---CrossroadsKC-at-Grinders_55_660x440.jpg")
kcTruman = Venue.create(name:"The Truman", city_id: kc.id , image_url:"https://blackpartykc.com/wp-content/uploads/2021/09/black-party-kansas-city-new-years-eve-2021-at-the-truman-300x200.jpg")
austinMohawk = Venue.create(name:"Mohawk Austin", city_id: austin.id , image_url:"https://lostinaustin.org/wp-content/uploads/2019/02/mohawk-03-1024x683.jpg")
austinAntones = Venue.create(name:"Antone's Nightclub", city_id: austin.id , image_url:"https://antonesnightclub.com/wp-content/uploads/2021/05/image-10.jpeg")
austinACL = Venue.create(name:"ACL Live & 3TEN", city_id: austin.id , image_url:"https://3tenaustin.com/wp-content/uploads/2019/09/IMG_1445.jpg")
chicagoThalia = Venue.create(name:"Thalia Hall", city_id: chicago.id , image_url:"https://images.squarespace-cdn.com/content/v1/5b088cce620b85511ff9c68d/1543361427230-2UGOPXQH89BODFDCLPPZ/thalia.png?format=1000w")
chicagoConcord = Venue.create(name:"Concord Music Hall", city_id: chicago.id , image_url:"https://venue-media.eventup.com/resized/venue/concord-music-hall/fa57.1920x1080.jpg")
chicagoHOB = Venue.create(name:"House of Blues Chicago", city_id: chicago.id , image_url:"https://www.vpix.net/uploads/panos/houseofblueschicago461075/slides/4apsZybD_1492403343.jpg")
nashvilleBluebird = Venue.create(name:"The Bluebird Cafe", city_id: nashville.id , image_url:"https://www.rollingstone.com/wp-content/uploads/2020/04/music-in-crisis-bluebird-cafe.jpg")
nashvilleRyamn = Venue.create(name:"Ryman Auditorium", city_id: nashville.id , image_url:"https://tennesseeencyclopedia.net/wp-content/uploads/2017/11/R072a.jpg")
nashvilleMercy = Venue.create(name:"Mercy Lounge", city_id: nashville.id , image_url:"https://i0.wp.com/www.mercylounge.com/wp-content/uploads/2021/04/DSC_7653-scaled.jpg?ssl=1")
raleighRitz= Venue.create(name:"The Ritz", city_id: raleigh.id , image_url:"https://pbs.twimg.com/media/FYm5tJAXgAY9eSR.jpg")
raleighLincoln= Venue.create(name:"Lincoln Theatre", city_id: raleigh.id , image_url:"https://assets.simpleviewinc.com/simpleview/image/fetch/q_75/https://assets.simpleviewinc.com/simpleview/image/upload/crm/raleigh/lincolntheatre0-c9a64a3cddf033a_c9a64b35-afe5-f659-ab1bf7423aafc35b.jpg")
raleighRedHat= Venue.create(name:"Red Hat Amphitheater", city_id: raleigh.id , image_url:"https://www.redhatamphitheater.com/sites/rha/files/hero/2018-08/Bluegrass%202017-0395_0.jpg")
bostonHOB = Venue.create(name:"House of Blues Boston", city_id: boston.id , image_url:"https://media.timeout.com/images/105504157/image.jpg")
bostonParadise = Venue.create(name:"Paradise Rock Club", city_id: boston.id , image_url:"https://cdn10.bostonmagazine.com/wp-content/uploads/2017/01/paradise-rock-club-1.jpg")
bostonBrighton = Venue.create(name:"Brighton Music Hall", city_id: boston.id , image_url:"http://www.yardhawk.net/everybodytalking/wp-content/uploads/2019/10/dodos-1.jpg")
nycTerminal5 = Venue.create(name:"Terminal 5", city_id: nyc.id , image_url:"https://www.uniquevenues.com/sites/uniquevenues.com/files/imagecache/venue_flexslider_2018/venues/slideshow/1106.jpg")
nycWebster = Venue.create(name:"Webster Hall", city_id: nyc.id , image_url:"https://www.amny.com/wp-content/uploads/2019/05/image-481.jpg")
nycRadioCity = Venue.create(name:"Radio City Music Hall", city_id: nyc.id , image_url:"https://images.unsplash.com/photo-1512621301270-6b01205790ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFkaW8lMjBjaXR5JTIwbXVzaWMlMjBoYWxsfGVufDB8fDB8fA%3D%3D&w=1000&q=80")


puts "seeding dates"
ConcertDate.destroy_all

sep30 = ConcertDate.create(date:"09/30/202")
oct1 = ConcertDate.create(date:"10/01/2022")
oct2 = ConcertDate.create(date:"10/02/2022")
oct3 = ConcertDate.create(date:"10/03/2022")
oct4 = ConcertDate.create(date:"10/04/2022")
oct5 = ConcertDate.create(date:"10/05/2022")
oct6 = ConcertDate.create(date:"10/06/2022")
oct7 = ConcertDate.create(date:"10/07/2022")
oct8 = ConcertDate.create(date:"10/08/2022")
oct9 = ConcertDate.create(date:"10/09/2022")
oct10 = ConcertDate.create(date:"10/10/2022")
oct11 = ConcertDate.create(date:"10/11/2022")
oct12 = ConcertDate.create(date:"10/12/2022")
oct13 = ConcertDate.create(date:"10/13/2022")
oct14 = ConcertDate.create(date:"10/14/2022")
oct15 = ConcertDate.create(date:"10/15/2022")
oct16 = ConcertDate.create(date:"10/16/2022")
oct17 = ConcertDate.create(date:"10/17/2022")
oct18 = ConcertDate.create(date:"10/18/2022")
oct19 = ConcertDate.create(date:"10/19/2022")
oct20 = ConcertDate.create(date:"10/20/2022")
oct21 = ConcertDate.create(date:"10/22/2022")
oct22 = ConcertDate.create(date:"10/22/2022")
oct23 = ConcertDate.create(date:"10/23/2022")
oct24 = ConcertDate.create(date:"10/24/2022")
oct25 = ConcertDate.create(date:"10/25/2022")
oct26 = ConcertDate.create(date:"10/26/2022")
oct27 = ConcertDate.create(date:"10/27/2022")
oct28 = ConcertDate.create(date:"10/28/2022")
oct29 = ConcertDate.create(date:"10/29/2022")
oct30 = ConcertDate.create(date:"10/30/2022")
oct31 = ConcertDate.create(date:"10/31/2022") 


puts "seeding concerts"
Concert.destroy_all

Concert.create(concert_date_id: sep30.id, venue_id: seattleSubstation.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct1.id, venue_id: portlandMississippi.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct2.id, venue_id:sanfranBottom.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct5.id, venue_id:laEchoplex.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct6.id, venue_id:laWiltern.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct9.id, venue_id:vegasEventCenter.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct10.id, venue_id:saltlakeStateRoom.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct12.id, venue_id:denverRedRocks.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct14.id, venue_id:kcTruman.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct15.id, venue_id:chicagoHOB.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct18.id, venue_id:nashvilleRyamn.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct22.id, venue_id:raleighRedHat.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct25.id, venue_id:nycRadioCity.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct26.id, venue_id:nycRadioCity.id, band_id:bonIver.id)
Concert.create(concert_date_id: oct29.id, venue_id:bostonBrighton.id, band_id:bonIver.id)


Concert.create(concert_date_id: sep30.id, venue_id: nycRadioCity.id, band_id:fleetFoxes.id)
Concert.create(concert_date_id: oct2.id, venue_id: raleighRedHat.id, band_id:fleetFoxes.id)
Concert.create(concert_date_id: oct3.id, venue_id:nashvilleRyamn.id, band_id:fleetFoxes.id)
Concert.create(concert_date_id: oct5.id, venue_id:chicagoThalia.id, band_id:fleetFoxes.id)
Concert.create(concert_date_id: oct6.id, venue_id:kcUptown.id, band_id:fleetFoxes.id) 
Concert.create(concert_date_id: oct9.id, venue_id:denverRedRocks.id, band_id:fleetFoxes.id)
Concert.create(concert_date_id: oct11.id, venue_id:saltlakeDepot.id, band_id:fleetFoxes.id)
Concert.create(concert_date_id: oct13.id, venue_id:vegasHOB.id, band_id:fleetFoxes.id)
Concert.create(concert_date_id: oct16.id, venue_id:laRegent.id, band_id:fleetFoxes.id)
Concert.create(concert_date_id: oct18.id, venue_id:laEchoplex.id, band_id:fleetFoxes.id) 
Concert.create(concert_date_id: oct20.id, venue_id:sanfranFillmore.id, band_id:fleetFoxes.id) 
Concert.create(concert_date_id: oct23.id, venue_id:portlandMississippi.id, band_id:fleetFoxes.id) 
Concert.create(concert_date_id: oct25.id, venue_id:portlandRevolution.id, band_id:fleetFoxes.id)
Concert.create(concert_date_id: oct29.id, venue_id:seattleCrocodile.id, band_id:fleetFoxes.id)
Concert.create(concert_date_id: oct1.id, venue_id:nycRadioCity.id, band_id:fleetFoxes.id)

Concert.create(concert_date_id: sep30.id, venue_id: sanfranBottom.id, band_id:jadeBird.id)
Concert.create(concert_date_id: oct1.id, venue_id: laWiltern.id, band_id:jadeBird.id) 
Concert.create(concert_date_id: oct2.id, venue_id:laWiltern.id, band_id:jadeBird.id) 
Concert.create(concert_date_id: oct6.id, venue_id:vegasPearl.id, band_id:jadeBird.id)
Concert.create(concert_date_id: oct8.id, venue_id:saltlakeDepot.id, band_id:jadeBird.id)
Concert.create(concert_date_id: oct10.id, venue_id:denverSummit.id, band_id:jadeBird.id)
Concert.create(concert_date_id: oct12.id, venue_id:kcCrossRoads.id, band_id:jadeBird.id)
Concert.create(concert_date_id: oct13.id, venue_id:chicagoConcord.id, band_id:jadeBird.id)
Concert.create(concert_date_id: oct16.id, venue_id:nashvilleBluebird.id, band_id:jadeBird.id) 
Concert.create(concert_date_id: oct18.id, venue_id:raleighRitz.id, band_id:jadeBird.id)
Concert.create(concert_date_id: oct23.id, venue_id:bostonParadise.id, band_id:jadeBird.id)
Concert.create(concert_date_id: oct24.id, venue_id:bostonParadise.id, band_id:jadeBird.id)
Concert.create(concert_date_id: oct28.id, venue_id:nycWebster.id, band_id:jadeBird.id)
Concert.create(concert_date_id: oct31.id, venue_id:nycTerminal5.id, band_id:jadeBird.id)

Concert.create(concert_date_id: oct4.id, venue_id: nycTerminal5.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct6.id, venue_id: raleighRedHat.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct8.id, venue_id:nashvilleMercy.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct10.id, venue_id:chicagoConcord.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct11.id, venue_id:kcUptown.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct13.id, venue_id:austinMohawk.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct16.id, venue_id:denverRedRocks.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct18.id, venue_id:saltlakeStateRoom.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct20.id, venue_id:vegasEventCenter.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct22.id, venue_id:laRegent.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct23.id, venue_id:laEchoplex.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct25.id, venue_id:sanfranIndependent.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct27.id, venue_id:portlandRevolution.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct28.id, venue_id:portlandRevolution.id, band_id:phoebe.id)
Concert.create(concert_date_id: oct31.id, venue_id:seattleNeumos.id, band_id:phoebe.id)

Concert.create(concert_date_id: oct1.id, venue_id: portlandDougFir.id, band_id:lakeStreet.id)
Concert.create(concert_date_id: oct4.id, venue_id: laRegent.id, band_id:lakeStreet.id) 
Concert.create(concert_date_id: oct5.id, venue_id:laRegent.id, band_id:lakeStreet.id) 
Concert.create(concert_date_id: oct8.id, venue_id:vegasHOB.id, band_id:lakeStreet.id)
Concert.create(concert_date_id: oct10.id, venue_id:saltlakeDepot.id, band_id:lakeStreet.id)
Concert.create(concert_date_id: oct13.id, venue_id:denverOgden.id, band_id:lakeStreet.id)
Concert.create(concert_date_id: oct15.id, venue_id:kcUptown.id, band_id:lakeStreet.id)
Concert.create(concert_date_id: oct17.id, venue_id:austinAntones.id, band_id:lakeStreet.id)
Concert.create(concert_date_id: oct20.id, venue_id:chicagoHOB.id, band_id:lakeStreet.id) 
Concert.create(concert_date_id: oct22.id, venue_id:nashvilleMercy.id, band_id:lakeStreet.id)
Concert.create(concert_date_id: oct25.id, venue_id:bostonHOB.id, band_id:lakeStreet.id)
Concert.create(concert_date_id: oct26.id, venue_id:bostonHOB.id, band_id:lakeStreet.id)
Concert.create(concert_date_id: oct28.id, venue_id:nycTerminal5.id, band_id:lakeStreet.id)
Concert.create(concert_date_id: oct29.id, venue_id:nycTerminal5.id, band_id:lakeStreet.id)

Concert.create(concert_date_id: oct2.id, venue_id: austinACL.id, band_id:arloParks.id)
Concert.create(concert_date_id: oct5.id, venue_id: kcCrossRoads.id, band_id:arloParks.id)
Concert.create(concert_date_id: oct6.id, venue_id:nashvilleBluebird.id, band_id:arloParks.id)
Concert.create(concert_date_id: oct7.id, venue_id:chicagoThalia.id, band_id:arloParks.id)
Concert.create(concert_date_id: oct10.id, venue_id:raleighRitz.id, band_id:arloParks.id)
Concert.create(concert_date_id: oct13.id, venue_id:bostonBrighton.id, band_id:arloParks.id)
Concert.create(concert_date_id: oct16.id, venue_id:nycWebster.id, band_id:arloParks.id)
Concert.create(concert_date_id: oct18.id, venue_id:nycTerminal5.id, band_id:arloParks.id)
Concert.create(concert_date_id: oct25.id, venue_id:vegasPearl.id, band_id:arloParks.id)
Concert.create(concert_date_id: oct27.id, venue_id:laWiltern.id, band_id:arloParks.id)
Concert.create(concert_date_id: oct28.id, venue_id:laEchoplex.id, band_id:arloParks.id)
Concert.create(concert_date_id: oct29.id, venue_id:sanfranFillmore.id, band_id:arloParks.id)
Concert.create(concert_date_id: oct31.id, venue_id:portlandMississippi.id, band_id:arloParks.id)


Concert.create(concert_date_id: oct12.id, venue_id: laWiltern.id, band_id:blackKeys.id)
Concert.create(concert_date_id: oct13.id, venue_id: laWiltern.id, band_id:blackKeys.id)
Concert.create(concert_date_id: oct15.id, venue_id:vegasEventCenter.id, band_id:blackKeys.id)
Concert.create(concert_date_id: oct20.id, venue_id:austinACL.id, band_id:blackKeys.id)
Concert.create(concert_date_id: oct21.id, venue_id:austinACL.id, band_id:blackKeys.id)
Concert.create(concert_date_id: oct25.id, venue_id:denverOgden.id, band_id:blackKeys.id)
Concert.create(concert_date_id: oct29.id, venue_id:nashvilleRyamn.id, band_id:blackKeys.id)
Concert.create(concert_date_id: oct30.id, venue_id:nashvilleRyamn.id, band_id:blackKeys.id)
Concert.create(concert_date_id: oct3.id, venue_id:bostonHOB.id, band_id:blackKeys.id)
Concert.create(concert_date_id: oct4.id, venue_id:bostonHOB.id, band_id:blackKeys.id)


Concert.create(concert_date_id: sep30.id, venue_id: laRegent.id, band_id:rhcp.id)
Concert.create(concert_date_id: oct1.id, venue_id: laRegent.id, band_id:rhcp.id)
Concert.create(concert_date_id: oct4.id, venue_id:sanfranIndependent.id, band_id:rhcp.id)
Concert.create(concert_date_id: oct5.id, venue_id:sanfranIndependent.id, band_id:rhcp.id)
Concert.create(concert_date_id: oct9.id, venue_id:austinAntones.id, band_id:rhcp.id)
Concert.create(concert_date_id: oct10.id, venue_id:austinAntones.id, band_id:rhcp.id)
Concert.create(concert_date_id: oct17.id, venue_id:kcTruman.id, band_id:rhcp.id)
Concert.create(concert_date_id: oct25.id, venue_id:nashvilleRyamn.id, band_id:rhcp.id)

Concert.create(concert_date_id: oct6.id, venue_id: nycRadioCity.id, band_id:rollingStones.id)
Concert.create(concert_date_id: oct7.id, venue_id: nycRadioCity.id, band_id:rollingStones.id)
Concert.create(concert_date_id: oct9.id, venue_id:bostonHOB.id, band_id:rollingStones.id)
Concert.create(concert_date_id: oct10.id, venue_id:bostonHOB.id, band_id:rollingStones.id)
Concert.create(concert_date_id: oct17.id, venue_id:chicagoHOB.id, band_id:rollingStones.id)
Concert.create(concert_date_id: oct21.id, venue_id:austinMohawk.id, band_id:rollingStones.id)
Concert.create(concert_date_id: oct28.id, venue_id:vegasEventCenter.id, band_id:rollingStones.id)
Concert.create(concert_date_id: oct29.id, venue_id:vegasEventCenter.id, band_id:rollingStones.id)

Concert.create(concert_date_id: oct2.id, venue_id: seattleSubstation.id, band_id:theWho.id)
Concert.create(concert_date_id: oct3.id, venue_id: seattleSubstation.id, band_id:theWho.id)
Concert.create(concert_date_id: oct6.id, venue_id:portlandRevolution.id, band_id:theWho.id)
Concert.create(concert_date_id: oct10.id, venue_id:sanfranIndependent.id, band_id:theWho.id)
Concert.create(concert_date_id: oct17.id, venue_id:laRegent.id, band_id:theWho.id)
Concert.create(concert_date_id: oct18.id, venue_id:laRegent.id, band_id:theWho.id)
Concert.create(concert_date_id: oct24.id, venue_id:vegasHOB.id, band_id:theWho.id)
Concert.create(concert_date_id: oct25.id, venue_id:vegasHOB.id, band_id:theWho.id)

Concert.create(concert_date_id: sep30.id, venue_id: denverOgden.id, band_id:typhoon.id)
Concert.create(concert_date_id: oct3.id, venue_id: denverSummit.id, band_id:typhoon.id)
Concert.create(concert_date_id: oct8.id, venue_id:vegasPearl.id, band_id:typhoon.id)
Concert.create(concert_date_id: oct15.id, venue_id:austinACL.id, band_id:typhoon.id)
Concert.create(concert_date_id: oct16.id, venue_id:austinACL.id, band_id:typhoon.id)
Concert.create(concert_date_id: oct19.id, venue_id:kcCrossRoads.id, band_id:typhoon.id)
Concert.create(concert_date_id: oct24.id, venue_id:chicagoConcord.id, band_id:typhoon.id)
Concert.create(concert_date_id: oct26.id, venue_id:nashvilleMercy.id, band_id:typhoon.id)

Concert.create(concert_date_id: sep30.id, venue_id: kcTruman.id, band_id:modestMouse.id)
Concert.create(concert_date_id: oct5.id, venue_id: denverOgden.id, band_id:modestMouse.id)
Concert.create(concert_date_id: oct8.id, venue_id:austinMohawk.id, band_id:modestMouse.id)
Concert.create(concert_date_id: oct13.id, venue_id:nashvilleRyamn.id, band_id:modestMouse.id)
Concert.create(concert_date_id: oct20.id, venue_id:chicagoHOB.id, band_id:modestMouse.id)
Concert.create(concert_date_id: oct25.id, venue_id:raleighLincoln.id, band_id:modestMouse.id)
Concert.create(concert_date_id: oct29.id, venue_id:bostonParadise.id, band_id:modestMouse.id)
Concert.create(concert_date_id: oct31.id, venue_id:bostonParadise.id, band_id:modestMouse.id)

Concert.create(concert_date_id: sep30.id, venue_id: raleighLincoln.id, band_id:strokes.id)
Concert.create(concert_date_id: oct5.id, venue_id: bostonBrighton.id, band_id:strokes.id)
Concert.create(concert_date_id: oct8.id, venue_id:nycWebster.id, band_id:strokes.id)
Concert.create(concert_date_id: oct10.id, venue_id:nycTerminal5.id, band_id:strokes.id)
Concert.create(concert_date_id: oct24.id, venue_id:chicagoThalia.id, band_id:strokes.id)
Concert.create(concert_date_id: oct27.id, venue_id:kcCrossRoads.id, band_id:strokes.id)
Concert.create(concert_date_id: oct30.id, venue_id:austinAntones.id, band_id:strokes.id)
Concert.create(concert_date_id: oct31.id, venue_id:austinAntones.id, band_id:strokes.id)

Concert.create(concert_date_id: oct6.id, venue_id: raleighLincoln.id, band_id:blackPumas.id)
Concert.create(concert_date_id: oct9.id, venue_id: nashvilleBluebird.id, band_id:blackPumas.id)
Concert.create(concert_date_id: oct15.id, venue_id:austinMohawk.id, band_id:blackPumas.id)
Concert.create(concert_date_id: oct19.id, venue_id:austinACL.id, band_id:blackPumas.id)
Concert.create(concert_date_id: oct29.id, venue_id:kcCrossRoads.id, band_id:blackPumas.id)

Concert.create(concert_date_id: oct6.id, venue_id: chicagoHOB.id, band_id:tedeschi.id)
Concert.create(concert_date_id: oct8.id, venue_id: chicagoHOB.id, band_id:tedeschi.id)
Concert.create(concert_date_id: oct15.id, venue_id:nashvilleRyamn.id, band_id:tedeschi.id)
Concert.create(concert_date_id: oct23.id, venue_id:austinMohawk.id, band_id:tedeschi.id)
Concert.create(concert_date_id: oct26.id, venue_id:austinACL.id, band_id:tedeschi.id)

Concert.create(concert_date_id: sep30.id, venue_id: seattleNeumos.id, band_id:brittanyH.id)
Concert.create(concert_date_id: oct5.id, venue_id: portlandMississippi.id, band_id:brittanyH.id)
Concert.create(concert_date_id: oct10.id, venue_id:sanfranFillmore.id, band_id:brittanyH.id)
Concert.create(concert_date_id: oct23.id, venue_id:saltlakeStateRoom.id, band_id:brittanyH.id)
Concert.create(concert_date_id: oct30.id, venue_id:denverRedRocks.id, band_id:brittanyH.id)

Concert.create(concert_date_id: oct26.id, venue_id: seattleCrocodile.id, band_id:brockHampton.id)
Concert.create(concert_date_id: oct22.id, venue_id: sanfranBottom.id, band_id:brockHampton.id)
Concert.create(concert_date_id: oct15.id, venue_id:laEchoplex.id, band_id:brockHampton.id)
Concert.create(concert_date_id: oct14.id, venue_id:laEchoplex.id, band_id:brockHampton.id)
Concert.create(concert_date_id: oct7.id, venue_id:austinACL.id, band_id:brockHampton.id)

Concert.create(concert_date_id: oct27.id, venue_id: seattleSubstation.id, band_id:kendrickLamar.id)
Concert.create(concert_date_id: oct20.id, venue_id: laEchoplex.id, band_id:kendrickLamar.id)
Concert.create(concert_date_id: oct14.id, venue_id:denverSummit.id, band_id:kendrickLamar.id)
Concert.create(concert_date_id: oct8.id, venue_id:kcTruman.id, band_id:kendrickLamar.id)
Concert.create(concert_date_id: oct1.id, venue_id:vegasEventCenter.id, band_id:kendrickLamar.id)

Concert.create(concert_date_id: sep30.id, venue_id: nycWebster.id, band_id:frankOcean.id)
Concert.create(concert_date_id: oct7.id, venue_id: chicagoConcord.id, band_id:frankOcean.id)
Concert.create(concert_date_id: oct16.id, venue_id:denverOgden.id, band_id:frankOcean.id)
Concert.create(concert_date_id: oct22.id, venue_id:vegasPearl.id, band_id:frankOcean.id)
Concert.create(concert_date_id: oct30.id, venue_id:laRegent.id, band_id:frankOcean.id)

Concert.create(concert_date_id: oct28.id, venue_id: denverRedRocks.id, band_id:tylerTheCreator.id)
Concert.create(concert_date_id: oct23.id, venue_id: vegasEventCenter.id, band_id:tylerTheCreator.id)
Concert.create(concert_date_id: oct16.id, venue_id:seattleCrocodile.id, band_id:tylerTheCreator.id)
Concert.create(concert_date_id: oct8.id, venue_id:portlandDougFir.id, band_id:tylerTheCreator.id)
Concert.create(concert_date_id: oct1.id, venue_id:sanfranBottom.id, band_id:tylerTheCreator.id)

Concert.create(concert_date_id: sep30.id, venue_id: denverRedRocks.id, band_id:sza.id)
Concert.create(concert_date_id: oct7.id, venue_id: saltlakeDepot.id, band_id:sza.id)
Concert.create(concert_date_id: oct19.id, venue_id:kcUptown.id, band_id:sza.id)
Concert.create(concert_date_id: oct22.id, venue_id:chicagoThalia.id, band_id:sza.id)
Concert.create(concert_date_id: oct31.id, venue_id:raleighRedHat.id, band_id:sza.id)

Concert.create(concert_date_id: oct10.id, venue_id: laWiltern.id, band_id:joyceManor.id)
Concert.create(concert_date_id: oct16.id, venue_id: vegasPearl.id, band_id:joyceManor.id)
Concert.create(concert_date_id: oct22.id, venue_id:denverSummit.id, band_id:joyceManor.id)
Concert.create(concert_date_id: oct25.id, venue_id:kcCrossRoads.id, band_id:joyceManor.id)
Concert.create(concert_date_id: oct31.id, venue_id:chicagoConcord.id, band_id:joyceManor.id)

Concert.create(concert_date_id: oct31.id, venue_id: kcUptown.id, band_id:radkey.id)
Concert.create(concert_date_id: oct20.id, venue_id: kcCrossRoads.id, band_id:radkey.id)
Concert.create(concert_date_id: oct12.id, venue_id:portlandDougFir.id, band_id:radkey.id)
Concert.create(concert_date_id: oct5.id, venue_id:seattleNeumos.id, band_id:radkey.id)
Concert.create(concert_date_id: sep30.id, venue_id:seattleCrocodile.id, band_id:radkey.id)

Concert.create(concert_date_id: oct27.id, venue_id: raleighRedHat.id, band_id:amyl.id)
Concert.create(concert_date_id: oct20.id, venue_id: bostonBrighton.id, band_id:amyl.id)
Concert.create(concert_date_id: oct11.id, venue_id:chicagoThalia.id, band_id:amyl.id)
Concert.create(concert_date_id: oct4.id, venue_id:nashvilleBluebird.id, band_id:amyl.id)
Concert.create(concert_date_id: sep30.id, venue_id:austinMohawk.id, band_id:amyl.id)

puts "seeding Users"
User.create(email: "keeganMc@gmail.com", password: "123")
User.create(email: "Juno@gmail.com", password: "123")
User.create(email: "Arlo@gmail.com", password: "123")


puts "done seeding 🌱"