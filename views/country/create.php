<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Country */

$this->title = 'Create a Jon Says Saying';
$this->params['breadcrumbs'][] = ['label' => 'Jon Says', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="country-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
