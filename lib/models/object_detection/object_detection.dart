class ObjectDetection {
  List<Results>? results;

  ObjectDetection({this.results});

  ObjectDetection.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }
}

class Results {
  Status? status;
  String? name;
  String? md5;
  List<Entities>? entities;

  Results({this.status, this.name, this.md5, this.entities});

  Results.fromJson(Map<String, dynamic> json) {
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
    name = json['name'];
    md5 = json['md5'];
    if (json['entities'] != null) {
      entities = <Entities>[];
      json['entities'].forEach((v) {
        entities!.add(Entities.fromJson(v));
      });
    }
  }
}

class Status {
  String? code;
  String? message;

  Status({this.code, this.message});

  Status.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
  }
}

class Entities {
  String? kind;
  String? name;
  List<Objects>? objects;

  Entities({this.kind, this.name, this.objects});

  Entities.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    name = json['name'];
    if (json['objects'] != null) {
      objects = <Objects>[];
      json['objects'].forEach((v) {
        objects!.add(Objects.fromJson(v));
      });
    }
  }
}

class Objects {
  List<double>? box;
  List<EntitiesResult>? entities;

  Objects({this.box, this.entities});

  Objects.fromJson(Map<String, dynamic> json) {
    box = json['box'].cast<double>();
    if (json['entities'] != null) {
      entities = <EntitiesResult>[];
      json['entities'].forEach((v) {
        entities!.add(EntitiesResult.fromJson(v));
      });
    }
  }
}

class EntitiesResult {
  String? kind;
  String? name;
  Map<String, dynamic>? classes;

  EntitiesResult({this.kind, this.name, this.classes});

  EntitiesResult.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    name = json['name'];
    classes = json['classes'];
  }
}
