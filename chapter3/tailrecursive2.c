int cc(int n){
	int count=0;
	while(n!=1) {
		if(n%2==0) { n=n/2; count++;	}
		else  { n=3*n+1; count++; }
	}
	return count; }
//Non-tail recursive cc
int cc(int n)
{
	if(n==1) return 0;
	else if(n%2==0) return 1+cc(n/2);
	else return 1+cc(3*n+1);
}
//Tail recursive cc
int cc(int n, int result)
{
	if(n==1) return result;
	else if(n%2==0) return cc(n/2,1+result);
	else return cc(3*n+1,1+result);
}