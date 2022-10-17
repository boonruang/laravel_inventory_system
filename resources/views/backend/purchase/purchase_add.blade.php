@extends('admin.admin_master')
@section('admin')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<div class="page-content">
<div class="container-fluid">

<div class="row">
<div class="col-12">
<div class="card">
    <div class="card-body">

    <h4 class="card-title">Add Purchase </h4><br>

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
 {{-- ################################ --}}
    <div class="card-body">
        <form method="" action="">
            @csrf
            <table class="table-sm table-bordered" width="100%" style="border-color: #ddd">
                <thead>
                    <tr>
                        <th>Category</th>
                        <th>Product Name</th>
                        <th>PSC/KG</th>
                        <th>Unit Price</th>
                        <th>Description</th>
                        <th>Total Price</th>
                        <th>Action</th>
                    </tr>
                </thead>
                    <tbody id="addRow" class="addRow">

                    </tbody>

                    <tbody>
                        <tr>
                            <td colspan="5"></td>
                            <td>
                                <input type="text" name="estimated_amount" value="0" id="estimated_amount" class="form-control estimated_amount" readonly style="background-color: #ddd">
                            </td>
                            <td></td>
                        </tr>
                    </tbody>
            </table><br>
            <div class="form-group">
                <button type="submit" class="btn btn-info" id="storeButton">Purchase Store</button>
            </div>
        </form>
    </div> <!-- End card-body2 -->

</div> <!-- end card -->
</div> <!-- end col -->
</div> <!-- end row -->

</div> <!-- end container -->
</div> <!-- end page-content -->

<script type="text/javascript">
$(function(){
    $(document).on('change','#supplier_id', function(){
        var supplier_id = $(this).val();
        $.ajax({
            url: "{{ route('get-category') }}",
            type: "GET",
            data: {supplier_id : supplier_id},
            success: function(data) {
                var html = '<option value="">Select Category</option>';
                $.each(data,function(key,v){
                    html += '<option value=" '+v.category_id+' ">'+v.category.name+'</option>';
                });
                $('#category_id').html(html);
            }
        });
    });
});
</script>

<script type="text/javascript">
    $(function(){
        $(document).on('change','#category_id', function(){
            var category_id = $(this).val();
            $.ajax({
                url: "{{ route('get-product') }}",
                type: "GET",
                data: {category_id : category_id},
                success: function(data) {
                    var html = '<option value="">Select Product</option>';
                    $.each(data,function(key,v){
                        html += '<option value=" '+v.id+' ">'+v.name+'</option>';
                    });
                    $('#product_id').html(html);
                }
            });
        });
    });
</script>

@endsection