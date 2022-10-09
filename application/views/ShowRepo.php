<!doctype html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Show Repos</title>
    <link rel="stylesheet" href="<?= base_url('depends/css/bootstrap.css') ?>">
    <link rel="stylesheet" href="<?= base_url('depends/css/master.css') ?>">
</head>
<body>

<div style="padding: 2rem">
    <div class="row">

        <?php foreach ($repositories as $repository) { ?>

            <div class="col-4 p-2">
                <div class="gcard">
                    <a href="<?= $repository["url"] ?>" target="_blank">
                        <div class="head">
                            <?= $repository["repositoryName"] ?>
                            <span class="rank"> #<?= $repository["rank"] ?> </span>
                        </div>
                        <div class="content p-2">
                            <?= $repository["description"] ?>
                        </div>
                        <div class="footer">
                            <div class="stats">
                                <div><i class="fa-regular fa-star"></i><?= $repository["totalStars"] ?></div>
                                <div><i class="fa-regular fa-star"></i><?= $repository["starsSince"] ?> today</div>
                                <div><i class="fa-solid fa-code-fork"></i> <?= $repository["forks"] ?></div>
                            </div>
                            <div class="language-developers p-2">
                                <div class="language">
                                    <div class="language-dot" style="background-color: <?= $repository["languageColor"] ?>"></div>
                                    <span class="language-name" style="color: <?= $repository["languageColor"] ?>"><?= $repository["language"] ?></span>
                                </div>
                                <div class="developers">
                                    <?php foreach ($repository['developers'] as $developer){ ?>
                                        <a href="<?=$developer['url']?>" target="_blank" title="<?=$developer['username']?>">
                                            <img src="<?=$developer['avatar']?>" alt="">
                                        </a>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>

        <?php } ?>

    </div>
</div>


<script src="<?= base_url('depends/js/jquery.js') ?>"></script>
<script src="<?= base_url('depends/js/bootstrap.js') ?>"></script>
<script src="https://kit.fontawesome.com/0f11fb3fb1.js" crossorigin="anonymous"></script>

<script>
    $('.gcard .head').each(function (){
       $(this).css('background-color', function() {
           var color = '#';
           for (var i = 0; i < 6; i++) {
               color += Math.floor(Math.random() * 10);
           }
           return color;
       })
    });
</script>
</body>
</html>





