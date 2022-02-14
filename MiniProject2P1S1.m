%Part 1 Subsection  1
%w=[0 .1 .8 1.5 2 3 5 7];
w1 = .001:.01:500;

RC=.01;

H=1./(1+j*RC*w1);

%mag=w./sqrt(1+w.^2);

mag = abs(H);
a=angle(H);

%the x axis is frequency aka wumbo
%y axis is H


figure;
plot(w1,a);
title("Frequency vs Transfer Function Angle");
xlabel("Frequency");
ylabel("Angle of Transfer Function");

figure;
plot(w1,mag);
title("Frequency vs Transfer Function Magintude");
xlabel("Frequency");
ylabel("Magnitude of Transfer Function");