@extends('layouts.develop')

@section('content')
<p class="text-muted font-14 mb-3">
    Это сервер Геокодирования, конвертации координат в адрес и наоборот.
</p>
<h3>
    Базовый URL: <a href="https://geo.madskill.ru/">https://geo.madskill.ru</a>
</h3>
<div class="card-box mh-100 vh-100" style="margin:0px;padding:0px;overflow:hidden">
    <iframe src="https://nominatim.org/release-docs/develop/api/Overview/" frameborder="0" style="overflow:hidden;height:100%;width:100%" height="100%" width="100%">Your browser isn't compatible</iframe>


</div>
@endsection