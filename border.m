a=imread('nature.1.jpg');
b=imread('nature.2.jpg');
 c=imread('nature.3.jpg');
 d=imread('nature.4.jpg');
 

 a=imresize(a,[ 500 800]);
b=imresize(b,[ 500 800]);
c=imresize(c,[ 500 800]);
d=imresize(d,[ 500 800]);

q=imrotate(a,360);
w=imrotate(b,360);
t=imrotate(c,360);
u=imrotate(d,360);


  
[y,x,c]=size(q);
br=uint8(zeros(y,30,c)+255);
br(:,:,2)=0;
 
H=[br q br w br t br u br];

final=(H);
imshow(H);
