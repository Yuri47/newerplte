<?php

use Illuminate\Database\Seeder;

class CustonUsers extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

 $faker = Faker\Factory::create();

        $limit = 50;

        for ($i = 0; $i < $limit; $i++) {
            DB::table('users')->insert([ //,
                'name' => $faker->name,
        		'email' => $faker->email,
       			'password' => bcrypt(str_random(10)),
       			'remember_token' => str_random(10)
            ]);
        }




    }
}
