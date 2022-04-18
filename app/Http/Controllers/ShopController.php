<?php

namespace App\Http\Controllers;

use App\Product;
use App\ProductCategory;
use Illuminate\Contracts\View\View;
use Illuminate\Database\Query\Builder;
use Illuminate\Http\Request;
use Illuminate\View\View as ViewInstance;
use \Illuminate\Contracts\View\Factory as ViewFactoryContract;
use App\Catalog;
use App\Property;

class ShopController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    private Catalog $catalog;
    private ViewFactoryContract $view;
    private  $catalog_ids;

    public function __construct (Catalog $catalog, ViewFactoryContract $view)
    {
        $this->catalog = $catalog;
        $this->view = $view;
    }
    
    /**
     * @return View
     */
    public function list(Request $request): View
    {
        $keyword = $request->get('keyword');
//    dd($keyword) ;
        $categories=Catalog::limit(4)->get();

        /** @var ViewInstance $view */
        $view = $this->view->make('index', ['categories'=>$categories,'keyword' => $keyword]);
//        $view->nest('links', 'layouts.links');
        
        return $view;
    }
    
    /**
     * @param int $id
     * @return View
     */
    public function getProduct(int $id): View
    {
        $product = Product::with('properties')->findOrFail($id);
        
        return view('shop.single', ['product' => $product]);
    }
    
    /**
     * @param int $id
     * @return View
     */
    public function getChildCatalogs(Request $request,int $id)
    {
        $child_catalogs = Catalog::where('parent_id', $id)->get();

           $this->catalog_ids = $this->catalog->getCatalogIdsTree($id);

  $products = Product::whereHas('catalogs', function($q){

               $q->whereIn('catalogs.id',$this->catalog_ids);
     })->with('catalogs')->with('properties')->get();

       // $products = Product::whereIn('catalog_id', $catalog_ids)->with('catalogs')->with('properties')->get();
        $parent_id = $id;
        $parent_catalogs_array = [];
        while ($parent_id !== null) {
            $parent_catalog = $this->catalog::find($parent_id);
            $parent_id = null;
            if ($parent_catalog) {
                $parent_id = $parent_catalog->parent_id;
                $parent_catalogs_array[] = ['id' => $parent_catalog->id, 'name' => $parent_catalog->name];
            }
        }
        $parent_catalogs_array = array_reverse($parent_catalogs_array);
        $properties = Property::with('propertyValues')->orderBy('priority')->get();

        /** @var ViewInstance $view */
        $view = $this->view->make(
            'shop.category',
            ['products' => $products,'id'=>$id,'catalogs' => $child_catalogs, 'parent_catalogs' => $parent_catalogs_array]
        );
        $view->nest('filter', 'layouts.filter', ['properties' => $properties]);

        return $view;
    }
}
