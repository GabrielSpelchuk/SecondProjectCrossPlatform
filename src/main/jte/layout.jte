@import gg.jte.Content

@param Content content

<html lang="uk">
<head>
    <meta charset="UTF-8">
    <title>Мій сайт</title>
</head>
<body>

<header>
    <h1>Заголовок сайту</h1>
</header>

<main>
    @content
</main>

@template.partials.footer(creator = "Gabriel Spelchuk")

</body>
</html>
