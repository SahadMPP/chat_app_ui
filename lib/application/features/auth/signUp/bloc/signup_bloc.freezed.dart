// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String nameConm,
            String emalConm, String passConm)
        registerUser,
    required TResult Function(BuildContext context) navigatingToSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String nameConm, String emalConm,
            String passConm)?
        registerUser,
    TResult? Function(BuildContext context)? navigatingToSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String nameConm, String emalConm,
            String passConm)?
        registerUser,
    TResult Function(BuildContext context)? navigatingToSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_navigatingToSignIn value) navigatingToSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_navigatingToSignIn value)? navigatingToSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_navigatingToSignIn value)? navigatingToSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupEventCopyWith<SignupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res, SignupEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res, $Val extends SignupEvent>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

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
abstract class _$$registerUserImplCopyWith<$Res>
    implements $SignupEventCopyWith<$Res> {
  factory _$$registerUserImplCopyWith(
          _$registerUserImpl value, $Res Function(_$registerUserImpl) then) =
      __$$registerUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BuildContext context,
      String nameConm,
      String emalConm,
      String passConm});
}

/// @nodoc
class __$$registerUserImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$registerUserImpl>
    implements _$$registerUserImplCopyWith<$Res> {
  __$$registerUserImplCopyWithImpl(
      _$registerUserImpl _value, $Res Function(_$registerUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? nameConm = null,
    Object? emalConm = null,
    Object? passConm = null,
  }) {
    return _then(_$registerUserImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      nameConm: null == nameConm
          ? _value.nameConm
          : nameConm // ignore: cast_nullable_to_non_nullable
              as String,
      emalConm: null == emalConm
          ? _value.emalConm
          : emalConm // ignore: cast_nullable_to_non_nullable
              as String,
      passConm: null == passConm
          ? _value.passConm
          : passConm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$registerUserImpl implements _registerUser {
  const _$registerUserImpl(
      {required this.context,
      required this.nameConm,
      required this.emalConm,
      required this.passConm});

  @override
  final BuildContext context;
  @override
  final String nameConm;
  @override
  final String emalConm;
  @override
  final String passConm;

  @override
  String toString() {
    return 'SignupEvent.registerUser(context: $context, nameConm: $nameConm, emalConm: $emalConm, passConm: $passConm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$registerUserImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.nameConm, nameConm) ||
                other.nameConm == nameConm) &&
            (identical(other.emalConm, emalConm) ||
                other.emalConm == emalConm) &&
            (identical(other.passConm, passConm) ||
                other.passConm == passConm));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, nameConm, emalConm, passConm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$registerUserImplCopyWith<_$registerUserImpl> get copyWith =>
      __$$registerUserImplCopyWithImpl<_$registerUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String nameConm,
            String emalConm, String passConm)
        registerUser,
    required TResult Function(BuildContext context) navigatingToSignIn,
  }) {
    return registerUser(context, nameConm, emalConm, passConm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String nameConm, String emalConm,
            String passConm)?
        registerUser,
    TResult? Function(BuildContext context)? navigatingToSignIn,
  }) {
    return registerUser?.call(context, nameConm, emalConm, passConm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String nameConm, String emalConm,
            String passConm)?
        registerUser,
    TResult Function(BuildContext context)? navigatingToSignIn,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(context, nameConm, emalConm, passConm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_navigatingToSignIn value) navigatingToSignIn,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_navigatingToSignIn value)? navigatingToSignIn,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_navigatingToSignIn value)? navigatingToSignIn,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _registerUser implements SignupEvent {
  const factory _registerUser(
      {required final BuildContext context,
      required final String nameConm,
      required final String emalConm,
      required final String passConm}) = _$registerUserImpl;

  @override
  BuildContext get context;
  String get nameConm;
  String get emalConm;
  String get passConm;
  @override
  @JsonKey(ignore: true)
  _$$registerUserImplCopyWith<_$registerUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$navigatingToSignInImplCopyWith<$Res>
    implements $SignupEventCopyWith<$Res> {
  factory _$$navigatingToSignInImplCopyWith(_$navigatingToSignInImpl value,
          $Res Function(_$navigatingToSignInImpl) then) =
      __$$navigatingToSignInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$navigatingToSignInImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$navigatingToSignInImpl>
    implements _$$navigatingToSignInImplCopyWith<$Res> {
  __$$navigatingToSignInImplCopyWithImpl(_$navigatingToSignInImpl _value,
      $Res Function(_$navigatingToSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$navigatingToSignInImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$navigatingToSignInImpl implements _navigatingToSignIn {
  const _$navigatingToSignInImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SignupEvent.navigatingToSignIn(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$navigatingToSignInImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$navigatingToSignInImplCopyWith<_$navigatingToSignInImpl> get copyWith =>
      __$$navigatingToSignInImplCopyWithImpl<_$navigatingToSignInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String nameConm,
            String emalConm, String passConm)
        registerUser,
    required TResult Function(BuildContext context) navigatingToSignIn,
  }) {
    return navigatingToSignIn(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String nameConm, String emalConm,
            String passConm)?
        registerUser,
    TResult? Function(BuildContext context)? navigatingToSignIn,
  }) {
    return navigatingToSignIn?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String nameConm, String emalConm,
            String passConm)?
        registerUser,
    TResult Function(BuildContext context)? navigatingToSignIn,
    required TResult orElse(),
  }) {
    if (navigatingToSignIn != null) {
      return navigatingToSignIn(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_navigatingToSignIn value) navigatingToSignIn,
  }) {
    return navigatingToSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_navigatingToSignIn value)? navigatingToSignIn,
  }) {
    return navigatingToSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_navigatingToSignIn value)? navigatingToSignIn,
    required TResult orElse(),
  }) {
    if (navigatingToSignIn != null) {
      return navigatingToSignIn(this);
    }
    return orElse();
  }
}

abstract class _navigatingToSignIn implements SignupEvent {
  const factory _navigatingToSignIn({required final BuildContext context}) =
      _$navigatingToSignInImpl;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$navigatingToSignInImplCopyWith<_$navigatingToSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignupStateImplCopyWith<$Res> {
  factory _$$SignupStateImplCopyWith(
          _$SignupStateImpl value, $Res Function(_$SignupStateImpl) then) =
      __$$SignupStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupStateImpl>
    implements _$$SignupStateImplCopyWith<$Res> {
  __$$SignupStateImplCopyWithImpl(
      _$SignupStateImpl _value, $Res Function(_$SignupStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignupStateImpl implements _SignupState {
  const _$SignupStateImpl();

  @override
  String toString() {
    return 'SignupState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SignupState implements SignupState {
  const factory _SignupState() = _$SignupStateImpl;
}
