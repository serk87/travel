@extends('layouts.develop')

@section('content')
<p class="text-muted font-14 mb-3">
    Это сервер альтернатива Api OpenstreetMap.
</p>
<h3>
    Базовый URL: <a href="https://overpass.madskill.ru/api/interpreter ">https://overpass.madskill.ru/api/interpreter </a>
</h3>
<div class="card-box mh-100 vh-100" style="margin:0px;padding:0px;overflow:hidden">
    <iframe src="https://wiki.openstreetmap.org/wiki/Overpass_API/Language_Guide" frameborder="0" style="overflow:hidden;height:100%;width:100%" height="100%" width="100%">Your browser isn't compatible</iframe>


</div>
@endsection