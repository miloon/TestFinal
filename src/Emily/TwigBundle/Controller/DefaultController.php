<?php

namespace Emily\TwigBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('EmilyTwigBundle:Default:index.html.twig');
    }
    public function conditionsAction()
    {
        return $this->render('EmilyTwigBundle:Default:conditions.html.twig');
    }
    public function bouclesAction()
    {
        return $this->render('EmilyTwigBundle:Default:boucles.html.twig');
    }
}
