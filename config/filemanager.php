<?php
return [
    'base_route'      => 'admin/filemanager',
    'middleware'      => ['web', 'auth', 'role:root'],
    'allow_format'    => 'jpeg,jpg,png,gif,webp,mp3',
    'max_size'        => 500,
    'max_image_width' => 1024,
    'image_quality'   => 80,
];