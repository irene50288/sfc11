# language: ru
Функционал: Жанры
  Чтобы предоставить возможность каталогизации фильмов
  Как администратор сайта
  Я должен иметь возможность редактировать список жанров

  Предыстория:
    Допустим на сайте зарегистрированы:
      | user    | email              | password | roles            |
      | everzet | ever.zet@gmail.com | qwerty   | ROLE_SUPER_ADMIN |
      | pilot   | pilot@gmail.com    | god      | ROLE_USER        |
    И на сайт добавлены жанры:
      | name      |
      | adventure |
      | comedy    |
    И я вхожу как пользователь "everzet" с паролем "qwerty"

  Сценарий: Список жанров
    Допустим я на странице "/"
    Когда я кликаю по ссылке "genres"
    То я должен видеть "Genres"
    И я должен видеть "adventure"
    И я должен видеть "comedy"

  Сценарий: Добавление нового жанра
    Допустим я на странице "/genres"
    Когда я кликаю по ссылке "Create a new entry"
    И ввожу "horror" в поле "Genre name (en)"
    И нажимаю "Create"
    То я должен видеть "adventure"
    И я должен видеть "comedy"
    И должен видеть "horror"

  Сценарий: Редактирование сущесвтуюшего жанра
    Допустим я на странице "/genres"
    Когда я кликаю по ссылке "edit genre"
    И ввожу "yehooo" в поле "Genre name (en)"
    И нажимаю "Update"
    То я не должен видеть "adventure"
    Но должен видеть "yehooo"

  Сценарий: Интернационализация
    Допустим я на странице "/genres"
    Когда я кликаю по ссылке "Create a new entry"
    И ввожу "horror" в поле "Genre name (en)"
    И ввожу "ужасы" в поле "Genre name (ru)"
    И нажимаю "Create"
    То я должен видеть "Genres"
    И должен видеть "ужасы"

