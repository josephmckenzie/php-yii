<?php
use Arrilot\DotEnv\DotEnv;
DotEnv::load(__DIR__ . DIRECTORY_SEPARATOR . '.env.php'); 
$dbUser = DotEnv::get('DB_USER');
$dbHost = DotEnv::get('DB_HOST');
$dbPassword = DotEnv::get('DB_PASSWORD');
return [
    'class' => 'yii\db\Connection',
    'dsn' => $dbHost,
    'username' => $dbUser,
    'password' => $dbPassword
//    'charset' => 'utf8',

    // Schema cache options (for production environment)
    //'enableSchemaCache' => true,
    //'schemaCacheDuration' => 60,
    //'schemaCache' => 'cache',
];

?>

