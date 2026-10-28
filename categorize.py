import re

with open('lib/models/building_details.dart', 'r') as f:
    lines = f.readlines()

new_lines = []
for line in lines:
    if 'Room(roomNumber:' in line and 'description:' in line:
        # Extract description
        match = re.search(r"description:\s*'([^']+)'", line)
        if match:
            desc = match.group(1)
            desc_lower = desc.lower()
            
            # Faculty Cabins
            if 'cabin' in desc_lower or 'dr ' in desc_lower or 'dr.' in desc_lower or 'hod' in desc_lower or 'dean' in desc_lower:
                cat = 'Faculty Cabins'
            elif any(name in desc_lower for name in ['ena jain', 'vani mittal', 'palak arora', 'mohammad zia', 'suchi sharma', 'diwaker', 'deeksha aswal', 'nidhi wadhwa', 'neha singh', 'vinay saroya', 'somil kumar', 'ravinder joshi', 'kretika goel', 'divya lohani', 'sanjay kumar', 'shabnam', 'sonu pant', 'shivankar thapliyal', 'kapil dev', 'shreya deoli']):
                cat = 'Faculty Cabins'
            # Labs
            elif 'lab' in desc_lower or 'centre' in desc_lower or 'server' in desc_lower:
                cat = 'Labs'
            # Lecture Halls
            elif 'lecture' in desc_lower or 'tutorial' in desc_lower or 'seminar' in desc_lower or 'drawing hall' in desc_lower or 'auditorium' in desc_lower:
                cat = 'Lecture Halls'
            # Offices
            elif 'office' in desc_lower or 'pa ' in desc_lower or 'store' in desc_lower or 'counselor' in desc_lower or 'reception' in desc_lower or 'library' in desc_lower or 'panel' in desc_lower:
                cat = 'Offices'
            elif 'parking' in desc_lower:
                cat = 'Facilities'
            elif '(no name)' in desc_lower:
                cat = 'Faculty Cabins' # Based on the Vedanta list, these are usually empty faculty cabins
            else:
                cat = 'Rooms/Other'
            
            # Insert category before ')'
            # But wait, we need to add `category: 'cat'`
            new_line = line.rstrip()
            if new_line.endswith('),'):
                new_line = new_line[:-2] + f", category: '{cat}'),\n"
            elif new_line.endswith(')'):
                 new_line = new_line[:-1] + f", category: '{cat}')\n"
            else:
                new_line = line # fallback
            new_lines.append(new_line)
        else:
            new_lines.append(line)
    elif 'const Room({required this.roomNumber, required this.description});' in line:
        new_lines.append('  const Room({required this.roomNumber, required this.description, this.category = \'Rooms/Other\'});\n')
    elif 'final String description;' in line:
        new_lines.append('  final String description;\n  final String category;\n')
    else:
        new_lines.append(line)

with open('lib/models/building_details.dart', 'w') as f:
    f.writelines(new_lines)

print("Categorization complete.")
