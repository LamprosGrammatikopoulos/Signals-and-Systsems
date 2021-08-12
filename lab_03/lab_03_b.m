1.
A=imread('cameraman.tif');
subplot(1,2,1), imshow(A);
h = fspecial('average',3);
B = imfilter(A,h);
subplot(1,2,2), imshow(B);

2.
C=imread('cameraman.tif');
subplot(1,2,1), imshow(C);
table=[1 2 1; 2 4 2; 1 2 1];
table=table*(1/16)
D = imfilter(C,table);
subplot(1,2,2), imshow(D);

3.
E=imread('cameraman.tif');
subplot(1,3,1), imshow(E);
h2 = fspecial('gaussian',9,1.5);
F = imfilter(E,h2);
subplot(1,3,2), imshow(F);
subplot(1,3,3), bar3(h2);

4.
G=imread('moon.tif');
H=im2double(G);
subplot(2,2,1), imshow(H);
h3 = fspecial('laplacian',0);
H2 = imfilter(H,h3);
subplot(2,2,2), imshow(H2);
subplot(2,2,3), imshow(H2,'DisplayRange', []);
S = imsubtract(H,H2);
subplot(2,2,4), imshow(S);