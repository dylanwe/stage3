<?php 
    $host = 'localhost';
    $dbname = 'stage';
    $username = 'root';
    $password = '';
    $db = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8","$username","$password");

    $exe = $db->prepare("SELECT * FROM `teksten`");
    $exe->execute();
    $teksten = $exe->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/themes/prism-coy.min.css">
    <link rel="stylesheet" href="http://parse.u524024.gluweb.nl/css/prism_github.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/4.0.0/github-markdown.min.css">
    <script src="./ckeditor/ckeditor.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>CMS test</title>
    <style>
        .markdown-body {
            max-width: 1012px;
            margin: 0 auto;
            padding: 15px;
        }
        pre[class*=language-]>code {
            border: none;
            box-shadow: none;
            background: none;
        }
    </style>
</head>
<body class="container">    
    <form action="insert.php" method="POST">
        <textarea name="editor1" id="editor1">
            <?php print_r($teksten[0]['text']); ?>
        </textarea>
        <br>
        <button type="button" id="preview">preview</button>
        <input type="submit" name="submit" value="save">
    </form>

    <div id="output" class="markdown-body">
        <?php print_r($teksten[0]['text']); ?>
    </div>
    
    <script>
        CKEDITOR.replace( 'editor1' );
        
        function preview() {
            const output = document.querySelector('#output');
            const data = CKEDITOR.instances.editor1.getData();
            console.log(data);
            output.innerHTML = data;
            Prism.highlightAll();
        }
        
        document.querySelector('#preview').onclick = function(){preview()};
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/prism.min.js"></script>
</body>
</html>