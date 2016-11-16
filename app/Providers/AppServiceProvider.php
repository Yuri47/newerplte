<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\User;
use App\ServiceOrder;
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
        //
          config(['config.countOs' => $users = DB::table('service_orders')->count()]);
        config(['config.osOpen' => $users = ServiceOrder::where("state", "RECEBIDO")->count()]);
        config(['config.osPrice' => $users = DB::table('service_orders')->sum('price')]);
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
    }
}
