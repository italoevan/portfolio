class Project {
  
  final String name;
  final DateTime date;
  late List<Tecnology> tecnologies;

  Project.fromMap(Map<String, dynamic> map)
      : this.name = map['name'],
        this.date = map['date'] {

    if (map['tecnologies'] != null) {
      tecnologies = [];

      map['tecnologies'].forEach((m) => tecnologies.add(Tecnology.fromMap(m)));
    }
  }
}

class Tecnology {
  final String name;

  Tecnology(String name) : this.name = name;

  Tecnology.fromMap(Map<String, dynamic> map) : this.name = map['name'];
}
