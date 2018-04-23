  A = [10,2,-1;-3,-6,2;1,1,5]
 B = [27,-61.5,-21.5]
 x = [0,0,0]
 xo = [0,0,0]
 for i= 1:3
     x(1)=(-2*x(2) + x(3) +27)/10
     x(2)=(3*x(1) - 2*x(3) - 61.5)/(-6)
     x(3)=(-x(1)-x(2)-21.5)/5
     for i = 1:3
         ea = abs((x(i)-xo(i))/(x(i)))
     end
     xo = x;
 end
     
%%
  A = [10,2,-1;-3,-6,2;1,1,5]
 B = [27,-61.5,-21.5]
 xo = [0,0,0]
 for i= 1:3
     x(1)=(-2*xo(2) + xo(3) +27)/10
     x(2)=(3*xo(1) - 2*xo(3) - 61.5)/(-6)
     x(3)=(-xo(1)-xo(2)-21.5)/5
     for i = 1:3
         ea = abs((x(i)-xo(i))/(x(i)))
     end
     xo = x;
 end
     
 
 %%
clear	all
clc
%	Desired	relative	error	(%)
es=0.0001;
maxit=2;
iter	=	0;
%	initial	guess
x0	= [1.2,1.2]	;
x=x0;
%	create	function	and	Jacobian	matrix	
func	=	@(x)	[-(x(1))^2+(x(1))+.5-(x(2));(x(1))^2-5*(x(1))*(x(2))-(x(2))];
J	=	@(x)[-2*(x(1))+1	,	-1	;	2*(x(1))-5*(x(2))	,	-5*(x(1))-1 ];
for i = 1:3
				dx=  (J(x))\(func(x))  	;
                xo = x
				x=x-dx
				ea= abs((x(1)-xo(1))/(x(1)))
                ea= abs((x(2)-xo(2))/(x(2)))
				
end
disp('- - - - - - - - NR Method	Result	- - - - - - - - -')
x
ea
disp('	- - - - ')

