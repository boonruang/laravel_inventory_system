@extends('admin.admin_master')
@section('admin')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<div class="page-content">
<div class="container-fluid">

<div class="row">
<div class="col-12">
<div class="card">
    <div class="card-body">

    <h4 class="card-title">Add Product </h4><br>

    <div class="row">
    <div class="col-md-4">
        <div class="md-3">
            <label class="form-label">Date</label>
            <input class="form-control example-date-input" name="date" type="date" id="date">
        </div>
    </div>

    <div class="col-md-4">
        <div class="md-3">
            <label class="form-label">Purchase No</label>
            <input class="form-control example-date-input" name="purchase_no" type="text" id="purchase_no">
        </div>
    </div>

    <div class="col-md-4">
        <div class="md-3">
            <label class="form-label">Supplier Name</label>
            <select id="supplier_id" name="supplier_id" class="form-select" aria-label="Default select example">
                <option selected="">Open this select menu</option>
                @foreach($suppliers as $item)                
                <option value="{{$item->id}}">{{$item->name}}</option>
                @endforeach
            </select>
        </div>
    </div>

    <div class="col-md-4">
        <div class="md-3">
            <label class="form-label">Category Name</label>
            <select id="category_id" name="category_id" class="form-select" aria-label="Default select example">
                <option selected="">Open this select menu</option>

            </select>
        </div>
    </div>    

    <div class="col-md-4">
        <div class="md-3">
            <label class="form-label">Product Name</label>
            <select id="product_id" name="product_id" class="form-select" aria-label="Default select example">
                <option selected="">Open this select menu</option>

            </select>
        </div>
    </div>     

    <div class="col-md-4">
        <div class="md-3">
            <label class="form-label" style="margin-top: 40px"> </label>
            <input type="submit" class="btn btn-secondary btn-rounded waves-effect waves-light" value="Add More">
        </div>
    </div>      

    </div> <!-- end row -->


    </div> <!-- End card-body -->
</div>
</div> <!-- end col -->
</div>

</div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
        $('#myForm').validate({
            rules: {
                name : {
                    required : true,
                },
                supplier_id : {
                    required : true,
                },     
                unit_id : {
                    required : true,
                },
                category_id : {
                    required : true,
                },                            
            },
            messages : {
                name: {
                    required : 'Please Enter Your Product Name'
                },
                supplier_id: {
                    required : 'Please Select One Supplier'
                },   
                unit_id: {
                    required : 'Please Select One Unit'
                },
                category_id: {
                    required : 'Please Select One Category'
                },                              
            },
            errorElement : 'span',
            errorPlacement: function (error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight: function(element, errorClass, validClass){
                $(element).addClass('is-invalid');
            },
            unhighlight: function(element, errorClass, validClass){
                $(element).removeClass('is-invalid');
            }        
        });
    });
    </script>

@endsection