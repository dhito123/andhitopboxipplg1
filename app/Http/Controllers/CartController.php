<?php

namespace App\Http\Controllers;

use GuzzleHttp\Middleware;
use Illuminate\Http\Request;
use App\Cart;
use Auth;

class CartController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $carts = Cart::where('user_id', Auth::user()->id)->get();
        return view('cart.index', compact('carts'));
    }

    public function store(Request $request)
    {
        //validasi barang
        $duplicate = Cart::where('product_id', $request->product_id)->first();
        if($duplicate){
            return redirect('/cart')->with('gagal', 'Produk Yang Anda Tambahkan Sudah Ada Di Keranjang');
        }

        //ketika barang berhasil di tambahkan
        Cart::create([
            'user_id' => Auth::user()->id,
            'product_id' => $request->product_id,
            'qty' => 1
        ]);
        return redirect('/cart')->with('gagal', 'Produk Berhasil Di Tambahkan Ke Keranjang');
    }

    public function update(Request $request, $id)
    {
        Cart::where('id', $id)->update([
            'qty' => $request->quantity
        ]);

        //update mnggunakan fitur rest API
        return response()->json([
            'success' => true
        ]);
    }
}
