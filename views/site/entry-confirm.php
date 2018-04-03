<?php
use yii\helpers\Html;
?>

<p>You Have Entered the following info:</p>

<ul>
	<li><label>Name</label>: <?= Html::encode($model->name)?></li>
	<li><label>Email</label>: <?= Html::encode($model->email)?></li>
	
</ul>