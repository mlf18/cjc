<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pemakalah;

class PemakalahController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $pemakalah=Pemakalah::all();
        return ($pemakalah);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $pemakalah=new Pemakalah();
        $pemakalah->nama=$request->input('name');
        $pemakalah->jabatan=$request->input('jabatan');
        $pemakalah->instansi=$request->input('instansi');
        $pemakalah->alamat_instansi=$request->input('alamat_instansi');
        $pemakalah->telp_faxs=$request->input('telp');
        $pemakalah->hp=$request->input('hp');
        $pemakalah->email=$request->input('email');
        $pemakalah->jenis=$request->input('jenis');
        $pemakalah->judul='';
        $pemakalah->abstrak='';
        if ($request->input('jenis')=='pemakalah'){
            $pemakalah->judul=$request->input('judul');
            $pemakalah->kategori_id=$request->input('kategori');
            if($request->hasFile('abstrak')){
                $fileName='abstrak'.time().'.'.$request->file('abstrak')->getClientOriginalExtension();
                $request->file('abstrak')->move('file/', $fileName);
                $pemakalah->abstrak=$fileName;
            }
        }
        if ($pemakalah->save()){
            return redirect('/daftarsemreg')->with('success','Berhasil');    
        }else{
            return redirect('/daftarsemreg')->with('error','Gagal');    
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
