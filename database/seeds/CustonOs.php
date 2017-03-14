<?php

use Illuminate\Database\Seeder;

class CustonOs extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()  {
    
        
        $limit = 10000;

        for ($i = 0; $i < $limit; $i++) {
  
        //
          DB::table('service_orders')->insert([
            'client_id' => 130,
            'equipament_id' => 91,
            'state' => 'ANALISE',
            'technical' => 'Yuri',
            'observations' => 'Yuri',
            'finalReport' => 'Yuri',
            'price' => 0,


        ]);
    }
}
}
