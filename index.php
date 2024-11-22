<?php

declare(strict_types=1);

error_reporting(E_ALL);
ini_set('display_errors', true);

// php 8.3 deprecation : triggered every time
$a = 'blabla';
$a--;


// php 8.4 deprecation : triggered once
function implicitNullable(string $foo = null) {}
