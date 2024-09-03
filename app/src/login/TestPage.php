<?php

namespace {
    //  use Page;
//  use PageController;

    class TestPage extends Page
    {

    }

    class TestPageController extends PageController
    {
        public function init()
        {
            parent::init();

        }
        public function index(){
            die("kkkkkkkkkk");
        }
    }
}