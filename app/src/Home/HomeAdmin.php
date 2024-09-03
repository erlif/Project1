<?php
use SilverStripe\Admin\ModelAdmin;


class HomeAdmin extends ModelAdmin{
    private static $menu_title = 'Homeimage';
    private static $url_segment = 'Homeimage';

    private static $menu_icon_class = 'font-icon-block-file';


    private static $managed_models = [
       HomeObject:: class, 
       Homesection2::class,
       Homesection3::class,
       Homesection4::class,
       Thisweek::class
    ] ;
}