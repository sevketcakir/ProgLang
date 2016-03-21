double power(double a, int b){
int i;
double temp = 1.0;
for (i = 1; i <= b; i++) temp *= a;
return temp;
}
//Fonksiyonel paradigmaya uygun olarak yazılacak
//Değişken tanımlama yok
//Atama yok
//Döngü yok
//Özyineleme kullanılabilir
//Non-tail recursive power
double power(double a, int b)
{
	if(b==0) return 1;
	return a*power(a,b-1);
}
//Tail-recursive power
double power(double a, int b, double result)
{
	if(b==0) return result;
	return power(a, b-1, a*result);
}
