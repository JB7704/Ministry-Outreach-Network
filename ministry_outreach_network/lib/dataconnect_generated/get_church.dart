part of 'generated.dart';

class GetChurchVariablesBuilder {
  int id;

  final FirebaseDataConnect _dataConnect;
  GetChurchVariablesBuilder(this._dataConnect, {required  this.id,});
  Deserializer<GetChurchData> dataDeserializer = (dynamic json)  => GetChurchData.fromJson(jsonDecode(json));
  Serializer<GetChurchVariables> varsSerializer = (GetChurchVariables vars) => jsonEncode(vars.toJson());
  Future<QueryResult<GetChurchData, GetChurchVariables>> execute({QueryFetchPolicy fetchPolicy = QueryFetchPolicy.preferCache}) {
    return ref().execute(fetchPolicy: fetchPolicy);
  }

  QueryRef<GetChurchData, GetChurchVariables> ref() {
    GetChurchVariables vars= GetChurchVariables(id: id,);
    return _dataConnect.query("GetChurch", dataDeserializer, varsSerializer, vars);
  }
}

@immutable
class GetChurchChurches {
  final int id;
  final String name;
  final String address;
  final bool hunger;
  final bool literacy;
  final bool stability;
  final bool health;
  final String worshiptime;
  final bool livestream;
  final List<String> tags;
  final EnumValue<District> disctrict;
  GetChurchChurches.fromJson(dynamic json):
  
  id = nativeFromJson<int>(json['id']),
  name = nativeFromJson<String>(json['name']),
  address = nativeFromJson<String>(json['address']),
  hunger = nativeFromJson<bool>(json['hunger']),
  literacy = nativeFromJson<bool>(json['literacy']),
  stability = nativeFromJson<bool>(json['stability']),
  health = nativeFromJson<bool>(json['health']),
  worshiptime = nativeFromJson<String>(json['worshiptime']),
  livestream = nativeFromJson<bool>(json['livestream']),
  tags = (json['tags'] as List<dynamic>)
        .map((e) => nativeFromJson<String>(e))
        .toList(),
  disctrict = districtDeserializer(json['disctrict']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final GetChurchChurches otherTyped = other as GetChurchChurches;
    return id == otherTyped.id && 
    name == otherTyped.name && 
    address == otherTyped.address && 
    hunger == otherTyped.hunger && 
    literacy == otherTyped.literacy && 
    stability == otherTyped.stability && 
    health == otherTyped.health && 
    worshiptime == otherTyped.worshiptime && 
    livestream == otherTyped.livestream && 
    tags == otherTyped.tags && 
    disctrict == otherTyped.disctrict;
    
  }
  @override
  int get hashCode => Object.hashAll([id.hashCode, name.hashCode, address.hashCode, hunger.hashCode, literacy.hashCode, stability.hashCode, health.hashCode, worshiptime.hashCode, livestream.hashCode, tags.hashCode, disctrict.hashCode]);
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = nativeToJson<int>(id);
    json['name'] = nativeToJson<String>(name);
    json['address'] = nativeToJson<String>(address);
    json['hunger'] = nativeToJson<bool>(hunger);
    json['literacy'] = nativeToJson<bool>(literacy);
    json['stability'] = nativeToJson<bool>(stability);
    json['health'] = nativeToJson<bool>(health);
    json['worshiptime'] = nativeToJson<String>(worshiptime);
    json['livestream'] = nativeToJson<bool>(livestream);
    json['tags'] = tags.map((e) => nativeToJson<String>(e)).toList();
    json['disctrict'] = 
    districtSerializer(disctrict)
    ;
    return json;
  }

  GetChurchChurches({
    required this.id,
    required this.name,
    required this.address,
    required this.hunger,
    required this.literacy,
    required this.stability,
    required this.health,
    required this.worshiptime,
    required this.livestream,
    required this.tags,
    required this.disctrict,
  });
}

@immutable
class GetChurchData {
  final List<GetChurchChurches> churches;
  GetChurchData.fromJson(dynamic json):
  
  churches = (json['churches'] as List<dynamic>)
        .map((e) => GetChurchChurches.fromJson(e))
        .toList();
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final GetChurchData otherTyped = other as GetChurchData;
    return churches == otherTyped.churches;
    
  }
  @override
  int get hashCode => churches.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['churches'] = churches.map((e) => e.toJson()).toList();
    return json;
  }

  GetChurchData({
    required this.churches,
  });
}

@immutable
class GetChurchVariables {
  final int id;
  @Deprecated('fromJson is deprecated for Variable classes as they are no longer required for deserialization.')
  GetChurchVariables.fromJson(Map<String, dynamic> json):
  
  id = nativeFromJson<int>(json['id']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final GetChurchVariables otherTyped = other as GetChurchVariables;
    return id == otherTyped.id;
    
  }
  @override
  int get hashCode => id.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = nativeToJson<int>(id);
    return json;
  }

  GetChurchVariables({
    required this.id,
  });
}

