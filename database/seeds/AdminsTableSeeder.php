<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

class AdminsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run ()
    {
        DB::table('admins')->truncate();
        DB::table('admins')->insert(
            [   'name' => 'Admin',
                'job_title' => 'Administrator',
                'email' => 'admin@admin.com',
                'password' => Hash::make('123456789'),
                'email_verified_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]
        );
    }
}
