<?php

namespace Emily\CRUDBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository('EmilyCRUDBundle:Article')->findAll();
        return $this->render('EmilyCRUDBundle:Default:index.html.twig', array(
            'articles' => $articles,
        ));
    }
}
