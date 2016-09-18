<?php

use Illuminate\Database\Seeder;

class CustonClients extends Seeder
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
            DB::table('clients')->insert([ //,
                'name' => $faker->name,
        		'address' => $faker->city,
                'fone' => $faker->phoneNumber 
            ]);
        }




    }
}
