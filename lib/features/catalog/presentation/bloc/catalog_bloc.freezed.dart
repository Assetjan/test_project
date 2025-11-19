// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatalogEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogEvent()';
}


}

/// @nodoc
class $CatalogEventCopyWith<$Res>  {
$CatalogEventCopyWith(CatalogEvent _, $Res Function(CatalogEvent) __);
}


/// Adds pattern-matching-related methods to [CatalogEvent].
extension CatalogEventPatterns on CatalogEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CatalogEventStarted value)?  started,TResult Function( CatalogEventRefresh value)?  refresh,TResult Function( CatalogEventSearchChanged value)?  searchChanged,TResult Function( CatalogEventCategoryChanged value)?  categoryChanged,TResult Function( CatalogEventSortChanged value)?  sortChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CatalogEventStarted() when started != null:
return started(_that);case CatalogEventRefresh() when refresh != null:
return refresh(_that);case CatalogEventSearchChanged() when searchChanged != null:
return searchChanged(_that);case CatalogEventCategoryChanged() when categoryChanged != null:
return categoryChanged(_that);case CatalogEventSortChanged() when sortChanged != null:
return sortChanged(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CatalogEventStarted value)  started,required TResult Function( CatalogEventRefresh value)  refresh,required TResult Function( CatalogEventSearchChanged value)  searchChanged,required TResult Function( CatalogEventCategoryChanged value)  categoryChanged,required TResult Function( CatalogEventSortChanged value)  sortChanged,}){
final _that = this;
switch (_that) {
case CatalogEventStarted():
return started(_that);case CatalogEventRefresh():
return refresh(_that);case CatalogEventSearchChanged():
return searchChanged(_that);case CatalogEventCategoryChanged():
return categoryChanged(_that);case CatalogEventSortChanged():
return sortChanged(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CatalogEventStarted value)?  started,TResult? Function( CatalogEventRefresh value)?  refresh,TResult? Function( CatalogEventSearchChanged value)?  searchChanged,TResult? Function( CatalogEventCategoryChanged value)?  categoryChanged,TResult? Function( CatalogEventSortChanged value)?  sortChanged,}){
final _that = this;
switch (_that) {
case CatalogEventStarted() when started != null:
return started(_that);case CatalogEventRefresh() when refresh != null:
return refresh(_that);case CatalogEventSearchChanged() when searchChanged != null:
return searchChanged(_that);case CatalogEventCategoryChanged() when categoryChanged != null:
return categoryChanged(_that);case CatalogEventSortChanged() when sortChanged != null:
return sortChanged(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  refresh,TResult Function( String query)?  searchChanged,TResult Function( String? category)?  categoryChanged,TResult Function( CatalogSort sort)?  sortChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CatalogEventStarted() when started != null:
return started();case CatalogEventRefresh() when refresh != null:
return refresh();case CatalogEventSearchChanged() when searchChanged != null:
return searchChanged(_that.query);case CatalogEventCategoryChanged() when categoryChanged != null:
return categoryChanged(_that.category);case CatalogEventSortChanged() when sortChanged != null:
return sortChanged(_that.sort);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  refresh,required TResult Function( String query)  searchChanged,required TResult Function( String? category)  categoryChanged,required TResult Function( CatalogSort sort)  sortChanged,}) {final _that = this;
switch (_that) {
case CatalogEventStarted():
return started();case CatalogEventRefresh():
return refresh();case CatalogEventSearchChanged():
return searchChanged(_that.query);case CatalogEventCategoryChanged():
return categoryChanged(_that.category);case CatalogEventSortChanged():
return sortChanged(_that.sort);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  refresh,TResult? Function( String query)?  searchChanged,TResult? Function( String? category)?  categoryChanged,TResult? Function( CatalogSort sort)?  sortChanged,}) {final _that = this;
switch (_that) {
case CatalogEventStarted() when started != null:
return started();case CatalogEventRefresh() when refresh != null:
return refresh();case CatalogEventSearchChanged() when searchChanged != null:
return searchChanged(_that.query);case CatalogEventCategoryChanged() when categoryChanged != null:
return categoryChanged(_that.category);case CatalogEventSortChanged() when sortChanged != null:
return sortChanged(_that.sort);case _:
  return null;

}
}

}

/// @nodoc


class CatalogEventStarted implements CatalogEvent {
  const CatalogEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogEvent.started()';
}


}




/// @nodoc


class CatalogEventRefresh implements CatalogEvent {
  const CatalogEventRefresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogEventRefresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogEvent.refresh()';
}


}




/// @nodoc


class CatalogEventSearchChanged implements CatalogEvent {
  const CatalogEventSearchChanged({required this.query});
  

 final  String query;

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogEventSearchChangedCopyWith<CatalogEventSearchChanged> get copyWith => _$CatalogEventSearchChangedCopyWithImpl<CatalogEventSearchChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogEventSearchChanged&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'CatalogEvent.searchChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class $CatalogEventSearchChangedCopyWith<$Res> implements $CatalogEventCopyWith<$Res> {
  factory $CatalogEventSearchChangedCopyWith(CatalogEventSearchChanged value, $Res Function(CatalogEventSearchChanged) _then) = _$CatalogEventSearchChangedCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$CatalogEventSearchChangedCopyWithImpl<$Res>
    implements $CatalogEventSearchChangedCopyWith<$Res> {
  _$CatalogEventSearchChangedCopyWithImpl(this._self, this._then);

  final CatalogEventSearchChanged _self;
  final $Res Function(CatalogEventSearchChanged) _then;

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(CatalogEventSearchChanged(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CatalogEventCategoryChanged implements CatalogEvent {
  const CatalogEventCategoryChanged({this.category});
  

 final  String? category;

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogEventCategoryChangedCopyWith<CatalogEventCategoryChanged> get copyWith => _$CatalogEventCategoryChangedCopyWithImpl<CatalogEventCategoryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogEventCategoryChanged&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'CatalogEvent.categoryChanged(category: $category)';
}


}

/// @nodoc
abstract mixin class $CatalogEventCategoryChangedCopyWith<$Res> implements $CatalogEventCopyWith<$Res> {
  factory $CatalogEventCategoryChangedCopyWith(CatalogEventCategoryChanged value, $Res Function(CatalogEventCategoryChanged) _then) = _$CatalogEventCategoryChangedCopyWithImpl;
@useResult
$Res call({
 String? category
});




}
/// @nodoc
class _$CatalogEventCategoryChangedCopyWithImpl<$Res>
    implements $CatalogEventCategoryChangedCopyWith<$Res> {
  _$CatalogEventCategoryChangedCopyWithImpl(this._self, this._then);

  final CatalogEventCategoryChanged _self;
  final $Res Function(CatalogEventCategoryChanged) _then;

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = freezed,}) {
  return _then(CatalogEventCategoryChanged(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CatalogEventSortChanged implements CatalogEvent {
  const CatalogEventSortChanged({required this.sort});
  

 final  CatalogSort sort;

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogEventSortChangedCopyWith<CatalogEventSortChanged> get copyWith => _$CatalogEventSortChangedCopyWithImpl<CatalogEventSortChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogEventSortChanged&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,sort);

@override
String toString() {
  return 'CatalogEvent.sortChanged(sort: $sort)';
}


}

/// @nodoc
abstract mixin class $CatalogEventSortChangedCopyWith<$Res> implements $CatalogEventCopyWith<$Res> {
  factory $CatalogEventSortChangedCopyWith(CatalogEventSortChanged value, $Res Function(CatalogEventSortChanged) _then) = _$CatalogEventSortChangedCopyWithImpl;
@useResult
$Res call({
 CatalogSort sort
});




}
/// @nodoc
class _$CatalogEventSortChangedCopyWithImpl<$Res>
    implements $CatalogEventSortChangedCopyWith<$Res> {
  _$CatalogEventSortChangedCopyWithImpl(this._self, this._then);

  final CatalogEventSortChanged _self;
  final $Res Function(CatalogEventSortChanged) _then;

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sort = null,}) {
  return _then(CatalogEventSortChanged(
sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as CatalogSort,
  ));
}


}

/// @nodoc
mixin _$CatalogState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogState()';
}


}

/// @nodoc
class $CatalogStateCopyWith<$Res>  {
$CatalogStateCopyWith(CatalogState _, $Res Function(CatalogState) __);
}


/// Adds pattern-matching-related methods to [CatalogState].
extension CatalogStatePatterns on CatalogState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CatalogStateInitial value)?  initial,TResult Function( CatalogStateLoading value)?  loading,TResult Function( CatalogStateLoaded value)?  loaded,TResult Function( CatalogStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CatalogStateInitial() when initial != null:
return initial(_that);case CatalogStateLoading() when loading != null:
return loading(_that);case CatalogStateLoaded() when loaded != null:
return loaded(_that);case CatalogStateError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CatalogStateInitial value)  initial,required TResult Function( CatalogStateLoading value)  loading,required TResult Function( CatalogStateLoaded value)  loaded,required TResult Function( CatalogStateError value)  error,}){
final _that = this;
switch (_that) {
case CatalogStateInitial():
return initial(_that);case CatalogStateLoading():
return loading(_that);case CatalogStateLoaded():
return loaded(_that);case CatalogStateError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CatalogStateInitial value)?  initial,TResult? Function( CatalogStateLoading value)?  loading,TResult? Function( CatalogStateLoaded value)?  loaded,TResult? Function( CatalogStateError value)?  error,}){
final _that = this;
switch (_that) {
case CatalogStateInitial() when initial != null:
return initial(_that);case CatalogStateLoading() when loading != null:
return loading(_that);case CatalogStateLoaded() when loaded != null:
return loaded(_that);case CatalogStateError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( CatalogViewModel viewModel)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CatalogStateInitial() when initial != null:
return initial();case CatalogStateLoading() when loading != null:
return loading();case CatalogStateLoaded() when loaded != null:
return loaded(_that.viewModel);case CatalogStateError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( CatalogViewModel viewModel)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case CatalogStateInitial():
return initial();case CatalogStateLoading():
return loading();case CatalogStateLoaded():
return loaded(_that.viewModel);case CatalogStateError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( CatalogViewModel viewModel)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case CatalogStateInitial() when initial != null:
return initial();case CatalogStateLoading() when loading != null:
return loading();case CatalogStateLoaded() when loaded != null:
return loaded(_that.viewModel);case CatalogStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class CatalogStateInitial implements CatalogState {
  const CatalogStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogState.initial()';
}


}




/// @nodoc


class CatalogStateLoading implements CatalogState {
  const CatalogStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogState.loading()';
}


}




/// @nodoc


class CatalogStateLoaded implements CatalogState {
  const CatalogStateLoaded({required this.viewModel});
  

 final  CatalogViewModel viewModel;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogStateLoadedCopyWith<CatalogStateLoaded> get copyWith => _$CatalogStateLoadedCopyWithImpl<CatalogStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogStateLoaded&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'CatalogState.loaded(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class $CatalogStateLoadedCopyWith<$Res> implements $CatalogStateCopyWith<$Res> {
  factory $CatalogStateLoadedCopyWith(CatalogStateLoaded value, $Res Function(CatalogStateLoaded) _then) = _$CatalogStateLoadedCopyWithImpl;
@useResult
$Res call({
 CatalogViewModel viewModel
});


$CatalogViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class _$CatalogStateLoadedCopyWithImpl<$Res>
    implements $CatalogStateLoadedCopyWith<$Res> {
  _$CatalogStateLoadedCopyWithImpl(this._self, this._then);

  final CatalogStateLoaded _self;
  final $Res Function(CatalogStateLoaded) _then;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(CatalogStateLoaded(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as CatalogViewModel,
  ));
}

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogViewModelCopyWith<$Res> get viewModel {
  
  return $CatalogViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class CatalogStateError implements CatalogState {
  const CatalogStateError(this.message);
  

 final  String message;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogStateErrorCopyWith<CatalogStateError> get copyWith => _$CatalogStateErrorCopyWithImpl<CatalogStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CatalogState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CatalogStateErrorCopyWith<$Res> implements $CatalogStateCopyWith<$Res> {
  factory $CatalogStateErrorCopyWith(CatalogStateError value, $Res Function(CatalogStateError) _then) = _$CatalogStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CatalogStateErrorCopyWithImpl<$Res>
    implements $CatalogStateErrorCopyWith<$Res> {
  _$CatalogStateErrorCopyWithImpl(this._self, this._then);

  final CatalogStateError _self;
  final $Res Function(CatalogStateError) _then;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CatalogStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CatalogViewModel {

 List<ProductEntity> get products; List<String> get categories; String? get selectedCategory; String get searchQuery; CatalogSort get sort; bool get isRefreshing;
/// Create a copy of CatalogViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogViewModelCopyWith<CatalogViewModel> get copyWith => _$CatalogViewModelCopyWithImpl<CatalogViewModel>(this as CatalogViewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogViewModel&&const DeepCollectionEquality().equals(other.products, products)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),const DeepCollectionEquality().hash(categories),selectedCategory,searchQuery,sort,isRefreshing);

@override
String toString() {
  return 'CatalogViewModel(products: $products, categories: $categories, selectedCategory: $selectedCategory, searchQuery: $searchQuery, sort: $sort, isRefreshing: $isRefreshing)';
}


}

/// @nodoc
abstract mixin class $CatalogViewModelCopyWith<$Res>  {
  factory $CatalogViewModelCopyWith(CatalogViewModel value, $Res Function(CatalogViewModel) _then) = _$CatalogViewModelCopyWithImpl;
@useResult
$Res call({
 List<ProductEntity> products, List<String> categories, String? selectedCategory, String searchQuery, CatalogSort sort, bool isRefreshing
});




}
/// @nodoc
class _$CatalogViewModelCopyWithImpl<$Res>
    implements $CatalogViewModelCopyWith<$Res> {
  _$CatalogViewModelCopyWithImpl(this._self, this._then);

  final CatalogViewModel _self;
  final $Res Function(CatalogViewModel) _then;

/// Create a copy of CatalogViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? categories = null,Object? selectedCategory = freezed,Object? searchQuery = null,Object? sort = null,Object? isRefreshing = null,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as String?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as CatalogSort,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogViewModel].
extension CatalogViewModelPatterns on CatalogViewModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogViewModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogViewModel value)  $default,){
final _that = this;
switch (_that) {
case _CatalogViewModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogViewModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductEntity> products,  List<String> categories,  String? selectedCategory,  String searchQuery,  CatalogSort sort,  bool isRefreshing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogViewModel() when $default != null:
return $default(_that.products,_that.categories,_that.selectedCategory,_that.searchQuery,_that.sort,_that.isRefreshing);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductEntity> products,  List<String> categories,  String? selectedCategory,  String searchQuery,  CatalogSort sort,  bool isRefreshing)  $default,) {final _that = this;
switch (_that) {
case _CatalogViewModel():
return $default(_that.products,_that.categories,_that.selectedCategory,_that.searchQuery,_that.sort,_that.isRefreshing);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductEntity> products,  List<String> categories,  String? selectedCategory,  String searchQuery,  CatalogSort sort,  bool isRefreshing)?  $default,) {final _that = this;
switch (_that) {
case _CatalogViewModel() when $default != null:
return $default(_that.products,_that.categories,_that.selectedCategory,_that.searchQuery,_that.sort,_that.isRefreshing);case _:
  return null;

}
}

}

/// @nodoc


class _CatalogViewModel extends CatalogViewModel {
  const _CatalogViewModel({final  List<ProductEntity> products = const <ProductEntity>[], final  List<String> categories = const <String>[], this.selectedCategory, this.searchQuery = '', this.sort = CatalogSort.none, this.isRefreshing = false}): _products = products,_categories = categories,super._();
  

 final  List<ProductEntity> _products;
@override@JsonKey() List<ProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<String> _categories;
@override@JsonKey() List<String> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  String? selectedCategory;
@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  CatalogSort sort;
@override@JsonKey() final  bool isRefreshing;

/// Create a copy of CatalogViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogViewModelCopyWith<_CatalogViewModel> get copyWith => __$CatalogViewModelCopyWithImpl<_CatalogViewModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogViewModel&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_categories),selectedCategory,searchQuery,sort,isRefreshing);

@override
String toString() {
  return 'CatalogViewModel(products: $products, categories: $categories, selectedCategory: $selectedCategory, searchQuery: $searchQuery, sort: $sort, isRefreshing: $isRefreshing)';
}


}

/// @nodoc
abstract mixin class _$CatalogViewModelCopyWith<$Res> implements $CatalogViewModelCopyWith<$Res> {
  factory _$CatalogViewModelCopyWith(_CatalogViewModel value, $Res Function(_CatalogViewModel) _then) = __$CatalogViewModelCopyWithImpl;
@override @useResult
$Res call({
 List<ProductEntity> products, List<String> categories, String? selectedCategory, String searchQuery, CatalogSort sort, bool isRefreshing
});




}
/// @nodoc
class __$CatalogViewModelCopyWithImpl<$Res>
    implements _$CatalogViewModelCopyWith<$Res> {
  __$CatalogViewModelCopyWithImpl(this._self, this._then);

  final _CatalogViewModel _self;
  final $Res Function(_CatalogViewModel) _then;

/// Create a copy of CatalogViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? categories = null,Object? selectedCategory = freezed,Object? searchQuery = null,Object? sort = null,Object? isRefreshing = null,}) {
  return _then(_CatalogViewModel(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as String?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as CatalogSort,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
