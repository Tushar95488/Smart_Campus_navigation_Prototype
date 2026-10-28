class Room {
  final String roomNumber;
  final String description;
  final String category;
  final String category;

  const Room({required this.roomNumber, required this.description, this.category = 'Rooms/Other'});
}

class Floor {
  final String floorName;
  final List<Room> rooms;

  const Floor({required this.floorName, required this.rooms});
}

class BuildingInfo {
  final String buildingName;
  final List<Floor> floors;

  const BuildingInfo({required this.buildingName, required this.floors});
}

final List<BuildingInfo> campusBuildings = [
  const BuildingInfo(
    buildingName: 'Visvesvaraya',
    floors: [
      Floor(
        floorName: 'Ground Floor',
        rooms: [
          Room(roomNumber: '001', description: 'Concrete Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '002', description: 'Soil Mechanics Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '003', description: 'Elect Panel Room', category: 'Offices', category: 'Offices'),
          Room(roomNumber: '004', description: 'Dr. Debashish Chowdhury(Dean)', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '005', description: 'Unit Operation Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '006', description: 'Fluid Mechanics Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '007', description: 'Transportation Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '008', description: 'Environmental Lab', category: 'Labs', category: 'Labs'),
        ],
      ),
      Floor(
        floorName: '1st Floor',
        rooms: [
          Room(roomNumber: '101', description: 'Seminar hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '102', description: 'Tutorial Room', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '103', description: 'Tutorial Room', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '104', description: 'Reservoir Engineering and Petro Product Testing Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '105', description: 'Lecture hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '106', description: 'Drilling Fluid and Cement Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '107', description: 'Faculty cabin Dr. Rakesh K. Pandey (HOD)', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '108', description: 'Store', category: 'Offices', category: 'Offices'),
          Room(roomNumber: '109', description: 'PA to Dean', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '110', description: 'Faculty cabin Dr Parul Saini, Neha Sharma', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '111', description: 'Faculty Cabin', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '112', description: 'Faculty cabin Dr Gopal Kumar', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '113', description: 'Faculty cabin Dr Amit Chatterjee, Vaibhav Padhye', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '114', description: 'Faculty Cabin', category: 'Faculty Cabins', category: 'Faculty Cabins'),
        ],
      ),
      Floor(
        floorName: '2nd Floor',
        rooms: [
          Room(roomNumber: '201', description: 'Lecture Hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '202', description: 'Tutorial Room', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '203', description: 'Tutorial Room', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '204', description: 'Server/CCTV Room', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '205', description: 'Computer Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '206', description: 'Drawing Hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '207', description: 'Geology and Survey Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '208', description: 'Faculty Cabin Dr Tarunmay Ghoshal (HOD)', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '209', description: 'Store', category: 'Offices', category: 'Offices'),
          Room(roomNumber: '210', description: 'PA Room', category: 'Offices', category: 'Offices'),
          Room(roomNumber: '211', description: 'Faculty Cabin Dr Shulanbi Pal', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '212', description: 'Faculty Cabin Dr Dobon Danerjee', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '213', description: 'Faculty Cabin Dr Rana Acharya', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '214', description: 'Faculty Cabin Dr Inu Kumari', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '215', description: 'Faculty Cabin Dr Subhajit Raj', category: 'Faculty Cabins', category: 'Faculty Cabins'),
        ],
      ),
      Floor(
        floorName: '3rd Floor',
        rooms: [
          Room(roomNumber: '301', description: 'Lecture hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '302', description: 'Lecture Hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '303', description: 'Data Interpretation and Spatial Analysis Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '304', description: 'Business Analytics Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '305', description: 'Lecture Hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '306', description: 'Structure Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '307', description: 'Student counselor Zainab Faruqui', category: 'Offices', category: 'Offices'),
          Room(roomNumber: '308', description: 'Store', category: 'Offices', category: 'Offices'),
          Room(roomNumber: '309', description: 'PA', category: 'Rooms/Other', category: 'Rooms/Other'),
          Room(roomNumber: '310', description: 'Faculty Cabin Dr Dipika Keshri, Dr Seema Yadav', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '311', description: 'Faculty Cabin Dr Mohd Hubban Akhter', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '312', description: 'Faculty Cabin Vibhooti Papola, Tripti Halder', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '313', description: 'Faculty Cabin Dr Reetika Sehgal, Dr Sukanya Sharma', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '314', description: 'Faculty Cabin Dr Rohit Maheshwari', category: 'Faculty Cabins', category: 'Faculty Cabins'),
        ],
      ),
      Floor(
        floorName: '4th Floor',
        rooms: [
          Room(roomNumber: '401', description: 'Lecture hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '402', description: 'Lecture Hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '403', description: 'Lecture Hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '405', description: 'Lecture Hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '406', description: 'Lecture Hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '407', description: 'Library', category: 'Offices', category: 'Offices'),
          Room(roomNumber: '408', description: 'Lecture Hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '409', description: 'Faculty Cabin Dr Binay Kumar Singh (Dean)', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '410', description: 'Store', category: 'Offices', category: 'Offices'),
          Room(roomNumber: '411', description: 'PA', category: 'Rooms/Other', category: 'Rooms/Other'),
          Room(roomNumber: '412', description: 'Faculty Cabin Anuj Kumar, Dr Anukaran Khanna', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '413', description: 'Faculty Cabin Farah Fatma', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '414', description: 'Faculty Cabin Dr Preeti Sharma, Dr Karuna Evangeline Prakash', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '415', description: 'Faculty Cabin Dr Pankaj Kumar', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '416', description: 'Faculty Cabin Dr Hemrak Verma', category: 'Faculty Cabins', category: 'Faculty Cabins'),
        ],
      ),
      Floor(
        floorName: '5th Floor',
        rooms: [
          Room(roomNumber: '501', description: 'Lecture hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '502', description: 'Lecture hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '503', description: 'Lecture hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '504', description: 'Faculty Cabin Dr Vijay Kumar Jain', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '505', description: 'Lecture Hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '506', description: 'Lecture Hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '507', description: 'Lecture hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '509', description: 'Lecture hall', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: 'Unnumbered', description: 'MBA Activity room', category: 'Rooms/Other', category: 'Rooms/Other'),
        ],
      ),
    ],
  ),
  const BuildingInfo(
    buildingName: 'Vedanta',
    floors: [
      Floor(
        floorName: 'Basement',
        rooms: [
          Room(roomNumber: 'Unnumbered', description: 'Parking', category: 'Facilities', category: 'Facilities'),
        ],
      ),
      Floor(
        floorName: 'Ground Floor',
        rooms: [
          Room(roomNumber: 'Unnumbered', description: 'Reception', category: 'Offices', category: 'Offices'),
          Room(roomNumber: 'Unnumbered', description: 'Office of Dean, School of Computing', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: 'Unnumbered', description: 'Office of Dean, Research And Consultancy', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: 'Unnumbered', description: 'Career Service Cell, School of Computing', category: 'Rooms/Other', category: 'Rooms/Other'),
          Room(roomNumber: 'Unnumbered', description: 'Admissions Office', category: 'Offices', category: 'Offices'),
        ],
      ),
      Floor(
        floorName: '1st Floor',
        rooms: [
          Room(roomNumber: 'Unnumbered', description: 'Veda Central Library', category: 'Offices', category: 'Offices'),
        ],
      ),
      Floor(
        floorName: '2nd Floor',
        rooms: [
          Room(roomNumber: '202-205', description: 'Lecture Halls', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '207', description: 'Ena Jain', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '208', description: 'Dr Bharti Sharma (Head)', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '209', description: 'Vani Mittal, Vedna Sharma', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '210', description: 'Dr Anushikha Singh', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '211', description: 'Dr Dhruva Chaudhary', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '212', description: 'Palak Arora, Dr Preeti Sharma', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '213', description: 'Mohammad Zia Ur Rehman, Dr Mohd Shariq', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '214', description: 'Dr Pooja Gupta', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '215', description: '(No name)', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '216', description: 'Dr Pradeep Singh Rawat, Suchi Sharma', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '217', description: 'Diwaker, Tarun Kumar', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '218', description: 'Dr Anuj Kumar Yadav, Dr Naveen Kumar', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '219', description: 'Dr N Anandshree Singh', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '220', description: 'Dr Kriti Gupta, Deeksha Aswal', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '222', description: 'Office', category: 'Offices', category: 'Offices'),
          Room(roomNumber: '223', description: 'Virtusa Full Stack & DevOps Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '226-229', description: 'Lecture Halls', category: 'Lecture Halls', category: 'Lecture Halls'),
        ],
      ),
      Floor(
        floorName: '3rd Floor',
        rooms: [
          Room(roomNumber: '302-305', description: 'Lecture Halls', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '307', description: '(No name)', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '308', description: 'Dr Anil Kumar (Head)', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '309', description: 'Dr Garima Verma', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '310', description: 'Dr Deepshikha', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '311', description: 'Dr Jyotsna Dogra', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '312', description: 'Nidhi Wadhwa', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '313', description: 'Neha Singh, Vishakha Arya', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '314', description: 'Dr Surabhi Patel', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '315', description: '(No name)', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '316', description: 'Vinay Saroya', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '317', description: 'Somil Kumar Gupta, Ankit Maithani', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '318', description: 'Dr Arvind Kumar Vishwakarma, Dr Biswadip Bandyopadhyay', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '319', description: 'Dr Suchi Johari', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '320', description: 'Dr Sunil Ghildiyal', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '322', description: 'Ravinder Joshi', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '323', description: 'IBM Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '326-329', description: 'Lecture Halls', category: 'Lecture Halls', category: 'Lecture Halls'),
        ],
      ),
      Floor(
        floorName: '4th Floor',
        rooms: [
          Room(roomNumber: '402-405', description: 'Lecture Halls', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '407', description: 'Kretika Goel', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '408', description: 'Divya Lohani', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '409', description: '(No name)', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '410', description: '(No name)', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '411', description: 'Dr Prabhoj Kaur', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '412', description: 'Sanjay Kumar', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '413', description: 'Shabnam, Dr Priya Dangwal', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '414', description: 'Dr Priyanka Dahiya', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '415', description: 'Dr Rakesh Kumar Saini, Sonu Pant', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '416', description: 'Shivankar Thapliyal', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '417', description: 'Kapil Dev Sharma, Ravi Shankar Jha', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '418', description: 'Dr Monika Singh Dhull, Dr Neha Gupta', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '419', description: 'Dr Gaurav Dhiman', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '420', description: 'Shreya Deoli, Shweta Paliwal', category: 'Faculty Cabins', category: 'Faculty Cabins'),
          Room(roomNumber: '422', description: 'Office', category: 'Offices', category: 'Offices'),
          Room(roomNumber: '423', description: 'Data Science & Analytics Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '424', description: 'Computer Network Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '425', description: 'Programming Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '426-427', description: 'Lecture Halls', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '428', description: 'Research & Development Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '429', description: 'Lecture Hall', category: 'Lecture Halls', category: 'Lecture Halls'),
        ],
      ),
      Floor(
        floorName: '5th Floor',
        rooms: [
          Room(roomNumber: '502', description: 'Auditorium', category: 'Lecture Halls', category: 'Lecture Halls'),
          Room(roomNumber: '505', description: 'Computer Centre', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '506-508', description: 'Programming Labs', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '509', description: 'Server Room', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '510', description: 'Programming Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '511', description: 'Mobile Apps Development Lab', category: 'Labs', category: 'Labs'),
          Room(roomNumber: '512', description: 'Computer Vision & Biometrics Lab', category: 'Labs', category: 'Labs'),
        ],
      ),
    ],
  ),
];
