@import java.util.List
@import gg.jte.Content
@import static gg.jte.TemplateEngine.*

@param String name
@param boolean show
@param List<String> items
@param List<Integer> numbers

<html lang="uk">
<head>
    <title>Головна</title>
</head>
<body>

<!-- Відображення данних -->
<h1>Привіт, ${name}</h1>

<!-- if оператор -->
@if(show)
    <p>Цей текст показується тому що змінна <b>show</b> = true></p>
@else
    <p>Цей текст не буде показуватись якщо змінна <b>show</b> = true></p>
@endif

<!-- Цикли -->
<h2>Список фруктів</h2>

@for(String fruit : items)
    <li>${fruit}</li>
@endfor

<!-- Коментарії -->
<%-- This comment will not be present in the rendered output --%>

<!-- Varargs -->
@template.list("Red", "Green", "Blue")

<!-- Змінні -->
!{var count = numbers.size();}
<p>Кількість чисел: ${count}</p>


<!-- Виклик шаблонів, іменовані параметри та значення за замовчуванням -->
@template.partials.footer(creator = "Gabriel Spelchuk")
</body>
</html>
