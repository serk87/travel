@extends('layouts.develop')

@section('content')
<p class="text-muted font-14 mb-3">
    Это список Ваших OAuth2 клиентов, которые можете использовать для авторизации в Вашем приложении
</p>
<div class="card-box">
    <h4 class="mt-0 mb-3 header-title">Создание клиента</h4>

    <form role="form" method="POST" action="/oauth/clients">
        @csrf
        <div class="form-group">
            <label for="exampleInputEmail1">Имя</label>
            <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Введите любое имя">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Callback</label>
            <input type="text" name="redirect" readonly  class="form-control" id="exampleInputPassword1" value="https://travel.madskill.ru/api/oauth2-callback">
        </div>
        <div class="form-group">
            <div class="checkbox">
                <input id="checkbox0" type="checkbox" required>
                <label for="checkbox0">
                    Проверка
                </label>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Создать</button>
    </form>
</div>
    <div class="card-box">
<div class="table-responsive">
    <table class="table mb-0">
        <thead>
            <tr >
                <th>ID Клиента</th>
                <th>Название</th>
                <th>Secret</th>
                <th>Calback</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($clients as $client)
            @if(($loop->iteration % 2) == 0)
            <tr >
                <td>{{$client->id}}</td>
                <td>{{$client->name}}</td>
                <td>{{$client->secret}}t</td>
                <td>{{$client->redirect}}</td>
                <td>
                    <form action="/oauth/clients/{{$client->id}}" method="POST">
                  @csrf
                  @method('DELETE')
              <button onclick="return confirm('Вы уверены? После удаления обновите страницу');" class="btn btn-danger" type="submit">Удалить</button>
              </form>
                </td>
            </tr>
            @else
            <tr class="table-success">
                <td>{{$client->id}}</td>
                <td>{{$client->name}}</td>
                <td>{{$client->secret}}</td>
                <td>{{$client->redirect}}</td>
                <td>
                    <form action="/oauth/clients/{{$client->id}}" method="POST">
                  @csrf
                  @method('DELETE')
              <button onclick="return confirm('Вы уверены? После удаления обновите страницу');" class="btn btn-danger" type="submit">Удалить</button>
              </form>
                </td>
            </tr>
            @endif
            @endforeach
            
        </tbody>
    </table>
</div>
</div>
@endsection