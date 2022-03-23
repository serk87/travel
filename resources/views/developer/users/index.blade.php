@extends('layouts.develop')

@section('content')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                @if (session('success'))
                {{ session('success') }}
                @endif
                <div class="table-responsive">
                    <table class="table table-centered mb-0" id="btn-editable">
                        <thead>
                            <tr>
                                <th>#П/П</th>
                                <th>Ник</th>
                                <th>Email</th>
                                <th>Действия</th>
                            </tr>
                        </thead>
                    
                        <tbody>
                            @foreach ($users as $user)
                            <tr>
                                <td>{{$user->id}}</td>
                                <td>{{$user->name}}</td>
                                <td>{{$user->email}}</td>
                                <td>
                                    {{-- <button class="btn btn-primary" onclick="{{route('attractions.edit')}}">
                                        Редактировать
                                    </button> --}}
                                    <form action="{{route('users.destroy', $user->id)}}" method="POST"
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
@endsection