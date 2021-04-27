a=imread('nature.2.jpg');
a=im2double(a);
z1 = [-1 1 1]; % 1st filter
z2 = [ -2 1 4]; % 2nd filter
t = imfilter(a,z1,'full'); % result after 1 filter
B = imfilter(t,z2,'full'); % result after 2 filter
H = conv2(z1,z2,'full'); % convolve the two filters
d = imfilter(a,H,'full'); % result after convolved filter

subplot(1,2,1); imshow(a);
subplot(1,2,2); imshow(d);