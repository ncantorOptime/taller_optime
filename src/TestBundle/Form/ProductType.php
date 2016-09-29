<?php

namespace TestBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ProductType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('codigo','text',[
                'label'=>'Codigo Producto: ',
                'max_length' => 10,
                'attr'=>['class'=>'form-control']
            ])
            ->add('nombre', 'text',[
                'label'=>'Codigo Producto: ',
                'attr'=>['class'=>'form-control']
            ])
            ->add('descripcion','textarea',[
                'label'=>'Codigo Producto: ',
                'attr'=>['class'=>'form-control']
            ])
            ->add('marca','text',[
                'label'=>'Codigo Producto: ',
                'max_length' => 10,
                'attr'=>['class'=>'form-control']
            ])
            ->add('categoria','choice',[
                'label'=>'Categoria Producto',
                'placeholder'=>'Seleccione Categoria',
                'attr'=>['class'=>'form-control'],
                'choices'  => array(
                    'tecnologia' => 'Tecnologia',
                    'hogar' => 'Hogar',
                    'vehiculo' => 'Vehiculo',
                )
            ])
            ->add('precio','money',[
                'currency'=>'COP',
                'label'=>'Precio Producto: ',
                'max_length' => 10,
                'attr'=>['class'=>'form-control']
            ])
        ;
    }
    
    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'TestBundle\Entity\Product',
            'attr'=>['class'=>'form-horizontal']
        ));
    }
}
