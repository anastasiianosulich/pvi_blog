Якщо при запускові сервера буде помилка в рядку 'require trix', то варто запустити команду rails action_text:install.
Оскільки при завантаженні коду база даних буде в цьому випадку порожньою, то після реєстрації одного користувача на сайті для перетворення його в адміна в терміналі варто ввести:
u = User.find 1
u.admin = true
u.save 
щоби перевірити роботу в режимі адміна.
Лише адміністратор може створювати і змінювати категорії, а також створювати, змінювати і видаляти пости. Перед створенням постів після входу адміна треба спочатку перейти за шляхом "http://localhost:3000/admin/categories" для того, щоб спочатку створити категорії (інакше пост без категорії не буде створений). Пагінація створена у розрахунку 4 пости/сторінку. Теги потрібно вказувати під постом через кому і пробіл. Звичайні користувачі мають змогу лише переглядати пости блогу.

Реалізовано:
пагінація (4 пости/сторінку);
пошук за тегами;
пошук за категоріями; 
коменти disqus; 
завантаження зображення; 
автентифікація різними юзерами; 
авторизація; 
режим адміна. 
