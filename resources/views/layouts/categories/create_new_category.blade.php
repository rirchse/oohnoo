@extends('dashboard')
@section('title', 'Create New Category')
@section('content')
 <section class="content-header">
      <h1>Create Category</h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Categorys</a></li>
        <li class="active">Create Category</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row"> <!-- left column -->
        <div class="col-md-6"> <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 style="color: #800" class="box-title">Category Details</h3>
            </div>
            {!! Form::open(['route' => 'category.store', 'method' => 'POST', 'files' => true]) !!}
            <div class="box-body">
              <div class="form-group label-floating">
                {{ Form::label('name', 'Name:', ['class' => 'control-label']) }}
                {{ Form::text('name', null, ['class' => 'form-control'])}}
              </div>
              <div class="form-group label-floating">
                {{ Form::label('details', 'Details', ['class' => 'control-label']) }}
                {!! Form::textarea('details',null,['class'=>'form-control', 'rows' => 4, 'cols' => 45]) !!}
              </div>
              <div class="form-group label-floating">
                  <b>Status:</b> <br>
                  {{ Form::label('status', 'Active:', ['class' => 'control-label']) }}
                  {!! Form::checkbox('status', '1','checked'); !!}
              </div>

            <button type="submit" class="btn btn-primary pull-right">Save</button>
                <div class="clearfix"></div>
            {!! Form::close() !!}
            
          </div> <!-- /.box -->
        </div> <!--/.col (left) -->
      </div> <!-- /.row -->
    </section> <!-- /.content -->
@endsection