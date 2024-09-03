<?php
use SilverStripe\Core\Injector\Injector;
use SilverStripe\Dev\Debug;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Security\IdentityStore;
use SilverStripe\Security\Security;
 

class HomePageController extends PageController 
{

    private static $allowed_actions = [
        'Homeimage',
        'Homesection2',
        'Homesection3',
        'Homesection4',
        'Thisweek',
        'out'
    ] ;


    public function index(HTTPRequest $request){
        $member = Security::getCurrentUser();
        
        if (!$member) {
            return $this->redirect($this->Link('/member'));
        }
        $Homeimage = HomeObject::get();
        $Homesection2 = Homesection2::get();
        $Homesection3 = Homesection3::get();
        $Homesection4 = Homesection4::get(); 
        $Thisweek = Thisweek::get();
        // $logout = Injector::inst()->get(IdentityStore::class)->logOut($request);
        // Debug::show($logout);
        
        
        return [
            'Homeimage' => $Homeimage,
            'Homesection2' => $Homesection2,
            'Homesection3'=> $Homesection3,
            'Homesection4'=> $Homesection4,
            'Thisweek'=> $Thisweek,
            'Member' => $member,
            // 'Logout' => $logout,
            'Link '  => $this->Link()
            
        ];
    }



    public function Homesection2(HTTPRequest $request){
        $l = $request-> param('ID');
        $Homesection2 = Homesection2::get()->byID($l);

        return $this->customise([
            'Koma'=> $Homesection2,
        ])->renderWith(["Homesection2detail", "Page"]);
    }

    public function Homesection3(HTTPRequest $request){
        $p = $request-> param('ID');
        $Homesection3 = Homesection3::get()->byID($p);

        return $this->customise([
            'Kona'=> $Homesection3,
        ])->renderWith(["Homesection3detail", "Page"]);
    }

    public function Homesection4(HTTPRequest $request){
        $e = $request-> param('ID');
        $Homesection4 = Homesection4::get()->byID($e);

        return $this->customise([
            'Noka'=> $Homesection4,
        ])->renderWith(["Homesection4detail", "Page"]);
    }

    public function Thisweek(HTTPRequest $request){
        $f = $request-> param('ID');
        $Thisweek = Thisweek::get()->byID($f);

        return $this->customise([
            'Samp'=> $Thisweek,
        ])->renderWith(["Thisweekdetail", "Page"]);
    }

}
    
