<?php

namespace App;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @property int $id
 * @property string $name
 */
class Catalog extends Model
{
    use HasFactory;

    protected $fillable = array('name', 'description', 'parent_id', 'image', 'priority');
    
    /**
     * @return HasMany
     */
//    public function products(): HasMany
//    {
//        return $this->hasMany('App\Product', 'catalog_id', 'id');
//    }
    
    /**
     * @param int $id
     * @return array
     */
    public function getCatalogIdsTree(int $id): array
    {
        $child_ids = [$id];
        $catalog_ids = [];
        do {
            $catalog_ids = array_merge($catalog_ids, $child_ids);
            $child_ids = $this::whereIn('parent_id', $child_ids)->pluck('id')->toArray();
        }
        while ($child_ids);
        
        return $catalog_ids;
    }
    
    /**
     * @return Collection
     */
    public function parentsNode(): Collection
    {
        return $this->where('parent_id', NULL)->get();
    }

    public function brands()
    {
        return $this->belongsToMany('App\Brand', 'brands_categories');
    }
    public function products()
    {
        return $this->belongsToMany('App\Product', 'products_categories',);
    }
}