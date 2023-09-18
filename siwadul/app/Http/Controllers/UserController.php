<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('auth.users.index', [
            'users' => User::where('level', 'user')->orderBy('id')->get(),
            'admins' => User::where('level', 'admin')->orderBy('id')->get(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('auth.users.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|min:3|max:30',
            'email' => 'required|unique:users',
            'username' => 'required|unique:users|min:5|max:20',
            'nik' => 'required|min:3|max:30',
            'password' => 'required|min:6|max:20',
            'level' => 'required'
        ]);

        $validatedData['password'] = Hash::make($validatedData['password']);
        $validatedData['status_verifikasi'] = 0;

        $query = User::create($validatedData);

        if ($query) {
            return redirect('/users')->with('message', 'Registrasi berhasil!');
        } else {
            return redirect('/users')->with('message', 'Registrasi gagal dilakukan!');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return view('auth.users.show', [
            'data' => $user
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->delete();

        return redirect('/users')->with('message', 'Data user berhasil dihapus');
    }

    public function updateStatus(User $user)
    {
      $data = [
        'status_verifikasi' => 1
      ];
  
      // dd($data);
      if (User::where('id', $user->id)->update($data)) {
        return back()->with('message', 'Verifikasi user Selesai!');
      } else {
        return back()->with('message', 'Status verifikasi gagal dirubah menjadi Selesai!');
      }
    }
}
