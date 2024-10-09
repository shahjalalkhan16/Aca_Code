<?php 

interface ANIMAL { 

    public function setName($name); 

    public function setColor($color); 

    public function getName(); 

    public function getColor(); 

} 

  
class CAT implements ANIMAL { 

    private $name; 

    private $color; 

  

    public function setName($name) { 

        $this->name = $name; 

    } 


    public function setColor($color) { 

        $this->color = $color; 

    } 

  

    public function getName() { 

        return $this->name; 

    } 

  

    public function getColor() { 

        return $this->color; 

    } 

} 

  

// Instantiate two CAT objects 

$cat1 = new CAT(); 

$cat1->setName("Persians"); 

$cat1->setColor("White"); 

  

$cat2 = new CAT(); 

$cat2->setName("Himalayan"); 

$cat2->setColor("Brown"); 

  

// Output the names and colors 

echo $cat1->getName() . ", " . $cat1->getColor() . "\n";  // Outputs: Persians, White 

echo $cat2->getName() . ", " . $cat2->getColor();  // Outputs: Himalayan, Brown 

?> 