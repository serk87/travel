@extends('layouts.develop')

@section('content')
<p class="text-muted font-14 mb-3">
    Это сервер обработки изображений карты
</p>
<h3>
    Базовый URL: <a href="https://map.madskill.ru/">https://map.madskill.ru/osm</a>
</h3>
<div class="card-box mh-100 vh-100" style="margin:0px;padding:0px;overflow:hidden">
    <iframe src="https://wiki.openstreetmap.org/wiki/Main_Page" frameborder="0" style="overflow:hidden;height:100%;width:100%" height="100%" width="100%">Your browser isn't compatible</iframe>


</div>
@endsection