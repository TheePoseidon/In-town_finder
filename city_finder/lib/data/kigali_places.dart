import '../models/place.dart';

const List<Place> kigaliPlaces = [
  // ── HOSPITALS ──────────────────────────────────────────────────────────────
  Place(
    id: 'h1',
    name: 'King Faisal Hospital',
    categoryId: 'hospital',
    description:
        'A leading referral hospital in Rwanda offering a wide range of specialist services including cardiology, oncology, and neurosurgery.',
    address: 'KG 544 St, Kacyiru, Kigali',
    latitude: -1.9441,
    longitude: 30.0619,
    phone: '+250 788 303 000',
    hours: 'Open 24 hours',
    website: 'www.kfh.rw',
  ),
  Place(
    id: 'h2',
    name: 'CHUK – University Teaching Hospital',
    categoryId: 'hospital',
    description:
        'The Centre Hospitalier Universitaire de Kigali is Rwanda\'s main teaching hospital providing comprehensive medical care and surgical services.',
    address: 'KN 4 Ave, Nyarugenge, Kigali',
    latitude: -1.9567,
    longitude: 30.0607,
    phone: '+250 788 454 700',
    hours: 'Open 24 hours',
  ),
  Place(
    id: 'h3',
    name: 'Rwanda Military Hospital',
    categoryId: 'hospital',
    description:
        'A modern military hospital that also serves the civilian population with advanced diagnostic and treatment facilities.',
    address: 'KK 15 Rd, Kanombe, Kigali',
    latitude: -1.9612,
    longitude: 30.1002,
    phone: '+250 788 197 000',
    hours: 'Open 24 hours',
  ),
  Place(
    id: 'h4',
    name: 'Muhima District Hospital',
    categoryId: 'hospital',
    description:
        'A district-level hospital serving Nyarugenge sector offering maternity, outpatient, and emergency services.',
    address: 'KN 67 St, Muhima, Kigali',
    latitude: -1.9448,
    longitude: 30.0536,
    phone: '+250 788 303 200',
    hours: 'Open 24 hours',
  ),
  Place(
    id: 'h5',
    name: 'Kibagabaga District Hospital',
    categoryId: 'hospital',
    description:
        'A well-equipped district hospital in Gasabo serving the northern suburbs of Kigali with inpatient and outpatient services.',
    address: 'KG 9 Ave, Kibagabaga, Kigali',
    latitude: -1.9233,
    longitude: 30.1003,
    phone: '+250 788 303 300',
    hours: 'Open 24 hours',
  ),

  // ── POLICE STATIONS ────────────────────────────────────────────────────────
  Place(
    id: 'p1',
    name: 'Rwanda National Police Headquarters',
    categoryId: 'police',
    description:
        'The central command of the Rwanda National Police overseeing law enforcement across the country.',
    address: 'KN 3 Rd, Kacyiru, Kigali',
    latitude: -1.9440,
    longitude: 30.0949,
    phone: '+250 788 311 155',
    hours: 'Open 24 hours',
  ),
  Place(
    id: 'p2',
    name: 'Remera Police Station',
    categoryId: 'police',
    description:
        'Serves the Remera and Gisimenti neighbourhoods. Handles reports, patrols, and community policing.',
    address: 'KG 11 Ave, Remera, Kigali',
    latitude: -1.9517,
    longitude: 30.1100,
    phone: '+250 788 311 177',
    hours: 'Open 24 hours',
  ),
  Place(
    id: 'p3',
    name: 'Nyabugogo Police Station',
    categoryId: 'police',
    description:
        'Covers the busy Nyabugogo transport hub and surrounding commercial areas.',
    address: 'KN 2 Ave, Nyabugogo, Kigali',
    latitude: -1.9386,
    longitude: 30.0493,
    phone: '+250 788 311 188',
    hours: 'Open 24 hours',
  ),
  Place(
    id: 'p4',
    name: 'Kicukiro Police Station',
    categoryId: 'police',
    description:
        'Serves the Kicukiro district including Niboye, Kagarama, and Gatenga sectors.',
    address: 'KK 3 Ave, Kicukiro, Kigali',
    latitude: -1.9800,
    longitude: 30.0800,
    phone: '+250 788 311 199',
    hours: 'Open 24 hours',
  ),

  // ── LIBRARIES ──────────────────────────────────────────────────────────────
  Place(
    id: 'l1',
    name: 'Rwanda National Library',
    categoryId: 'library',
    description:
        'The country\'s main public library with a vast collection of books, digital resources, study rooms, and regular community programs.',
    address: 'KG 7 Ave, Kacyiru, Kigali',
    latitude: -1.9441,
    longitude: 30.0966,
    phone: '+250 788 383 808',
    hours: 'Mon–Fri 8am–6pm, Sat 9am–5pm',
    website: 'www.rnl.gov.rw',
  ),
  Place(
    id: 'l2',
    name: 'Carnegie Kigali City Library',
    categoryId: 'library',
    description:
        'A modern public library in the city centre offering books, internet access, and educational workshops for all ages.',
    address: 'KN 4 Ave, Nyarugenge, Kigali',
    latitude: -1.9457,
    longitude: 30.0607,
    phone: '+250 252 575 555',
    hours: 'Mon–Sat 8am–7pm',
  ),
  Place(
    id: 'l3',
    name: 'UR Central Library – Gikondo Campus',
    categoryId: 'library',
    description:
        'University of Rwanda\'s central library stocked with academic journals, textbooks, and research databases.',
    address: 'KK 15 Rd, Gikondo, Kigali',
    latitude: -1.9735,
    longitude: 30.0671,
    phone: '+250 252 570 720',
    hours: 'Mon–Fri 7:30am–9pm, Sat 8am–5pm',
  ),

  // ── UTILITIES ──────────────────────────────────────────────────────────────
  Place(
    id: 'u1',
    name: 'WASAC Customer Service Centre',
    categoryId: 'utility',
    description:
        'Water and Sanitation Corporation service centre for billing inquiries, new connections, and reporting water supply issues.',
    address: 'KN 9 Ave, Nyarugenge, Kigali',
    latitude: -1.9463,
    longitude: 30.0642,
    phone: '+250 788 177 777',
    hours: 'Mon–Fri 7:30am–5pm',
    website: 'www.wasac.rw',
  ),
  Place(
    id: 'u2',
    name: 'REG – Rwanda Energy Group HQ',
    categoryId: 'utility',
    description:
        'Handles electricity connections, billing disputes, power outage reports, and new service installations.',
    address: 'KG 2 Ave, Kacyiru, Kigali',
    latitude: -1.9610,
    longitude: 30.0607,
    phone: '+250 788 190 000',
    hours: 'Mon–Fri 7:30am–5pm',
    website: 'www.reg.rw',
  ),
  Place(
    id: 'u3',
    name: 'Rwanda Revenue Authority (RRA) HQ',
    categoryId: 'utility',
    description:
        'Main offices for tax registration, filing, and compliance assistance for individuals and businesses.',
    address: 'KK 15 Rd, Kacyiru, Kigali',
    latitude: -1.9490,
    longitude: 30.0594,
    phone: '+250 788 185 500',
    hours: 'Mon–Fri 7:30am–5pm',
    website: 'www.rra.gov.rw',
  ),
  Place(
    id: 'u4',
    name: 'MTN Rwanda – Kigali Service Centre',
    categoryId: 'utility',
    description:
        'MTN\'s flagship service centre for SIM registration, MoMo issues, broadband subscriptions, and device support.',
    address: 'KN 3 Ave, Nyarugenge, Kigali',
    latitude: -1.9500,
    longitude: 30.0580,
    phone: '+250 788 190 190',
    hours: 'Mon–Sat 8am–6pm',
    website: 'www.mtn.co.rw',
  ),
  Place(
    id: 'u5',
    name: 'Irembo Customer Experience Hub',
    categoryId: 'utility',
    description:
        'Government digital services one-stop shop for passports, driving licences, land transactions, and over 100 other e-government services.',
    address: 'KG 5 Ave, Kacyiru, Kigali',
    latitude: -1.9455,
    longitude: 30.0980,
    phone: '+250 788 300 900',
    hours: 'Mon–Fri 8am–5pm',
    website: 'www.irembo.gov.rw',
  ),

  // ── RESTAURANTS ────────────────────────────────────────────────────────────
  Place(
    id: 'r1',
    name: 'Heaven Restaurant',
    categoryId: 'restaurant',
    description:
        'Kigali\'s iconic rooftop restaurant with panoramic city views, exceptional Rwandan and international cuisine, and vibrant live music nights.',
    address: 'KG 7 Ave, Kiyovu, Kigali',
    latitude: -1.9371,
    longitude: 30.0836,
    phone: '+250 788 383 017',
    hours: 'Daily 7am–11pm',
    website: 'www.heavenrwanda.com',
  ),
  Place(
    id: 'r2',
    name: 'Repub Lounge',
    categoryId: 'restaurant',
    description:
        'A stylish restaurant and bar in the city centre popular for grilled meats, fresh salads, and a lively evening atmosphere.',
    address: 'KN 7 Ave, Nyarugenge, Kigali',
    latitude: -1.9430,
    longitude: 30.0607,
    phone: '+250 788 300 700',
    hours: 'Daily 10am–midnight',
  ),
  Place(
    id: 'r3',
    name: 'Meze Fresh',
    categoryId: 'restaurant',
    description:
        'A fresh-ingredient Mediterranean and Middle Eastern eatery loved for its wraps, hummus platters, and vegetarian options.',
    address: 'KG 9 Ave, Kiyovu, Kigali',
    latitude: -1.9390,
    longitude: 30.0836,
    phone: '+250 788 312 312',
    hours: 'Daily 11am–10pm',
  ),
  Place(
    id: 'r4',
    name: 'Karibu Restaurant',
    categoryId: 'restaurant',
    description:
        'Warm Rwandan hospitality with traditional dishes like isombe, ibihaza, and brochettes served in a garden setting.',
    address: 'KG 11 Ave, Remera, Kigali',
    latitude: -1.9532,
    longitude: 30.0886,
    phone: '+250 788 450 450',
    hours: 'Mon–Sat 11am–10pm',
  ),
  Place(
    id: 'r5',
    name: 'The Hut Restaurant',
    categoryId: 'restaurant',
    description:
        'A cozy restaurant with a fireplace terrace, known for steaks, wood-fired pizza, and the best Sunday brunch in Kigali.',
    address: 'KG 5 Ave, Nyarutarama, Kigali',
    latitude: -1.9280,
    longitude: 30.1040,
    phone: '+250 788 303 500',
    hours: 'Daily noon–11pm',
  ),

  // ── CAFÉS ──────────────────────────────────────────────────────────────────
  Place(
    id: 'c1',
    name: 'Question Coffee',
    categoryId: 'cafe',
    description:
        'A social enterprise café sourcing single-origin Rwandan coffee directly from cooperatives. Known for excellent pour-overs and cinnamon rolls.',
    address: 'KN 5 Ave, Nyarugenge, Kigali',
    latitude: -1.9459,
    longitude: 30.0628,
    phone: '+250 788 350 350',
    hours: 'Mon–Sat 7am–7pm, Sun 8am–5pm',
    website: 'www.questioncoffee.com',
  ),
  Place(
    id: 'c2',
    name: 'Bourbon Coffee – UTC',
    categoryId: 'cafe',
    description:
        'Rwanda\'s best-known specialty coffee chain. Comfortable seating, fast Wi-Fi, and a full menu of pastries and light meals.',
    address: 'UTC Mall, KN 4 Ave, Nyarugenge, Kigali',
    latitude: -1.9542,
    longitude: 30.0918,
    phone: '+250 788 301 200',
    hours: 'Daily 7am–9pm',
    website: 'www.bourboncoffee.com',
  ),
  Place(
    id: 'c3',
    name: 'Inzora Rooftop Café',
    categoryId: 'cafe',
    description:
        'A breezy rooftop café overlooking the city with artisan coffee, smoothies, and light bites in a relaxed open-air setting.',
    address: 'KN 3 Ave, Nyarugenge, Kigali',
    latitude: -1.9431,
    longitude: 30.0608,
    phone: '+250 788 320 320',
    hours: 'Daily 8am–10pm',
  ),
  Place(
    id: 'c4',
    name: 'Cultiva Coffee',
    categoryId: 'cafe',
    description:
        'Specialty coffee shop with a curated menu of Rwandan single-origin brews, cold brew, and homemade pastries.',
    address: 'KG 7 Ave, Kiyovu, Kigali',
    latitude: -1.9400,
    longitude: 30.0820,
    phone: '+250 788 340 340',
    hours: 'Mon–Sat 7:30am–7pm',
  ),

  // ── PARKS ──────────────────────────────────────────────────────────────────
  Place(
    id: 'pk1',
    name: 'Nyarutarama Lake Park',
    categoryId: 'park',
    description:
        'A serene recreational area around Lake Nyarutarama popular for morning jogs, weekend picnics, and bird watching.',
    address: 'Nyarutarama, Gasabo, Kigali',
    latitude: -1.9256,
    longitude: 30.1055,
    hours: 'Open daily sunrise to sunset',
  ),
  Place(
    id: 'pk2',
    name: 'Kigali Genocide Memorial Garden',
    categoryId: 'park',
    description:
        'The garden grounds of the memorial offer a peaceful space for reflection among flowering trees and water features.',
    address: 'KN 3 Rd, Gisozi, Kigali',
    latitude: -1.9380,
    longitude: 30.0550,
    phone: '+250 252 501 314',
    hours: 'Daily 8am–5pm',
    website: 'www.kgm.rw',
  ),
  Place(
    id: 'pk3',
    name: 'Umubano Sports & Recreation Complex',
    categoryId: 'park',
    description:
        'A multi-use sports and recreation complex with football pitches, a running track, and open green lawns for public use.',
    address: 'KG 3 Ave, Kimihurura, Kigali',
    latitude: -1.9390,
    longitude: 30.0949,
    hours: 'Daily 6am–8pm',
  ),
  Place(
    id: 'pk4',
    name: 'Mt Kigali Forest',
    categoryId: 'park',
    description:
        'A natural forest hill in the heart of Kigali offering hiking trails, stunning panoramic city views, and a habitat for local bird species.',
    address: 'Mt Kigali, Nyarugenge, Kigali',
    latitude: -1.9620,
    longitude: 30.0480,
    hours: 'Daily 6am–6pm',
  ),

  // ── TOURIST ATTRACTIONS ────────────────────────────────────────────────────
  Place(
    id: 't1',
    name: 'Kigali Genocide Memorial',
    categoryId: 'tourist',
    description:
        'The primary memorial to the 1994 Genocide against the Tutsi. The museum chronicles the history of the genocide and honours its 800,000+ victims.',
    address: 'KN 3 Rd, Gisozi, Kigali',
    latitude: -1.9394,
    longitude: 30.0562,
    phone: '+250 252 501 314',
    hours: 'Daily 8am–5pm',
    website: 'www.kgm.rw',
  ),
  Place(
    id: 't2',
    name: 'Presidential Palace Museum',
    categoryId: 'tourist',
    description:
        'The former residence of President Habyarimana, preserved as a museum. Features the wreckage of the plane whose shooting down sparked the genocide.',
    address: 'KK 737 St, Kanombe, Kigali',
    latitude: -1.9710,
    longitude: 30.1109,
    phone: '+250 788 300 999',
    hours: 'Tue–Sun 9am–5pm',
  ),
  Place(
    id: 't3',
    name: 'Inema Arts Center',
    categoryId: 'tourist',
    description:
        'A vibrant contemporary arts gallery and studio showcasing work by emerging and established Rwandan artists. Hosts weekly art classes and events.',
    address: 'KG 14 Ave, Kimihurura, Kigali',
    latitude: -1.9454,
    longitude: 30.0773,
    phone: '+250 788 300 101',
    hours: 'Mon–Sat 9am–6pm',
    website: 'www.inemaarts.com',
  ),
  Place(
    id: 't4',
    name: 'Caplaki Crafts Village',
    categoryId: 'tourist',
    description:
        'Kigali\'s premier crafts market with 100+ stalls selling traditional baskets, woodcarvings, ceramics, and textiles. A great place for authentic souvenirs.',
    address: 'KN 5 Rd, Nyarugenge, Kigali',
    latitude: -1.9486,
    longitude: 30.0628,
    hours: 'Daily 8am–6pm',
  ),
  Place(
    id: 't5',
    name: 'Kandt House Museum (Natural History)',
    categoryId: 'tourist',
    description:
        'Rwanda\'s natural history museum set in the house of the country\'s first colonial administrator. Exhibits on geology, fauna, and pre-colonial history.',
    address: 'KN 7 Ave, Nyarugenge, Kigali',
    latitude: -1.9510,
    longitude: 30.0595,
    phone: '+250 252 573 671',
    hours: 'Tue–Sun 9am–5pm',
  ),
  Place(
    id: 't6',
    name: 'Kigali Convention Centre',
    categoryId: 'tourist',
    description:
        'An iconic architectural landmark and Africa\'s most advanced convention centre. Its illuminated dome is one of Kigali\'s most recognisable sights.',
    address: 'KG 2 Roundabout, Kimihurura, Kigali',
    latitude: -1.9537,
    longitude: 30.0923,
    phone: '+250 788 177 000',
    website: 'www.kigaliconventioncentre.com',
  ),
];

List<Place> placesByCategory(String categoryId) =>
    kigaliPlaces.where((p) => p.categoryId == categoryId).toList();

List<Place> searchPlaces(String query) {
  final q = query.toLowerCase();
  return kigaliPlaces
      .where((p) =>
          p.name.toLowerCase().contains(q) ||
          p.address.toLowerCase().contains(q) ||
          p.description.toLowerCase().contains(q))
      .toList();
}
