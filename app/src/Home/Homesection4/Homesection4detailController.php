<?php 
use SilverStripe\Control\HTTPRequest;

class Homesection4detailController extends PageController {
    public function index(HTTPRequest $request) {
        $Homeimage = HomeObject::get();
        $Homesection2 = Homesection2::get();
        $Homesection3 = Homesection3::get();
        $Homesection4 = Homesection4::get(); 
        $Thisweek = Thisweek::get();
    
        return [
            'Homeimage' => $Homeimage,
            'Homesection2' => $Homesection2,
            'Homesection3'=> $Homesection3,
            'Homesection4'=> $Homesection4,
            'Thisweek'=> $Thisweek
        ];
    }
}