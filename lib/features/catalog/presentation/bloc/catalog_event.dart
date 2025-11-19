part of 'catalog_bloc.dart';

enum CatalogSort {
  none,
  priceAsc,
  priceDesc,
}

@freezed
abstract class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.started() = CatalogEventStarted;
  const factory CatalogEvent.refresh() = CatalogEventRefresh;
  const factory CatalogEvent.searchChanged({
    required String query,
  }) = CatalogEventSearchChanged;
  const factory CatalogEvent.categoryChanged({
    String? category,
  }) = CatalogEventCategoryChanged;
  const factory CatalogEvent.sortChanged({
    required CatalogSort sort,
  }) = CatalogEventSortChanged;
}
