clc, clearvars, close all;
format short;

arc1 = 'p.Cr';
arc2 = ' = ArcCtrEdge(0,0,';
l1 = 'p.Ln';
l2 = ' = Line(';
a2 = ', ';
a5 = ');';

for i = 1:4
    teta = 90*pi/180;
    tt = 30*pi/180;
    R = 3;
    
    l = R*(teta/3);
    
    p0 = [R*cos((i-1)*teta),R*sin((i-1)*teta)];
    p1 = [R*cos(tt + (i-1)*teta),R*sin(tt + (i-1)*teta)];
    p2 = [(R+l)*cos(tt + (i-1)*teta),(R+l)*sin(tt + (i-1)*teta)];
    p3 = [(R+l)*cos(2*(tt) + (i-1)*teta),(R+l)*sin(2*(tt) + (i-1)*teta)];
    p4 = [R*cos(2*(tt) + (i-1)*teta),R*sin(2*(tt) + (i-1)*teta)];
    p5 = [R*cos(3*(tt) + (i-1)*teta),R*sin(3*(tt) + (i-1)*teta)];
    
    nome1 = strcat(arc1,num2str(i + (i-1)*4),arc2,num2str(p0(1,1)),a2,num2str(p0(1,2)),a2,num2str(p1(1,1)),a2,num2str(p1(1,2)),a5);
    nome2 = strcat(l1,num2str(i*2 + (i-1)*3),l2,num2str(p1(1,1)),a2,num2str(p1(1,2)),a2,num2str(p2(1,1)),a2,num2str(p2(1,2)),a5);
    nome3 = strcat(arc1,num2str(i*3 + (i-1)*2),arc2,num2str(p2(1,1)),a2,num2str(p2(1,2)),a2,num2str(p3(1,1)),a2,num2str(p3(1,2)),a5);
    nome4 = strcat(l1,num2str(i*4 + (i-1)*1),l2,num2str(p3(1,1)),a2,num2str(p3(1,2)),a2,num2str(p4(1,1)),a2,num2str(p4(1,2)),a5);
    nome5 = strcat(arc1,num2str(i*5),arc2,num2str(p4(1,1)),a2,num2str(p4(1,2)),a2,num2str(p5(1,1)),a2,num2str(p5(1,2)),a5);
    
    t1 = size(nome1);
    t1b = t1(1,2);
    t2 = size(nome2);
    t2b = t2(1,2);
    t3 = size(nome3);
    t3b = t3(1,2);
    t4 = size(nome4);
    t4b = t4(1,2);
    t5 = size(nome5);
    t5b = t5(1,2);
    
    results(1 + (i-1)*5,1:t1b)=nome1;
    results(2 + (i-1)*5,1:t2b)=nome2;
    results(3 + (i-1)*5,1:t3b)=nome3;
    results(4 + (i-1)*5,1:t4b)=nome4;
    results(5 + (i-1)*5,1:t5b)=nome5;
end


dlmwrite('1Ger.txt',results,'delimiter','');
edit test.dat


