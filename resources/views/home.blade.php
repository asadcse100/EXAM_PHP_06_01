@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-left">
        <div class="col-md-7">
            <div class="card">
                <div class="card-header">{{ __('Office Colleague List') }}</div>

                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif

                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">SL</th>
                                <th scope="col">Office Name</th>
                                <th scope="col">Address</th>
                                <th scope="col">No. of Colleague</th>
                                <th scope="col">OPT</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($officeInfo as $key=>$info)
                            <tr>
                                <th scope="row">{{$key+1}}</th>
                                <td>{{$info->office_name}}</td>
                                <td>{{$info->office_address}}</td>
                                <td>{{count($info->colleagues)}}</td>
                                <td>
                                    <button class="btn btn-primary btn-sm">View</button>
                                    <button class="btn btn-info btn-sm">Edit</button>
                                    <button class="btn btn-danger btn-sm delete">Delete</button>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
        <div class="col-md-5">

            <div class="card">
                <div class="card-header">{{ __('Office Collegue') }}</div>
                <div class="card-body">
                <form id="myForm" action="{{Route('store')}}" method="post" enctype="multipart/form-data">
                    @csrf
                        <h2>Office Information</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <input type="text" class="form-control" name="office_name" id="office_name" placeholder="Enter Office Name" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <input type="text" class="form-control" name="office_address" id="office_address" placeholder="Office Address" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <input type="text" class="form-control" name="office_phone" id="office_phone" placeholder="Office Phone" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <input type="file" class="form-control" name="application_letter" id="application_letter" placeholder="Application Letter">
                                </div>
                            </div>
                        </div>

                    <hr>
                    <div class="container mt-2">
                        <button type="button" class="btn btn-primary mb-3 add-form">+ Add Form</button>
                        <div id="forms-container">
                            <!-- Initially, there's one form -->
                            <div class="colleague-form">
                                <button type="button" class="btn btn-danger btn-sm remove-form">Remove Form</button>
                                <h3>Office Colleague</h3>
                                <div class="row mt-3">
                                    <div class="col-md-6">
                                        <div class="form-group mb-3">
                                            <input type="text" class="form-control" name="colleague_name[]" placeholder="Colleague name" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group mb-3">
                                            <input type="text" class="form-control" name="colleague_mobile[]" placeholder="Colleague Mobile" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group mb-3">
                                            <input type="text" class="form-control" name="colleague_address[]" placeholder="Colleague Address" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group mb-3">
                                            <input type="file" class="form-control" name="photo[]" placeholder="Photo" required>
                                        </div>
                                    </div>
                                </div>
                                </div>
                        </div>
                    <input type="submit" class="btn btn-success btn-sm text-right" value="Save">

                    </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
@endsection

@section('js')
<script>
   $(document).ready(function () {
        // Add Form
        $(".add-form").click(function () {
            var clone = $(".colleague-form:first").clone(true);
            clone.find("input").val(""); // Clear input values in the cloned form
            $("#forms-container").append(clone);
        });

        // Remove Form
        $("#forms-container").on("click", ".remove-form", function () {
            $(this).closest(".colleague-form").remove();
        });


        fetch_data();

        function fetch_data()
        {
        $.ajax({
        url:"/home/fetch_data",
        dataType:"json",
        success:function(data)
        {
            var html = '';
            html += '<tr>';
            html += '<td contenteditable id="sl"></td>';
            html += '<td contenteditable id="office_name"></td>';
            html += '<td contenteditable id="office_address"></td>';
            for(var count=0; count < data.length; count++)
            {
            html +='<tr>';
            html +='<td contenteditable class="column_name" data-column_name="office_name" data-id="'+data[count].id+'">'+data[count].office_name+'</td>';
            html += '<td contenteditable class="column_name" data-column_name="office_address" data-id="'+data[count].id+'">'+data[count].office_address+'</td>';
            html += '<td><button type="button" class="btn btn-danger btn-xs delete" id="'+data[count].id+'">Delete</button></td></tr>';
            }
            $('tbody').html(html);
        }
        });
        }

        $(document).on('blur', '.column_name', function(){
        var column_name = $(this).data("column_name");
        var column_value = $(this).text();
        var id = $(this).data("id");
        
        if(column_value != '')
        {
        $.ajax({
            url:"{{ route('update_data') }}",
            method:"POST",
            data:{column_name:column_name, column_value:column_value, id:id, _token:_token},
            success:function(data)
            {
            $('#message').html(data);
            }
        })
        }
        else
        {
        $('#message').html("<div class='alert alert-danger'>Enter some value</div>");
        }
        });

        $(document).on('click', '.delete', function(){
        var id = $(this).attr("id");
        console.log(id);
        if(confirm("Are you sure you want to delete this records?"))
        {
        $.ajax({
            url:"{{ route('delete_data') }}",
            method:"POST",
            data:{id:id, _token:_token},
            success:function(data)
            {
            $('#message').html(data);
            fetch_data();
            }
        });
        }
        });


         $('#myForm').submit(function (e) {
            e.preventDefault(); // Prevent the default form submission

            var formData = new FormData(this);

            $.ajax({
                url: $(this).attr('action'),
                type: $(this).attr('method'),
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: function (response) {
                    // Handle the successful response from the server
                    console.log(response);
                },
                error: function (xhr, status, error) {
                    // Handle errors
                    console.error(xhr.responseText);
                }
            });
        });

    });


    
</script>
@endsection