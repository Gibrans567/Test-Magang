<?php

namespace App\Http\Controllers;

use GuzzleHttp\Client;
use Illuminate\Http\Request;

class BukuController extends Controller
{
    const API_URL = "http://localhost:8000/api/buku";
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $curren_url = url()->current();
        $client = new Client();
        $url = static::API_URL;

        if($request->input('page') != ''){
            $url .= "?page=" . $request->input('page');
        }

        $respon = $client->request('GET', $url);
        $content = $respon->getBody()->getContents();
        $contentArray = json_decode($content,true);
        $data = $contentArray['data'];
        foreach($data['links'] as $key => $value){
            $data['links'][$key]['url2'] = str_replace(static::API_URL, $curren_url, $value['url']);
        }

        return view('buku.index', ['data'=>$data]);

    }
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $judul = $request->judul;
        $pengarang = $request->pengarang;
        $tanggal_publikasi = $request->tanggal_publikasi;

        $parameter = [
            'judul' => $judul,
            'pengarang' => $pengarang,
            'tanggal_publikasi' => $tanggal_publikasi
        ];

        $client = new Client();
        $url = "http://localhost:8000/api/buku";
        $respon = $client->request('POST', $url,[
            'headers'=>['Content-type'=>'application/json'],
            'body'=>json_encode($parameter)
        ]);
        $content = $respon->getBody()->getContents();

        $contentArray = json_decode($content,true);
       $message = $contentArray['message'];
       if($contentArray['status'] != true){
        $error = $contentArray['data'];
        return redirect()->to('buku')->withErrors($error)->withInput();
       }else{
        return redirect()->to('buku')->with('success','Berhasil Memasukan Data');
       };
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $client = new Client();
        $url = "http://localhost:8000/api/buku/$id";
        $respon = $client->request('GET', $url);
        $content = $respon->getBody()->getContents();
        $contentArray = json_decode($content,true);
        if($contentArray['status'] == false) {
                $error = $contentArray['message'];
                return redirect()->to('buku')->withErrors($error);
         }  else{
            $data = $contentArray['data'];
            return view('buku.index', ['data'=>$data]);
         };
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $judul = $request->judul;
        $pengarang = $request->pengarang;
        $tanggal_publikasi = $request->tanggal_publikasi;

        $parameter = [
            'judul' => $judul,
            'pengarang' => $pengarang,
            'tanggal_publikasi' => $tanggal_publikasi
        ];

        $client = new Client();
        $url = "http://localhost:8000/api/buku/$id";
        $respon = $client->request('PUT', $url,[
            'headers'=>['Content-type'=>'application/json'],
            'body'=>json_encode($parameter)
        ]);
        $content = $respon->getBody()->getContents();

        $contentArray = json_decode($content,true);
       $message = $contentArray['message'];
       if($contentArray['status'] != true){
        $error = $contentArray['data'];
        return redirect()->to('buku')->withErrors($error)->withInput();
       }else{
        return redirect()->to('buku')->with('success','Berhasil Melakukan Update Data');
       };
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $client = new Client();
        $url = "http://localhost:8000/api/buku/$id";
        $respon = $client->request('DELETE', $url,);
        $content = $respon->getBody()->getContents();
        $contentArray = json_decode($content,true);
       $message = $contentArray['message'];
       if($contentArray['status'] != true){
        $error = $contentArray['data'];
        return redirect()->to('buku')->withErrors($error)->withInput();
       }else{
        return redirect()->to('buku')->with('success','Berhasil Melakukan Hapus Data');
       };
    }
}
