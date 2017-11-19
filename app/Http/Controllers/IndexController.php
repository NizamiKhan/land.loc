<?php

namespace App\Http\Controllers;

use App\Page;
use App\People;
use App\Portfolio;
use App\Service;
use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\DB;

class IndexController extends Controller
{
    //
    public function execute(Request $request)
    {
        $pages = Page::all();
        $portfolios = Portfolio::get(['name', 'filter', 'images']);
        $services = Service::where('id', '<', 20)->get();
        $peoples = People::take(3)->get();
        $tags = DB::table('portfolios')->distinct()->lists('filter');

        $menu = array();
        foreach ($pages as $page) {
            $item = array('title' => $page->name, 'alias' => $page->alias);
            array_push($menu, $item);
        }
        $item = array('title' => 'Services', 'alias' => 'services');
        array_push($menu, $item);
        $item = array('title' => 'Portfolio', 'alias' => 'Portfolio');
        array_push($menu, $item);
        $item = array('title' => 'Team', 'alias' => 'team');
        array_push($menu, $item);
        $item = array('title' => 'Contact', 'alias' => 'contact');
        array_push($menu, $item);

//        dd($menu);
        return view('site.index', array(
            'menu' => $menu,
            'pages' => $pages,
            'services' => $services,
            'portfolios' => $portfolios,
            'peoples' => $peoples,
            'tags'=>$tags
        ));
    }

    public function newFunc1(){
        return 'as';
    }
}
