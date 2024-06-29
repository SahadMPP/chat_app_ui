// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) pageDirection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? pageDirection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? pageDirection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageDirection value) pageDirection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageDirection value)? pageDirection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageDirection value)? pageDirection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashEventCopyWith<SplashEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res, SplashEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageDirectionImplCopyWith<$Res>
    implements $SplashEventCopyWith<$Res> {
  factory _$$PageDirectionImplCopyWith(
          _$PageDirectionImpl value, $Res Function(_$PageDirectionImpl) then) =
      __$$PageDirectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$PageDirectionImplCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$PageDirectionImpl>
    implements _$$PageDirectionImplCopyWith<$Res> {
  __$$PageDirectionImplCopyWithImpl(
      _$PageDirectionImpl _value, $Res Function(_$PageDirectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$PageDirectionImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$PageDirectionImpl implements _PageDirection {
  const _$PageDirectionImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SplashEvent.pageDirection(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageDirectionImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageDirectionImplCopyWith<_$PageDirectionImpl> get copyWith =>
      __$$PageDirectionImplCopyWithImpl<_$PageDirectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) pageDirection,
  }) {
    return pageDirection(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? pageDirection,
  }) {
    return pageDirection?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? pageDirection,
    required TResult orElse(),
  }) {
    if (pageDirection != null) {
      return pageDirection(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageDirection value) pageDirection,
  }) {
    return pageDirection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageDirection value)? pageDirection,
  }) {
    return pageDirection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageDirection value)? pageDirection,
    required TResult orElse(),
  }) {
    if (pageDirection != null) {
      return pageDirection(this);
    }
    return orElse();
  }
}

abstract class _PageDirection implements SplashEvent {
  const factory _PageDirection({required final BuildContext context}) =
      _$PageDirectionImpl;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$PageDirectionImplCopyWith<_$PageDirectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SplashState {}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SplashStateImplCopyWith<$Res> {
  factory _$$SplashStateImplCopyWith(
          _$SplashStateImpl value, $Res Function(_$SplashStateImpl) then) =
      __$$SplashStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashStateImpl>
    implements _$$SplashStateImplCopyWith<$Res> {
  __$$SplashStateImplCopyWithImpl(
      _$SplashStateImpl _value, $Res Function(_$SplashStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashStateImpl implements _SplashState {
  const _$SplashStateImpl();

  @override
  String toString() {
    return 'SplashState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SplashState implements SplashState {
  const factory _SplashState() = _$SplashStateImpl;
}
