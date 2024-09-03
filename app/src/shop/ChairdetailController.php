<? 

class ChairdetailController extends PageController{
    public function index(){

        $Chair = Chair::get();
        $lamp = ShopObject::get();
        $product = ShopObject::get();
        return [
            
            'Product' => $product,
            'Lamp' => $lamp,
            'Chair'=> $Chair
        ];
    }
}