# Catalog App

Flutter-приложение-каталог на основе публичного API [fakestoreapi.com](https://fakestoreapi.com).  
Позволяет просматривать товары, искать, фильтровать по категориям и работать с локальной корзиной.
Скриншоты ниже

---

## Функционал

### Каталог

- Список товаров с:
  - картинкой,
  - названием,
  - ценой,
  - категорией.
- Поиск по названию (с debounce).
- Фильтр по категориям (включая вариант «Все»).
- Сортировка по цене:
  - без сортировки,
  - по возрастанию,
  - по убыванию.
- Pull-to-refresh для обновления списка.
- Placeholder, если картинка не загрузилась.
- Обработка ошибок (текст + кнопка «Повторить»).
- Корректное поведение при пустом результате поиска/фильтра.

### Детали товара

- Картинка товара с fallback-заглушкой.
- Название, категория, цена.
- Рейтинг и количество отзывов.
- Полное описание.
- Кнопка:
  - **Add to cart**, если товара ещё нет в корзине;
  - **Remove from cart**, если товар уже добавлен.
- Snackbar при добавлении/удалении из корзины.

### Корзина

- Локальное хранение содержимого через `HydratedBloc` (сохранение между перезапусками).
- Список добавленных товаров с количеством.
- Подсчёт общей суммы.
- Удаление товара из корзины.

---

## Стек и технологии

- **Flutter**
- **State management**: `flutter_bloc`, `hydrated_bloc`
- **DI**: `get_it`
- **Навигация**: `go_router`
- **HTTP**: `dio` с собственным интерсептором (baseUrl, таймауты, логирование)
- **Модели и генерация кода**: `freezed`, `json_serializable`
- **Хранение состояния**: `HydratedStorage` + `path_provider`

---

## Архитектура

Проект организован по feature-based подходу:

- `features/catalog`
  - `data`: remote datasource, DTO, repository.
  - `domain`: сущности, интерфейс репозитория, use case-ы.
  - `presentation`: bloc, экраны и виджеты (`CatalogPage`, `ProductCard`, `CategoryFilter`, `SortDropdown`).
- `features/cart`
  - `presentation`: `CartBloc`, состояние/события, `CartPage`.
- `features/product_details`
  - `presentation`: `ProductDetailsPage`.

Core-слой:

- `core/api`: `EndPoints`, настройка `Dio` и интерсептора.
- `core/service/injectable`: `configureDependencies()` и регистрации для `getIt`:
  - `Dio`,
  - remote data source,
  - repository,
  - use case-ы,
  - `CatalogBloc`, `CartBloc`.
- `core/theme`, `core/constants`: цвета, отступы, текстовые константы, стили, placeholder-картинка.

Блоки создаются через `getIt` и пробрасываются в дерево через `MultiBlocProvider`.

---

## API

Используется публичное Fake Store API:

- `GET https://fakestoreapi.com/products` — список товаров
- `GET https://fakestoreapi.com/products/categories` — список категорий

Данные маппятся в `ProductDto` -> `ProductEntity` через mapper.  
Рейтинг представлен как `rating` (double) и `ratingCount` (int).

<img width="1440" height="2560" alt="screenshot-2025-11-19_15 29 07 212" src="https://github.com/user-attachments/assets/9dbcca3f-4d5e-4507-9eeb-2229cd139eb3" />
<img width="1440" height="2560" alt="screenshot-2025-11-19_15 30 53 33" src="https://github.com/user-attachments/assets/6376fbca-4378-4964-bf71-e751d135ab55" />
<img width="1440" height="2560" alt="screenshot-2025-11-19_15 30 46 086" src="https://github.com/user-attachments/assets/826f0900-052a-4328-bef6-ae3ad05beb1b" />
<img width="1440" height="2560" alt="screenshot-2025-11-19_15 30 26 293" src="https://github.com/user-attachments/assets/c829788f-792f-42d4-b6a1-392b5256c39f" />
<img width="1440" height="2560" alt="screenshot-2025-11-19_15 30 42 106" src="https://github.com/user-attachments/assets/736e74e3-724e-4d84-8a21-2bcc72bb1685" />
<img width="1440" height="2560" alt="screenshot-2025-11-19_15 29 56 16" src="https://github.com/user-attachments/assets/e42dae9d-b516-4dfd-86b0-a399be256dbf" />
<img width="1440" height="2560" alt="screenshot-2025-11-19_15 29 33 165" src="https://github.com/user-attachments/assets/0be2f62e-de6e-4774-a55a-9cd74755bf2e" />
<img width="1440" height="2560" alt="screenshot-2025-11-19_15 29 16 871" src="https://github.com/user-attachments/assets/e364e48f-5a24-4c83-ad6d-ea4d7e5a866d" />





