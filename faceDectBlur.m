
a=vision.CascadeObjectDetector;
b=imread('D2.jpg');
BB=step(a,b);

for i=1:size(BB,1)
   
    fB=BB(i,:);
    subImage = imcrop(b, fB);
    L = fspecial('disk',10);
    blurred = imfilter(subImage,L);
    b(fB(2):fB(2)+fB(4),fB(1):fB(1)+fB(3),1:end) = blurred; 
  
end
imshow(b);
