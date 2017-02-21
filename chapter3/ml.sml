fun fact (n: int): int = if n=0 then 1 else n*fact(n-1);
val Pi = 3.14159;
fun max x y = if x>y then x else y;

fun largest [] = raise Empty
 | largest [x] = x
 | largest (x::xs) = max x (largest xs);

datatype Yon = kuzey | guney | dogu | bati;

fun aci kuzey = 0.0 | aci guney = 180.0 | aci dogu = 90.0 | aci bati = 270.0;

val twice = fn f => fn x => f(f x);
val addtwo = twice (fn x => x+1);

fun map f [] = []
 | map f (x::y) = (f x) :: map f y;
