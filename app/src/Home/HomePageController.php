<?php
use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\DataList;
use SilverStripe\SiteConfig\SiteConfig;
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
        'out',
        'filter',
    ];


    public function index()
    {
        $member = Security::getCurrentUser();

        if (!$member) {
            return $this->redirect($this->Link('/member'));
        }


        // Debug::show($shopObjectsByTitle);

        // $filter = $respon;

        $Homeimage = HomeObject::get();
        $Homesection2 = Homesection2::get();
        $Homesection3 = Homesection3::get();
        $Homesection4 = Homesection4::get();
        $Thisweek = Thisweek::get();
        $config = SiteConfig::current_site_config();
        $Product = ShopObject::get()->sort('Title', 'DESC');
        $ProductItem = ShopObject::get()->sort('Created', 'ASC');
        // Debug::show($respon);

        // $logout = Injector::inst()->get(IdentityStore::class)->logOut($request);
        // Debug::show($Product);

        //lamp
        $Product = ShopObject::get()->sort('Title', 'DESC');
        $categoryTitle = 'Lamp';
        $category = ObjectCategory::get()->filter(['Title' => $categoryTitle])->first();
        if ($category) {
            // Filter ShopObject objects by the found category using the many-many relationship
            $categoryLamps = $category->ShopObjects();
        } else {
            // Handle the case where the category is not found
            $categoryLamps = DataList::create(ShopObject::class);
        }

        //Chair
        $categoryTitle = 'Chair';
        $category = ObjectCategory::get()->filter(['Title' => $categoryTitle])->first();
        if ($category) {
            // Filter ShopObject objects by the found category using the many-many relationship
            $categoryChair = $category->ShopObjects();
        } else {
            // Handle the case where the category is not found
            $categoryChair = DataList::create(ShopObject::class);
        }

        //Sofa
        $categoryTitle = 'Sofa';
        $category = ObjectCategory::get()->filter(['Title' => $categoryTitle])->first();
        if ($category) {
            // Filter ShopObject objects by the found category using the many-many relationship
            $categorySofa = $category->ShopObjects();
        } else {
            // Handle the case where the category is not found
            $categorySofa = DataList::create(ShopObject::class);
        }

        //  Debug::show($hasil_filter);
        // Debug::show($respon);
        return [
            'Homeimage' => $Homeimage,
            'Homesection2' => $Homesection2,
            'Homesection3' => $Homesection3,
            'Homesection4' => $Homesection4,
            'Thisweek' => $Thisweek,
            'Sofa' => $categorySofa,
            // 'Filter' => $shopObjectsByTitle,
            'Lamp' => $categoryLamps,
            'Chair' => $categoryChair,
            'Config' => $config,
            'Product' => $Product,
            'Member' => $member,
            'ProductItem' => $ProductItem,
            // 'Logout' => $logout,
            'Link ' => $this->Link()

        ];
    }

    



    public function Homesection2(HTTPRequest $request)
    {
        $l = $request->param('ID');
        $Homesection2 = Homesection2::get()->byID($l);

        return $this->customise([
            'Koma' => $Homesection2,
        ])->renderWith(["Homesection2detail", "Page"]);
    }

    public function Homesection3(HTTPRequest $request)
    {
        $p = $request->param('ID');
        $Homesection3 = Homesection3::get()->byID($p);

        return $this->customise([
            'Kona' => $Homesection3,
        ])->renderWith(["Homesection3detail", "Page"]);
    }

    public function Homesection4(HTTPRequest $request)
    {
        $e = $request->param('ID');
        $Homesection4 = Homesection4::get()->byID($e);

        return $this->customise([
            'Noka' => $Homesection4,
        ])->renderWith(["Homesection4detail", "Page"]);
    }

    public function Thisweek(HTTPRequest $request)
    {
        $f = $request->param('ID');
        $Thisweek = Thisweek::get()->byID($f);

        return $this->customise([
            'Samp' => $Thisweek,
        ])->renderWith(["Thisweekdetail", "Page"]);
    }

}

