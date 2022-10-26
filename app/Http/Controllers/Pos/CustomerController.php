<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Payment;
use Auth;
use Illuminate\Support\Carbon;
use Image;

class CustomerController extends Controller
{
    public function CustomerAll() {
        $customers = Customer::latest()->get();
        return view('backend.customer.customer_all',compact('customers'));
    } // End method

    public function CustomerAdd(){
        return view('backend.customer.customer_add');
    } // End method

    public function CustomerStore(Request $request) {

        $image = $request->file('customer_image');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();

        Image::make($image)->fit(200,200)->save('upload/customer/'.$name_gen);

        $save_url = 'upload/customer/'.$name_gen;

        Customer::insert([
            'name' => $request->name,
            'mobile_no' => $request->mobile_no,
            'email' => $request->email,
            'address' => $request->address,
            'customer_image' => $save_url,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Customer Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('customer.all')->with($notification);

    } //End Method

    public function CustomerEdit($id) {

        $customer = Customer::findOrFail($id);
        return view('backend.customer.customer_edit',compact('customer'));
    } //End Method

    public function CustomerUpdate(Request $request){

        $customer_id = $request->id;

        if ($request->file('customer_image')) {

            $image = $request->file('customer_image');
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
            Image::make($image)->fit(200,200)->save('upload/customer/'.$name_gen);
            $save_url = 'upload/customer/'.$name_gen;
           
            Customer::findOrfail($customer_id)->update([
                'name' => $request->name,
                'mobile_no' => $request->mobile_no,
                'email' => $request->email,
                'address' => $request->address,
                'customer_image' => $save_url,
                'updated_by' => Auth::user()->id,
                'updated_at' => Carbon::now(),
            ]);

            $notification = array(
                'message' => 'Customer Updated with Image Successfully',
                'alert-type' => 'success'
            );
    
            return redirect()->route('customer.all')->with($notification);            

        } else {

            Customer::findOrfail($customer_id)->update([
                'name' => $request->name,
                'mobile_no' => $request->mobile_no,
                'email' => $request->email,
                'address' => $request->address,
                'updated_by' => Auth::user()->id,
                'updated_at' => Carbon::now(),
            ]);

            $notification = array(
                'message' => 'Customer Updated without Image Successfully',
                'alert-type' => 'success'
            );
    
            return redirect()->route('customer.all')->with($notification);                        
        } // End Else
            
    }  //End Method

    public function CustomerDelete($id) {

        $customers = Customer::findOrFail($id);
        $image = $customers->customer_image;
        unlink($image);

        Customer::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Customer Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);    
    } //End Method

    public function CreditCustomer(){
        $allData = Payment::whereIn('paid_status',['full_due','partial_paid'])->get();
        return view('backend.customer.customer_credit',compact('allData'));
    } //End Method

    public function CreditCustomerPrintPdf(){
        $allData = Payment::whereIn('paid_status',['full_due','partial_paid'])->get();
        return view('backend.pdf.customer_credit_pdf',compact('allData'));
    } // End Method

    public function CustomerEditInvoice($invoice_id) {
        $payment = Payment::where('invoice_id',$invoice_id)->first();
        return view('backend.customer.edit_customer_invoice',compact('payment'));
    } // End Method
}
