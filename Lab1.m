var_1 = 17;
var_2 = 4:10.;
% (2)
% MATLAB returns all variables, including the array with all terms listed
% The colon creates an array from 4 to 10, defaulting to increments of 1
var_2 = 4:2:10;
var_2 = 10:-3:4;
var_2 = 4:4:10;
% For each of these, an array is made starting with the first integer,
% using the second integer as the increment, and listing numbers
% incrementing until the 3rd number is reached.
%
% The first bounding number is always included, but the final bounding
% number is only included if it can be reached in n increments.
a = [1 3 7 ; 2 5 6];
b = [4 7 9 ; 8 1 3 ; 1 1 1];
c = [1-1j 1+1j 3 ; 2-4j 8+3j 6j ; 0 0 7];
% b is the whole array, while b(1,1:2) only shows row 1 and columns 1
% through 2 of the b array.
%
% b(1:3,2:3) shows rows 1 through 3 and columns 2 through 3 of the b array,
% while b(:,1:3) shows all rows and columns 1 through 3 of the b array.

% (3)
disp('i)')
disp(b*c)
disp('ii)')
disp(inv(b)*c)
disp('iii)')
disp(a*b)
disp('iv)')
disp(b+c)
disp('v)')
disp(b*(transpose(a)))
disp('vi)')
disp(a*b(1:3,1:2))
b*b;
b.*b;
b^2;
b.^2;
% b*b and b^2 return the same result, while b.*b and b.^b also return the
% same result. Those first two mentioned are matrix operations, while the
% second two are element-by-element operations

% ------------------- PART 3 -------------------
load Lab1_data.mat
who -file Lab1_data.mat
whos -file Lab1_data.mat
% I used the 'who' command to display the file variables, and 'whos' to
% display the file variables' sizes

% ------------------- PART 4 -------------------
xx = linspace(-5,5,400);
fx1 = sin(3*pi*xx).*exp(-xx.^2);
fx2 = zeros(size(xx));
for ii=1:length(xx)
    if abs(fx1(ii))<0.5
        fx2(ii) = fx1(ii);
    elseif fx1(ii)>0.5
        fx2(ii)=0.5;
    elseif fx1(ii)<0.5
        fx2(ii) = -0.5;
    end
end
ii = 1;
while ii < 401
    if fx1(ii) > fx2(ii)
        xx(ii);
        break
    end
    ii = ii + 1;
end
% The first value of xx where fx1 is greater than fx2 is -0.5639
figure(1)
plot(xx,fx1,'b',xx,fx2,'r')
xlabel('x')
ylabel('f(x)')
legend('fx1','fx2')
print('-djpeg','fxplot')

% Assignment says "Make three separate images," but this is very unclear as
% to what to make images of, so I just demonstrated that I know how to use
% these commands effectively
figure(2)
imagesc(vx,vy,f0)
colorbar
print('-djpeg','vxplot')
figure(3)
waterfall(vx,vy,f0)
colorbar
print('-djpeg','vyplot')
figure(4)
surf(vx,vy,f0)
colorbar
print('-djpeg','f0plot')

figure(5)
v = VideoWriter('video.mp4','MPEG-4');
open(v)
for j=1:100
    plot3(xpos(j,:), ypos(j,:), zpos(j,:),'r.');
    grid on;
    axis([0 4e-7 0 4e-7 0 1e-7])
    xlabel('X-axis (m)');
    ylabel('Y-axis (m)');
    zlabel('Z-axis (m)');
    pause(0.1);
    frame = getframe;
    writeVideo(v,frame);
end
close(v)