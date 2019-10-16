<?php
namespace App\Controller\Api;

use App\Controller\Api\AppController;
use Cake\Event\Event;
use Cake\Utility\Security;
use Firebase\JWT\JWT;

class UsersController extends AppController
{  

    public $paginate = [
        'page' => 1,
        'limit' => 100,
        'maxLimit' => 100,
        'sortWhitelist' => [
            'id', 'name', 'created'
        ]
    ];



}