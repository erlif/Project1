<?php
use SilverStripe\Admin\ModelAdmin;


class ShopAdmin extends ModelAdmin{
    private static $menu_title = 'Product';
    private static $url_segment = 'Product';

    private static $menu_icon_class = 'font-icon-lock';
    private static $managed_models = [
       ShopObject:: class, 
       
    ] ;
}