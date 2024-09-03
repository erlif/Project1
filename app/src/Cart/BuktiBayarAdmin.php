<?php 
use SilverStripe\Admin\ModelAdmin;

class BuktiBayarAdmin extends ModelAdmin{
    private static $menu_title = "Bukti-Bayar";

   
    private static $url_segment = "bukti-bayar"; 
    
    private static $menu_icon_class = 'font-icon-block-content';

    private static $managed_models = [
        LastOrder::class,
        DataCod::class
    ];


}