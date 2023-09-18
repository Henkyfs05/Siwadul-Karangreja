<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Admin',
            'username' => 'admin',
            'email' => 'admin@admin.com',
            'password' => Hash::make('123456'),
            'status_verifikasi' => 1,
            'level' => 'admin',
        ]);

        User::create([
            'name' => 'User 1',
            'username' => 'user1',
            'email' => 'user1@example.com',
            'password' => Hash::make('123456'),
            'status_verifikasi' => 1,
            'level' => 'user',
        ]);

        User::create([
            'name' => 'User 2',
            'username' => 'user2',
            'email' => 'user2@example.com',
            'password' => Hash::make('123456'),
            'status_verifikasi' => 1,
            'level' => 'user',
        ]);
    }
}
