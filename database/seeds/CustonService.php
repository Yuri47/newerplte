 

    <?php

use Illuminate\Database\Seeder;

class CustonService extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

$limit = 1000;

        for ($i = 0; $i < $limit; $i++) {

  DB::table('service_orders')->insert([
            'client_id' => 130,
            'equipament_id' => str_random(3),
            'state' => 'ANALISE',
            'technical' => 'Yuri',
            'observations' => 'Yuri',
            'technical' => 'Yuri',
            'price' => 0,
             

        ]);


    }
  }
}
