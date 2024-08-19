// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_user_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NetworkUserSetting _$NetworkUserSettingFromJson(Map<String, dynamic> json) {
  return _NetworkUserSetting.fromJson(json);
}

/// @nodoc
mixin _$NetworkUserSetting {
  String get id => throw _privateConstructorUsedError;

  /// Serializes this NetworkUserSetting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NetworkUserSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NetworkUserSettingCopyWith<NetworkUserSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkUserSettingCopyWith<$Res> {
  factory $NetworkUserSettingCopyWith(
          NetworkUserSetting value, $Res Function(NetworkUserSetting) then) =
      _$NetworkUserSettingCopyWithImpl<$Res, NetworkUserSetting>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$NetworkUserSettingCopyWithImpl<$Res, $Val extends NetworkUserSetting>
    implements $NetworkUserSettingCopyWith<$Res> {
  _$NetworkUserSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkUserSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkUserSettingImplCopyWith<$Res>
    implements $NetworkUserSettingCopyWith<$Res> {
  factory _$$NetworkUserSettingImplCopyWith(_$NetworkUserSettingImpl value,
          $Res Function(_$NetworkUserSettingImpl) then) =
      __$$NetworkUserSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$NetworkUserSettingImplCopyWithImpl<$Res>
    extends _$NetworkUserSettingCopyWithImpl<$Res, _$NetworkUserSettingImpl>
    implements _$$NetworkUserSettingImplCopyWith<$Res> {
  __$$NetworkUserSettingImplCopyWithImpl(_$NetworkUserSettingImpl _value,
      $Res Function(_$NetworkUserSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkUserSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$NetworkUserSettingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkUserSettingImpl implements _NetworkUserSetting {
  const _$NetworkUserSettingImpl({required this.id});

  factory _$NetworkUserSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkUserSettingImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'NetworkUserSetting(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkUserSettingImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of NetworkUserSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkUserSettingImplCopyWith<_$NetworkUserSettingImpl> get copyWith =>
      __$$NetworkUserSettingImplCopyWithImpl<_$NetworkUserSettingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkUserSettingImplToJson(
      this,
    );
  }
}

abstract class _NetworkUserSetting implements NetworkUserSetting {
  const factory _NetworkUserSetting({required final String id}) =
      _$NetworkUserSettingImpl;

  factory _NetworkUserSetting.fromJson(Map<String, dynamic> json) =
      _$NetworkUserSettingImpl.fromJson;

  @override
  String get id;

  /// Create a copy of NetworkUserSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkUserSettingImplCopyWith<_$NetworkUserSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
