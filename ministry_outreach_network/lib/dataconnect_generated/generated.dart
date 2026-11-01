library dataconnect_generated;
import 'package:firebase_data_connect/firebase_data_connect.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';

part 'get_churches.dart';

part 'get_church.dart';

part 'get_churches_with_tags.dart';



  enum District {
    
      Central,
    
      NorthEast,
    
      NorthWest,
    
      South,
    
  }
  
  String districtSerializer(EnumValue<District> e) {
    return e.stringValue;
  }
  EnumValue<District> districtDeserializer(dynamic data) {
    switch (data) {
      
      case 'Central':
        return const Known(District.Central);
      
      case 'NorthEast':
        return const Known(District.NorthEast);
      
      case 'NorthWest':
        return const Known(District.NorthWest);
      
      case 'South':
        return const Known(District.South);
      
      default:
        return Unknown(data);
    }
  }
  



String enumSerializer(Enum e) {
  return e.name;
}



/// A sealed class representing either a known enum value or an unknown string value.
@immutable
sealed class EnumValue<T extends Enum> {
  const EnumValue();

  

  /// The string representation of the value.
  String get stringValue;
  @override
  String toString() {
    return "EnumValue($stringValue)";
  }
}

/// Represents a known, valid enum value.
class Known<T extends Enum> extends EnumValue<T> {
  /// The actual enum value.
  final T value;

  const Known(this.value);

  @override
  String get stringValue => value.name;

  @override
  String toString() {
    return "Known($stringValue)";
  }
}
/// Represents an unknown or unrecognized enum value.
class Unknown extends EnumValue<Never> {
  /// The raw string value that couldn't be mapped to a known enum.
  @override
  final String stringValue;

  const Unknown(this.stringValue);
  @override
  String toString() {
    return "Unknown($stringValue)";
  }
}

class MinistryConnector {
  
  
  GetChurchesVariablesBuilder getChurches () {
    return GetChurchesVariablesBuilder(dataConnect, );
  }
  
  
  GetChurchVariablesBuilder getChurch ({required int id, }) {
    return GetChurchVariablesBuilder(dataConnect, id: id,);
  }
  
  
  GetChurchesWithTagsVariablesBuilder getChurchesWithTags ({required List<String> tags, }) {
    return GetChurchesWithTagsVariablesBuilder(dataConnect, tags: tags,);
  }
  

  static ConnectorConfig connectorConfig = ConnectorConfig(
    'us-central1',
    'ministry',
    'ministryoutreachnetwork',
  );

  MinistryConnector({required this.dataConnect});
  static MinistryConnector get instance {
    
    CacheSettings cacheSettings = CacheSettings(
      maxAge: Duration(milliseconds:0),
      storage: CacheStorage.persistent,
    );
    
    return MinistryConnector(
        dataConnect: FirebaseDataConnect.instanceFor(
            connectorConfig: connectorConfig,
            
            cacheSettings: cacheSettings,
            
            sdkType: CallerSDKType.generated));
  }

  FirebaseDataConnect dataConnect;
}
