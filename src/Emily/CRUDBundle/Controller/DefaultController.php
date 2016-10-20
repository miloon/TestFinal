<?php

namespace Emily\CRUDBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('EmilyCRUDBundle:Default:index.html.twig');
    }
}
