<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
/**
 * @OA\Info(title="Документация API к приложению достопримечательностей", version="0.1", 
 * description="Авторизация происходит через OAuth2, описание и ссылки на методы надоятся в Authorize",
 *      @OA\Contact(
     *          email="sergei.klimovich.com"
     *      )
     * )
      * @OA\Server(
     *      url=L5_SWAGGER_CONST_HOST,
     *      description="API сервер"
     * )
 */
class Controller extends BaseController
{

    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
}
