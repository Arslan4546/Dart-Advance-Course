class Car {
  double size = 0;
}

mixin Roof {
  double roofSize = 45;
}

mixin Tire {
  double TireSize = 67;
}

class Vehicle extends Car with Roof, Tire {}


 // mixin bhi ik trah sy inheritancce ka kam kar rhi hai but humm iss ko inheritanc ni khy skty mixin he khty hian 
// mixin Class sy humm ik class ki properties dosri class mai access kr skty hian 
// mixin class ko koi constructor ni hota or na he humm use krty hain or iss ka object create hota hia or iss ko extends bhi ni kr skty just with keywords  sy humm dosri class mai iss ki properties ko access kr skty hain
// mixin class ki wja sy humm mixin ka bhi use krty hain
 // humm iss mai implements ka bhi use kr skty hain but uss mai humm ko tmama methds or varable ko dobara use krtna prta iss lyee mixin best approach hai iss ki 

