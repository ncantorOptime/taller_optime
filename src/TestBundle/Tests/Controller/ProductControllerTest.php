<?php

namespace TestBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\Validator\Validation;
use TestBundle\Entity\Product;

class ProductControllerTest extends WebTestCase
{
    private $validator;
    public function setUp()
    {
        $this->validator = Validation::createValidatorBuilder()
            ->enableAnnotationMapping()
            ->getValidator();
    }
    #Unit Test, validation long word from field Codigo
    public function testLongWordCodigo()
    {
        $products = new Product();
        $products->setCodigo('111991');
        $listaErrores = $this->validator->validate($products);
        if($listaErrores->count()>0)
        {
            $error = $listaErrores[0];
            $this->assertEquals('This value is long validate.', $error->getMessage());
        }
    }

    public function testInit()
    {
        $this->assertEquals(1, 1, "Probar que 1 es igual a 1");
    }

    /**
     * @test
     */
    public function redirectProductList()
    {
        $client = static::createClient();
        $client->request('GET', '/product/');
        echo $client->getResponse()->getStatusCode();
        $this->assertEquals(200, $client->getResponse()->getStatusCode(),
            'el Status fue diferente a 200 en la lista de productos'
        );
    }
}
