<?php 

class FactorialClass { 

    public function Fact($number) { 

        if($number < 0) { 

            return "Undefined for negative numbers."; 

        } 

        $factorial = 1; 

        for ($i = 1; $i <= $number; $i++) { 

            $factorial *= $i; 

        } 

        return $factorial; 

    } 

} 


$f = new FactorialClass(); 

echo $f->Fact(5);   // Output: 120 

?> 