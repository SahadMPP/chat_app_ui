// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SigninEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String email, String password)
        homePageNavigation,
    required TResult Function(BuildContext context) signUpPageNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String email, String password)?
        homePageNavigation,
    TResult? Function(BuildContext context)? signUpPageNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String email, String password)?
        homePageNavigation,
    TResult Function(BuildContext context)? signUpPageNavigation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_homePageNavigation value) homePageNavigation,
    required TResult Function(_signUpPageNavigation value) signUpPageNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_homePageNavigation value)? homePageNavigation,
    TResult? Function(_signUpPageNavigation value)? signUpPageNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_homePageNavigation value)? homePageNavigation,
    TResult Function(_signUpPageNavigation value)? signUpPageNavigation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninEventCopyWith<SigninEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninEventCopyWith<$Res> {
  factory $SigninEventCopyWith(
          SigninEvent value, $Res Function(SigninEvent) then) =
      _$SigninEventCopyWithImpl<$Res, SigninEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$SigninEventCopyWithImpl<$Res, $Val extends SigninEvent>
    implements $SigninEventCopyWith<$Res> {
  _$SigninEventCopyWithImpl(this._value, this._then);

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
abstract class _$$homePageNavigationImplCopyWith<$Res>
    implements $SigninEventCopyWith<$Res> {
  factory _$$homePageNavigationImplCopyWith(_$homePageNavigationImpl value,
          $Res Function(_$homePageNavigationImpl) then) =
      __$$homePageNavigationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String email, String password});
}

/// @nodoc
class __$$homePageNavigationImplCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$homePageNavigationImpl>
    implements _$$homePageNavigationImplCopyWith<$Res> {
  __$$homePageNavigationImplCopyWithImpl(_$homePageNavigationImpl _value,
      $Res Function(_$homePageNavigationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$homePageNavigationImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$homePageNavigationImpl implements _homePageNavigation {
  const _$homePageNavigationImpl(
      {required this.context, required this.email, required this.password});

  @override
  final BuildContext context;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SigninEvent.homePageNavigation(context: $context, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$homePageNavigationImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$homePageNavigationImplCopyWith<_$homePageNavigationImpl> get copyWith =>
      __$$homePageNavigationImplCopyWithImpl<_$homePageNavigationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String email, String password)
        homePageNavigation,
    required TResult Function(BuildContext context) signUpPageNavigation,
  }) {
    return homePageNavigation(context, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String email, String password)?
        homePageNavigation,
    TResult? Function(BuildContext context)? signUpPageNavigation,
  }) {
    return homePageNavigation?.call(context, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String email, String password)?
        homePageNavigation,
    TResult Function(BuildContext context)? signUpPageNavigation,
    required TResult orElse(),
  }) {
    if (homePageNavigation != null) {
      return homePageNavigation(context, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_homePageNavigation value) homePageNavigation,
    required TResult Function(_signUpPageNavigation value) signUpPageNavigation,
  }) {
    return homePageNavigation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_homePageNavigation value)? homePageNavigation,
    TResult? Function(_signUpPageNavigation value)? signUpPageNavigation,
  }) {
    return homePageNavigation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_homePageNavigation value)? homePageNavigation,
    TResult Function(_signUpPageNavigation value)? signUpPageNavigation,
    required TResult orElse(),
  }) {
    if (homePageNavigation != null) {
      return homePageNavigation(this);
    }
    return orElse();
  }
}

abstract class _homePageNavigation implements SigninEvent {
  const factory _homePageNavigation(
      {required final BuildContext context,
      required final String email,
      required final String password}) = _$homePageNavigationImpl;

  @override
  BuildContext get context;
  String get email;
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$homePageNavigationImplCopyWith<_$homePageNavigationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$signUpPageNavigationImplCopyWith<$Res>
    implements $SigninEventCopyWith<$Res> {
  factory _$$signUpPageNavigationImplCopyWith(_$signUpPageNavigationImpl value,
          $Res Function(_$signUpPageNavigationImpl) then) =
      __$$signUpPageNavigationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$signUpPageNavigationImplCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$signUpPageNavigationImpl>
    implements _$$signUpPageNavigationImplCopyWith<$Res> {
  __$$signUpPageNavigationImplCopyWithImpl(_$signUpPageNavigationImpl _value,
      $Res Function(_$signUpPageNavigationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$signUpPageNavigationImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$signUpPageNavigationImpl implements _signUpPageNavigation {
  const _$signUpPageNavigationImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SigninEvent.signUpPageNavigation(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$signUpPageNavigationImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$signUpPageNavigationImplCopyWith<_$signUpPageNavigationImpl>
      get copyWith =>
          __$$signUpPageNavigationImplCopyWithImpl<_$signUpPageNavigationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String email, String password)
        homePageNavigation,
    required TResult Function(BuildContext context) signUpPageNavigation,
  }) {
    return signUpPageNavigation(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String email, String password)?
        homePageNavigation,
    TResult? Function(BuildContext context)? signUpPageNavigation,
  }) {
    return signUpPageNavigation?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String email, String password)?
        homePageNavigation,
    TResult Function(BuildContext context)? signUpPageNavigation,
    required TResult orElse(),
  }) {
    if (signUpPageNavigation != null) {
      return signUpPageNavigation(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_homePageNavigation value) homePageNavigation,
    required TResult Function(_signUpPageNavigation value) signUpPageNavigation,
  }) {
    return signUpPageNavigation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_homePageNavigation value)? homePageNavigation,
    TResult? Function(_signUpPageNavigation value)? signUpPageNavigation,
  }) {
    return signUpPageNavigation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_homePageNavigation value)? homePageNavigation,
    TResult Function(_signUpPageNavigation value)? signUpPageNavigation,
    required TResult orElse(),
  }) {
    if (signUpPageNavigation != null) {
      return signUpPageNavigation(this);
    }
    return orElse();
  }
}

abstract class _signUpPageNavigation implements SigninEvent {
  const factory _signUpPageNavigation({required final BuildContext context}) =
      _$signUpPageNavigationImpl;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$signUpPageNavigationImplCopyWith<_$signUpPageNavigationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SigninState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res, SigninState>;
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res, $Val extends SigninState>
    implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SigninState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SigninState {
  const factory _Initial() = _$InitialImpl;
}
