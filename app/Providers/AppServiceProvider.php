<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\User;
use DB;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // Configurar o arquivo config com as configurações
         
        config(['config.countOs' => $users = DB::table('service_orders')->count()]);
        config(['config.users' => $users = DB::table('users')->count()]);
        config(['config.author' => 'Yuri Alexs']);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
         $this->app->singleton(FakerGenerator::class, function () {
            return FakerFactory::create('pt_BR');
        });
    }
}
