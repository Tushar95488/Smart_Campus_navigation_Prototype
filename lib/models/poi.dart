import 'package:latlong2/latlong.dart';

enum POIType { department, lab, amenity }

class POI {
  final String id;
  final String name;
  final String description;
  final LatLng location;
  final POIType type;

  const POI({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.type,
  });
}

// Fixed coordinates aligned closely to DIT University campus structure
final List<POI> dummyPOIs = [
  POI(
    id: '1',
    name: 'Kasturba',
    description: 'Residential hostels for female students. Provides living accommodations, study areas, and basic amenities.',
    location: const LatLng(30.400602325425584, 78.07713203633539),
    type: POIType.amenity,
  ),
  POI(
    id: '2',
    name: 'Sarojni',
    description: 'Residential hostels for female students. Provides living accommodations, study areas, and basic amenities.',
    location: const LatLng(30.40036172865617, 78.07682894670869),
    type: POIType.amenity,
  ),
  POI(
    id: '3',
    name: 'Playground / Parking',
    description: 'A multi-use open space for outdoor recreation and vehicle storage, accessible to both male and female students.',
    location: const LatLng(30.400751541390747, 78.07805605735464),
    type: POIType.amenity,
  ),
  POI(
    id: '4',
    name: 'Vedanta',
    description: 'The academic center for Computer Science and Information Technology. Contains computer laboratories, server infrastructure, and department lecture halls.',
    location: const LatLng(30.399546239976875, 78.07680883016253),
    type: POIType.department,
  ),
  POI(
    id: '5',
    name: 'Vastu',
    description: 'The facility for architecture and design programs. Features open drafting studios, model-making workshops, and exhibition spaces for student projects.',
    location: const LatLng(30.399261684883825, 78.07640381659044),
    type: POIType.department,
  ),
  POI(
    id: '6',
    name: 'Charak',
    description: 'Dedicated to pharmaceutical sciences. Equipped with specialized chemistry, biology, and pharmacology laboratories.',
    location: const LatLng(30.39907660796817, 78.0765727957878),
    type: POIType.department,
  ),
  POI(
    id: '7',
    name: 'Chankya',
    description: 'The central administrative headquarters. Handles university management, admissions, fee collection, and registrar operations.',
    location: const LatLng(30.398641675788625, 78.07554819192532),
    type: POIType.department,
  ),
  POI(
    id: '8',
    name: 'Chankya (Mechanical)',
    description: 'Attached to the administrative area. Houses heavy machinery workshops, thermodynamics labs, and core mechanical engineering equipment.',
    location: const LatLng(30.398410328107843, 78.07502516116004),
    type: POIType.department,
  ),
  POI(
    id: '9',
    name: 'Vishwakarma',
    description: 'The foundational academic block for incoming freshmen. Contains large lecture halls and basic applied science laboratories.',
    location: const LatLng(30.398266892257958, 78.07471670712495),
    type: POIType.department,
  ),
  POI(
    id: '10',
    name: 'Visvesvaraya',
    description: 'The center for civil engineering. Contains structural engineering, material testing, and fluid mechanics laboratories.',
    location: const LatLng(30.398991009752773, 78.07493128384937),
    type: POIType.department,
  ),
  POI(
    id: '11',
    name: 'Chankya Lawn',
    description: 'A central green space used for outdoor campus events, student gatherings, and informal meetings.',
    location: const LatLng(30.398970188554745, 78.07577349748642),
    type: POIType.amenity,
  ),
  POI(
    id: '12',
    name: 'Parking',
    description: 'The designated vehicle storage area for faculty, day-scholars, and campus visitors.',
    location: const LatLng(30.39892623268536, 78.07614632454934),
    type: POIType.amenity,
  ),
  POI(
    id: '13',
    name: 'Sarabhai Hostel',
    description: 'Dedicated residential accommodation for first-year male students.',
    location: const LatLng(30.39749418588844, 78.0752263268462),
    type: POIType.amenity,
  ),
  POI(
    id: '14',
    name: 'Annapurna',
    description: 'The central dining facility and mess. Provides daily meals for hostel residents and campus staff.',
    location: const LatLng(30.39760986088112, 78.07475425805491),
    type: POIType.amenity,
  ),
  POI(
    id: '15',
    name: 'Bhabha Hostel',
    description: 'Residential hostel primarily allocated for first and third-year male students.',
    location: const LatLng(30.397753297683572, 78.07438679541016),
    type: POIType.amenity,
  ),
  POI(
    id: '16',
    name: 'Bose Hostel',
    description: 'Residential hostels designated for second and fourth-year male students.',
    location: const LatLng(30.397336867677726, 78.0742044051974),
    type: POIType.amenity,
  ),
  POI(
    id: '17',
    name: 'Raman Hostel',
    description: 'Residential hostels designated for second and fourth-year male students.',
    location: const LatLng(30.397140219556547, 78.07457991446942),
    type: POIType.amenity,
  ),
  POI(
    id: '18',
    name: 'Hostel Playground',
    description: 'The primary outdoor sports and physical recreation field, generally utilized by male student residents.',
    location: const LatLng(30.397036111567424, 78.07411857450667),
    type: POIType.amenity,
  ),
  POI(
    id: '19',
    name: 'Automobile Workshop',
    description: 'A practical training facility for automotive engineering. Contains vehicle chassis, engines, diagnostic equipment, and hands-on repair stations.',
    location: const LatLng(30.398151435104594, 78.07435012324626),
    type: POIType.lab,
  ),
  POI(
    id: '20',
    name: 'Vivekananda Building',
    description: 'A multipurpose facility housing robotics and advanced machinery laboratories, alongside the Career Development Cell (CDC) and ID services. It also serves as a student hub with integrated cafes and restaurants.',
    location: const LatLng(30.397818292597943, 78.07537740932611),
    type: POIType.department,
  ),
];
