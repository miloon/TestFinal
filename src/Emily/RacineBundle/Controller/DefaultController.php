<?php

namespace Emily\RacineBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('EmilyRacineBundle:Default:index.html.twig');
    }
}
