<?php

namespace TestBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * Product
 *
 * @ORM\Table(name="product", uniqueConstraints={@ORM\UniqueConstraint(name="codigo_UNIQUE", columns={"codigo"}), @ORM\UniqueConstraint(name="nombre_UNIQUE", columns={"nombre"})})
 * @ORM\Entity
 */
class Product
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="codigo", type="string", length=10, nullable=false)
     * @Assert\Length(
     *      min = 4,
     *      max = 10,
     *      minMessage = "El código debe tener minimo {{ limit }} caracteres",
     *      maxMessage = "El código debe tener máximo {{ limit }} caracteres"
     * )
     */
    private $codigo;

    /**
     * @var string
     *
     * @ORM\Column(name="nombre", type="string", length=255, nullable=false)
     * @Assert\Length(
     *      min = 4,
     *      minMessage = "El Nombre debe tener minimo {{ limit }} caracteres"
     * )
     */
    private $nombre;

    /**
     * @var string
     *
     * @ORM\Column(name="descripcion", type="text", length=16777215, nullable=false)
     */
    private $descripcion;

    /**
     * @var string
     *
     * @ORM\Column(name="marca", type="string", length=45, nullable=false)
     */
    private $marca;

    /**
     * @var string
     *
     * @ORM\Column(name="categoria", type="string", length=45, nullable=false)
     */
    private $categoria;

    /**
     * @var float
     *
     * @ORM\Column(name="precio", type="float", precision=10, scale=2, nullable=false)
     *  @Assert\Range(
     *      min = 1,
     *      max = 99999999,
     *      minMessage = "El precio debe ser mayor a {{ limit }}",
     *      maxMessage = "El precio debe ser menor a {{ limit }}"
     * )
     */
    private $precio;



    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set codigo
     *
     * @param string $codigo
     * @return Product
     */
    public function setCodigo($codigo)
    {
        $this->codigo = $codigo;

        return $this;
    }

    /**
     * Get codigo
     *
     * @return string 
     */
    public function getCodigo()
    {
        return $this->codigo;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return Product
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string 
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     * @return Product
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string 
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Set marca
     *
     * @param string $marca
     * @return Product
     */
    public function setMarca($marca)
    {
        $this->marca = $marca;

        return $this;
    }

    /**
     * Get marca
     *
     * @return string 
     */
    public function getMarca()
    {
        return $this->marca;
    }

    /**
     * Set categoria
     *
     * @param string $categoria
     * @return Product
     */
    public function setCategoria($categoria)
    {
        $this->categoria = $categoria;

        return $this;
    }

    /**
     * Get categoria
     *
     * @return string 
     */
    public function getCategoria()
    {
        return $this->categoria;
    }

    /**
     * Set precio
     *
     * @param float $precio
     * @return Product
     */
    public function setPrecio($precio)
    {
        $this->precio = $precio;

        return $this;
    }

    /**
     * Get precio
     *
     * @return float 
     */
    public function getPrecio()
    {
        return $this->precio;
    }
}
