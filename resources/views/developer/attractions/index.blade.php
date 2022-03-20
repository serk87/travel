@extends('layouts.develop')


@section('content')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <button class="btn btn-primary" onclick="window.location.href ='{{route('attractions.create')}}'">
                    Добавить
                </button>

                @if (session('success'))
                {{ session('success') }}
                @endif
                <div class="table-responsive">
                    <table class="table table-centered mb-0" id="btn-editable">
                        <thead>
                            <tr>
                                <th>#П/П</th>
                                <th>Название</th>
                                <th>Картинка</th>
                                <th>Широта</th>
                                <th>Долгота</th>
                                <th>3d</th>
                                <th>Действия</th>
                            </tr>
                        </thead>
                    
                        <tbody>
                            @foreach ($attractions as $attraction)
                            <tr>
                                <td>{{$attraction->id}}</td>
                                <td>{{$attraction->name}}</td>
                                <td>{{$attraction->image}}t</td>
                                <td>{{$attraction->latitude}}</td>
                                <td>{{$attraction->longitude}}</td>
                                <td>{{$attraction['3d']}}</td>
                                <td>
                                    {{-- <button class="btn btn-primary" onclick="{{route('attractions.edit')}}">
                                        Редактировать
                                    </button> --}}
                                    <form action="{{route('attractions.destroy', $attraction->id)}}" method="POST"
                                      style="
                                  display: inline-block">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger" type="submit">
                                        Удалить
                                    </button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div> <!-- end .table-responsive-->
            </div> <!-- end card-body -->
        </div> <!-- end card -->
    </div> <!-- end col -->
</div> <!-- end row -->

{{-- <!-- Table Editable plugin-->
<script src="/dev/assets/libs/jquery-tabledit/jquery.tabledit.min.js"></script>

<!-- Table editable init-->
<script src="/dev/assets/js/pages/tabledit.init.js"></script>
<!-- App js-->
<script src="/dev/assets/js/app.min.js"></script>
        <!-- Vendor js -->
        <script src="/dev/assets/js/vendor.min.js"></script> --}}
@endsection