@extends('layouts.develop')

@section('content')
<div class="row">
    <div class="col-12">
        <div class="card-box">
            <div class="row">
                <div class="col-12">
                    <div class="p-2">
                        <form class="form-horizontal" role="form" action="{{route('attractions.store')}}" method="POST">
                            @csrf
                            <div class="form-group row">
                                <label class="col-sm-2  col-form-label" for="simpleinput">Название</label>
                                <div class="col-sm-10">
                                    <input type="text" id="simpleinput" class="form-control" name="name">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2  col-form-label" for="example-email">Описание</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" rows="8" name="description" id="example-textarea"></textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2  col-form-label">Картинка</label>
                                <div class="col-sm-10">
                                    <input type="text" id="profile-photo" name="image">
                                    <img src="" id="profile-photo-preview">
                                    <button onclick="filemanager.selectFile('profile-photo')">Выбирите</button>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2  col-form-label" for="simpleinput">Широта</label>
                                <div class="col-sm-10">
                                    <input type="text" id="simpleinput" class="form-control" name="latitude">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2  col-form-label" for="simpleinput">Долгота</label>
                                <div class="col-sm-10">
                                    <input type="text" id="simpleinput" class="form-control" name="longitude">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2  col-form-label" for="simpleinput">3D</label>
                                <div class="col-sm-10">
                                    <input type="text" id="3d" name="3d">
                                    <button onclick="filemanager.selectFile('3d')">Выбирете</button>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="flex items-center dark:text-gray-400">
                                    <input
                                            type="checkbox"
                                            class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"
                                    required
                                    />
                                    <span class="ml-2">
                                        Подтвердите
                                      </span>
                                </label>
                            </div>
                            <button class="btn btn-success" type="submit" onclick="return confirm('Вы уверены?');">Добавить</button>
                        </form>
                    </div>
                </div>

            </div>
            <!-- end row -->

        </div> <!-- end card-box -->
    </div><!-- end col -->
</div>
<!-- end row -->
@endsection