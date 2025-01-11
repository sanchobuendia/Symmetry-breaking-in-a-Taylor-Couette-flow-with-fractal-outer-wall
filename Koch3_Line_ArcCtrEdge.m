clc, clearvars, close all;
format short;

arc1 = 'p.Cr';
arc2 = ' = ArcCtrEdge(0,0,';
lt1 = 'p.Ln';
lt2 = ' = Line(';
a2 = ', ';
a5 = ');';

teta = 90*pi/180;
tt = 30*pi/180;
tt2 = (30*pi/180)/3;
tt3 = ((30*pi/180)/3)/3;
R = 3;
p0 = [R,0];
for i = 1:4
    l = R*(teta/3) 
    l2 = R*(teta/9);
    l3 = R*(teta/27)
    
    Raio = R + l + l2 + l3
    
    p0 = [R*cos((i-1)*teta),R*sin((i-1)*teta)];
    p1 = [R*cos(tt3 + (i-1)*teta),R*sin(tt3 + (i-1)*teta)];
    p2 = [(R+l3)*cos(tt3 + (i-1)*teta),(R+l3)*sin(tt3 + (i-1)*teta)];
    p3 = [(R+l3)*cos(2*(tt3) + (i-1)*teta),(R+l3)*sin(2*(tt3) + (i-1)*teta)];
    p4 = [R*cos(2*(tt3) + (i-1)*teta),R*sin(2*(tt3) + (i-1)*teta)];
    p5 = [R*cos(tt2 + (i-1)*teta),R*sin(tt2 + (i-1)*teta)];
    p6 = [(R+l3)*cos(3*(tt3) + (i-1)*teta),(R+l3)*sin(3*(tt3) + (i-1)*teta)];
    p7 = [(R+l3+0.001)*cos((3*(tt3) - tt3) + (i-1)*teta),(R+l3+0.001)*sin((3*(tt3) - tt3) + (i-1)*teta)];
    p8 = [(R+2*l3)*cos((3*(tt3) - tt3) + (i-1)*teta),(R+2*l3)*sin((3*(tt3) - tt3) + (i-1)*teta)];
    p9 = [(R+2*l3)*cos(3*(tt3) + (i-1)*teta),(R+2*l3)*sin(3*(tt3) + (i-1)*teta)];
    p10 = [(R+l2)*cos(tt2 + (i-1)*teta),(R+l2)*sin(tt2 + (i-1)*teta)];
    p11 = [(R+l2)*cos(tt2 + tt3 + (i-1)*teta),(R+l2)*sin(tt2 + tt3 + (i-1)*teta)];
    p12 = [(R+l2+l3)*cos(tt2 + tt3 + (i-1)*teta),(R+l2+l3)*sin(tt2 + tt3 + (i-1)*teta)];
    p13 = [(R+l2+l3)*cos(tt2 + 2*(tt3) + (i-1)*teta),(R+l2+l3)*sin(tt2 + 2*(tt3) + (i-1)*teta)];
    p14 = [(R+l2)*cos(tt2 + 2*(tt3) + (i-1)*teta),(R+l2)*sin(tt2 + 2*(tt3) + (i-1)*teta)];
    p15 = [(R+l2)*cos(2*(tt2) + (i-1)*teta),(R+l2)*sin(2*(tt2) + (i-1)*teta)];
    p16 = [(R+2*l3)*cos(2*(tt2) + (i-1)*teta),(R+2*l3)*sin(2*(tt2) + (i-1)*teta)];
    
    p17 = [(R+2*l3-0.001)*cos((2*(tt2) + tt3) + (i-1)*teta),(R+2*l3-0.001)*sin((2*(tt2) + tt3) + (i-1)*teta)];
    p18 = [(R+l3+0.001)*cos((2*(tt2) + tt3) + (i-1)*teta),(R+l3+0.001)*sin((2*(tt2) + tt3) + (i-1)*teta)];
    p19 = [(R+l3)*cos(2*(tt2) + (i-1)*teta),(R+l3)*sin(2*(tt2) + (i-1)*teta)];
    p20 = [R*cos(2*(tt2) + (i-1)*teta),R*sin(2*(tt2) + (i-1)*teta)];

    p21 = [R*cos(2*(tt2)+tt3 + (i-1)*teta),R*sin(2*(tt2)+tt3 + (i-1)*teta)]; 
    p22 = [(R+l3)*cos(2*(tt2)+tt3 + (i-1)*teta),(R+l3)*sin(2*(tt2)+tt3 + (i-1)*teta)];
    p23 = [(R+l3)*cos(2*(tt2)+2*(tt3) + (i-1)*teta),(R+l3)*sin(2*(tt2)+2*(tt3) + (i-1)*teta)];
    p24 = [R*cos(2*(tt2)+2*(tt3) + (i-1)*teta),R*sin(2*(tt2)+2*(tt3) + (i-1)*teta)];
    p25 = [R*cos(3*(tt2) + (i-1)*teta),R*sin(3*(tt2) + (i-1)*teta)];
    
    p26 = [(R+l3)*cos(3*(tt2) + (i-1)*teta),(R+l3)*sin(3*(tt2) + (i-1)*teta)];
    p27 = [(R+l3+0.001)*cos((3*(tt2) - tt3) + (i-1)*teta),(R+l3+0.001)*sin((3*(tt2) - tt3) + (i-1)*teta)];
    p28 = [(R+2*l3-0.001)*cos((3*(tt2) - tt3) + (i-1)*teta),(R+2*l3-0.001)*sin((3*(tt2) - tt3) + (i-1)*teta)];
    p29 = [(R+2*l3)*cos(3*(tt2) + (i-1)*teta),(R+2*l3)*sin(3*(tt2) + (i-1)*teta)];
    
    p30 = [(R+l2)*cos(3*(tt2) + (i-1)*teta),(R+l2)*sin(3*(tt2) + (i-1)*teta)];
    p31 = [(R+l2)*cos(3*(tt2)-tt3 + (i-1)*teta),(R+l2)*sin(3*(tt2)-tt3 + (i-1)*teta)];
    p32 = [(R+l2-l3)*cos(3*(tt2)-tt3 + (i-1)*teta),(R+l2-l3)*sin(3*(tt2)-tt3 + (i-1)*teta)];
    
    p33 = [(R+l2-l3)*cos(3*(tt2)-2*(tt3) + (i-1)*teta),(R+l2-l3)*sin(3*(tt2)-2*(tt3) + (i-1)*teta)];
    p34 = [(R+l2)*cos(3*(tt2)-2*(tt3) + (i-1)*teta),(R+l2)*sin(3*(tt2)-2*(tt3) + (i-1)*teta)];
    p35 = [(R+l2+0.001)*cos((3*(tt2) - tt2) + (i-1)*teta),(R+l2+0.001)*sin((3*(tt2) - tt2) + (i-1)*teta)];

    p36 = [(R+l2+l3)*cos((3*(tt2) - tt2) + (i-1)*teta),(R+l2+l3)*sin((3*(tt2) - tt2) + (i-1)*teta)];
    p37 = [(R+l2+l3+0.001)*cos((3*(tt2) - tt2) - tt3 + (i-1)*teta),(R+l2+l3+0.001)*sin((3*(tt2) - tt2) - tt3 + (i-1)*teta)];
    p38 = [(R+l2+2*l3+0.001)*cos((3*(tt2) - tt2) - tt3 + (i-1)*teta),(R+l2+2*l3+0.001)*sin((3*(tt2) - tt2) - tt3 + (i-1)*teta)];
    p39 = [(R+l2+2*l3)*cos((3*(tt2) - tt2) + (i-1)*teta),(R+l2+2*l3)*sin((3*(tt2) - tt2) + (i-1)*teta)];
    p40 = [(R+2*l2)*cos((3*(tt2) - tt2) + (i-1)*teta),(R+2*l2)*sin((3*(tt2) - tt2) + (i-1)*teta)];
    
    p41 = [(R+2*l2)*cos((2*(tt2) + tt3) + (i-1)*teta),(R+2*l2)*sin((2*(tt2) + tt3) + (i-1)*teta)];
    p42 = [(R+2*l2+l3)*cos((2*(tt2) + tt3) + (i-1)*teta),(R+2*l2+l3)*sin((2*(tt2) + tt3) + (i-1)*teta)];
    p43 = [(R+2*l2+l3-0.001)*cos((2*(tt2) + 2*tt3) + (i-1)*teta),(R+2*l2+l3-0.001)*sin((2*(tt2) + 2*tt3) + (i-1)*teta)];
    p44 = [(R+2*l2)*cos((2*(tt2) + 2*tt3) + (i-1)*teta),(R+2*l2)*sin((2*(tt2) + 2*tt3) + (i-1)*teta)];
    
    p45 = [(R+2*l2)*cos(3*(tt2) + (i-1)*teta),(R+2*l2)*sin(3*(tt2) + (i-1)*teta)];

    p46 = [(R+2*l2+l3)*cos(3*(tt2) + (i-1)*teta),(R+2*l2+l3)*sin(3*(tt2) + (i-1)*teta)];
    p47 = [(R+2*l2+l3)*cos((3*(tt2) - tt3) + (i-1)*teta),(R+2*l2+l3)*sin((3*(tt2) - tt3) + (i-1)*teta)];
    p48 = [(R+2*l2+2*l3)*cos(3*(tt2) - tt3 + (i-1)*teta),(R+2*l2+2*l3)*sin(3*(tt2) - tt3 + (i-1)*teta)];
    p49 = [(R+2*l2+2*l3)*cos(3*(tt2) + (i-1)*teta),(R+2*l2+2*l3)*sin(3*(tt2) + (i-1)*teta)];
    
    p50 = [(R+3*l2)*cos(3*(tt2) + (i-1)*teta),(R+3*l2)*sin(3*(tt2) + (i-1)*teta)];
    
    p51 = [(R+3*l2)*cos((3*(tt2) + tt3) + (i-1)*teta),(R+3*l2)*sin((3*(tt2) + tt3) + (i-1)*teta)];
    p52 = [(R+3*l2+l3)*cos((3*(tt2) + tt3) + (i-1)*teta),(R+3*l2+l3)*sin((3*(tt2) + tt3) + (i-1)*teta)];
    p53 = [(R+3*l2+l3-0.001)*cos((3*(tt2) + 2*tt3) + (i-1)*teta),(R+3*l2+l3-0.001)*sin((3*(tt2) + 2*tt3) + (i-1)*teta)];
    p54 = [(R+3*l2)*cos((3*(tt2) + 2*tt3) + (i-1)*teta),(R+3*l2)*sin((3*(tt2) + 2*tt3) + (i-1)*teta)];
   
    p55 = [(R+l)*cos(4*(tt2) + (i-1)*teta),(R+l)*sin(4*(tt2) + (i-1)*teta)];
    
    p56 = [(R+3*l2+l3)*cos(4*(tt2) + (i-1)*teta),(R+3*l2+l3)*sin(4*(tt2) + (i-1)*teta)];
    p57 = [(R+3*l2+l3)*cos((4*(tt2) - tt3) + (i-1)*teta),(R+3*l2+l3)*sin((4*(tt2) - tt3) + (i-1)*teta)];
    p58 = [(R+3*l2+2*l3)*cos(4*(tt2) - tt3 + (i-1)*teta),(R+3*l2+2*l3)*sin(4*(tt2) - tt3 + (i-1)*teta)];
    p59 = [(R+3*l2+2*l3)*cos(4*(tt2) + (i-1)*teta),(R+3*l2+2*l3)*sin(4*(tt2) + (i-1)*teta)];
    
    p60 = [(R+l+l2)*cos(4*(tt2) + (i-1)*teta),(R+l+l2)*sin(4*(tt2) + (i-1)*teta)];
    
    p61 = [(R+l+l2)*cos(4*(tt2) + tt3 + (i-1)*teta),(R+l+l2)*sin(4*(tt2) + tt3 + (i-1)*teta)];
    p62 = [(R+l+l2+l3)*cos(4*(tt2) + tt3 + (i-1)*teta),(R+l+l2+l3)*sin(4*(tt2) + tt3 + (i-1)*teta)];
    p63 = [(R+l+l2+l3)*cos(4*(tt2) + 2*tt3 + (i-1)*teta),(R+l+l2+l3)*sin(4*(tt2) + 2*tt3 + (i-1)*teta)];
    p64 = [(R+l+l2)*cos(4*(tt2) + 2*tt3 + (i-1)*teta),(R+l+l2)*sin(4*(tt2) + 2*tt3 + (i-1)*teta)];
    
    p65 = [(R+l+l2)*cos(5*(tt2) + (i-1)*teta),(R+l+l2)*sin(5*(tt2) + (i-1)*teta)];
    
    p66 = [(R+l+l2-l3)*cos(5*(tt2) + (i-1)*teta),(R+l+l2-l3)*sin(5*(tt2) + (i-1)*teta)];
    p67 = [(R+l+l2-l3)*cos(5*(tt2) + tt3 + (i-1)*teta),(R+l+l2-l3)*sin(5*(tt2) + tt3 + (i-1)*teta)];
    p68 = [(R+l+l2-2*l3+0.001)*cos(5*(tt2) + tt3 + (i-1)*teta),(R+l+l2-2*l3)*sin(5*(tt2) + tt3 + (i-1)*teta)];
    p69 = [(R+l+l2-2*l3+0.001)*cos(5*(tt2) + (i-1)*teta),(R+l+l2-2*l3)*sin(5*(tt2) + (i-1)*teta)];
    p70 = [(R+l)*cos(5*(tt2) + (i-1)*teta),(R+l)*sin(5*(tt2) + (i-1)*teta)];

    p71 = [(R+l)*cos(5*(tt2) + tt3 + (i-1)*teta),(R+l)*sin(5*(tt2) + tt3 + (i-1)*teta)];
    p72 = [(R+l+l3)*cos(5*(tt2) + tt3 + (i-1)*teta),(R+l+l3)*sin(5*(tt2) + tt3 + (i-1)*teta)];
    p73 = [(R+l+l3)*cos(5*(tt2) + 2*tt3 + (i-1)*teta),(R+l+l3)*sin(5*(tt2) + 2*tt3 + (i-1)*teta)];
    p74 = [(R+l)*cos(5*(tt2) + 2*tt3 + (i-1)*teta),(R+l)*sin(5*(tt2) + 2*tt3 + (i-1)*teta)];
    p75 = [(R+l)*cos(6*(tt2) + (i-1)*teta),(R+l)*sin(6*(tt2) + (i-1)*teta)];
    
    p76 = [(R+l-l3+0.001)*cos(6*(tt2) + (i-1)*teta),(R+l-l3)*sin(6*(tt2) + (i-1)*teta)];
    p77 = [(R+l-l3+0.001)*cos(6*(tt2) + tt3 + (i-1)*teta),(R+l-l3)*sin(6*(tt2) + tt3 + (i-1)*teta)];
    p78 = [(R+l-2*l3+0.001)*cos(6*(tt2) + tt3 + (i-1)*teta),(R+l-2*l3)*sin(6*(tt2) + tt3 + (i-1)*teta)];
    p79 = [(R+l-2*l3)*cos(6*(tt2) + (i-1)*teta),(R+l-2*l3)*sin(6*(tt2) + (i-1)*teta)];

    p80 = [(R+2*l2)*cos(6*(tt2) + (i-1)*teta),(R+2*l2)*sin(6*(tt2) + (i-1)*teta)];
    
    p81 = [(R+2*l2)*cos(6*(tt2) + tt3 + (i-1)*teta),(R+2*l2)*sin(6*(tt2) + tt3 + (i-1)*teta)];
    p82 = [(R+2*l2+l3)*cos(6*(tt2) + tt3 + (i-1)*teta),(R+2*l2+l3)*sin(6*(tt2) + tt3 + (i-1)*teta)];
    p83 = [(R+2*l2+l3)*cos(6*(tt2) + 2*tt3 + (i-1)*teta),(R+2*l2+l3)*sin(6*(tt2) + 2*tt3 + (i-1)*teta)];
    p84 = [(R+2*l2)*cos(6*(tt2) + 2*tt3 + (i-1)*teta),(R+2*l2)*sin(6*(tt2) + 2*tt3 + (i-1)*teta)];

    
    p85 = [(R+2*l2)*cos((6*(tt2) + tt2) + (i-1)*teta),(R+2*l2)*sin((6*(tt2) + tt2) + (i-1)*teta)];
     
    p86 = [(R+2*l2-l3)*cos((6*(tt2) + tt2) + (i-1)*teta),(R+2*l2-l3)*sin((6*(tt2) + tt2) + (i-1)*teta)];
    p87 = [(R+2*l2-l3+0.001)*cos((6*(tt2) + tt3 + tt2) + (i-1)*teta),(R+2*l2-l3)*sin((6*(tt2) + tt3 + tt2) + (i-1)*teta)];
    p88 = [(R+2*l2-2*l3+0.001)*cos((6*(tt2) + tt3 + tt2) + (i-1)*teta),(R+2*l2-2*l3+0.001)*sin((6*(tt2) + tt3 + tt2) + (i-1)*teta)];
    p89 = [(R+2*l2-2*l3)*cos((6*(tt2) + tt2) + (i-1)*teta),(R+2*l2-2*l3)*sin((6*(tt2) + tt2) + (i-1)*teta)];
     
    p90 = [(R+l2+0.001)*cos((6*(tt2) + tt2) + (i-1)*teta),(R+l2+0.001)*sin((6*(tt2) + tt2) + (i-1)*teta)];
    p91 = [(R+l2)*cos((6*(tt2) + tt2 - tt3) + (i-1)*teta),(R+l2)*sin((6*(tt2) + tt2 - tt3) + (i-1)*teta)];
    
    p92 = [(R+l2-l3+0.001)*cos((6*(tt2) + tt2 - tt3) + (i-1)*teta),(R+l2-l3+0.001)*sin((6*(tt2) + tt2 - tt3) + (i-1)*teta)];
    p93 = [(R+l2-l3)*cos((6*(tt2) + tt2 - 2*tt3) + (i-1)*teta),(R+l2-l3)*sin((6*(tt2) + tt2 - 2*tt3) + (i-1)*teta)];
    p94 = [(R+l2)*cos((6*(tt2) + tt2 - 2*tt3) + (i-1)*teta),(R+l2)*sin((6*(tt2) + tt2 - 2*tt3) + (i-1)*teta)];

    p95 = [(R+l2)*cos(6*(tt2) + (i-1)*teta),(R+l2)*sin(6*(tt2) + (i-1)*teta)];
    p96 = [(R+l2-l3)*cos(6*(tt2) + (i-1)*teta),(R+l2-l3)*sin(6*(tt2) + (i-1)*teta)];
    p97 = [(R+l2-l3-0.001)*cos(6*(tt2) + tt3 + (i-1)*teta),(R+l2-l3-0.001)*sin(6*(tt2) + tt3 + (i-1)*teta)];
    p98 = [(R+l2-2*l3+0.001)*cos(6*(tt2) + tt3 + (i-1)*teta),(R+l2-2*l3+0.001)*sin(6*(tt2) + tt3 + (i-1)*teta)];
    p99 = [(R+l2-2*l3)*cos(6*(tt2) + (i-1)*teta),(R+l2-2*l3)*sin(6*(tt2) + (i-1)*teta)];
    
    p100 = [(R)*cos(6*(tt2) + (i-1)*teta),(R)*sin(6*(tt2) + (i-1)*teta)]; 
    
    p101 = [(R)*cos(6*(tt2) + tt3 + (i-1)*teta),(R)*sin(6*(tt2) + tt3 + (i-1)*teta)];
    p102 = [(R+l3)*cos(6*(tt2) + tt3 + (i-1)*teta),(R+l3)*sin(6*(tt2) + tt3 + (i-1)*teta)];
    p103 = [(R+l3-0.001)*cos(6*(tt2) + 2*tt3 + (i-1)*teta),(R+l3-0.001)*sin(6*(tt2) + 2*tt3 + (i-1)*teta)];
    p104 = [(R)*cos(6*(tt2) + 2*tt3 + (i-1)*teta),(R)*sin(6*(tt2) + 2*tt3 + (i-1)*teta)];
    
    p105 = [(R)*cos(7*(tt2) + (i-1)*teta),(R)*sin(7*(tt2) + (i-1)*teta)];
    p106 = [(R+l3)*cos(7*(tt2) + (i-1)*teta),(R+l3)*sin(7*(tt2) + (i-1)*teta)];
    p107 = [(R+l3)*cos(7*(tt2) - tt3 + (i-1)*teta),(R+l3)*sin(7*(tt2) - tt3 + (i-1)*teta)];
    p108 = [(R+2*l3)*cos(7*(tt2) - tt3 + (i-1)*teta),(R+2*l3)*sin(7*(tt2) - tt3 + (i-1)*teta)];
    p109 = [(R+2*l3)*cos(7*(tt2) + (i-1)*teta),(R+2*l3)*sin(7*(tt2) + (i-1)*teta)];
    
    p110 = [(R+l2)*cos(7*tt2 + (i-1)*teta),(R+l2)*sin(7*tt2 + (i-1)*teta)];
    
    p111 = [(R+l2)*cos(7*tt2 + tt3 + (i-1)*teta),(R+l2)*sin(7*tt2 + tt3 + (i-1)*teta)];
    p112 = [(R+l2+l3)*cos(7*tt2 + tt3 + (i-1)*teta),(R+l2+l3)*sin(7*tt2 + tt3 + (i-1)*teta)];
    p113 = [(R+l2+l3)*cos(7*tt2 + 2*tt3 + (i-1)*teta),(R+l2+l3)*sin(7*tt2 + 2*tt3 + (i-1)*teta)];
    p114 = [(R+l2)*cos(7*tt2 + 2*tt3 + (i-1)*teta),(R+l2)*sin(7*tt2 + 2*tt3 + (i-1)*teta)];
    
    
    p115 = [(R+l2)*cos(8*tt2 + (i-1)*teta),(R+l2)*sin(8*tt2 + (i-1)*teta)];
    
    p116 = [(R+l2-l3)*cos(8*tt2 + (i-1)*teta),(R+l2-l3)*sin(8*tt2 + (i-1)*teta)];
    p117 = [(R+l2-l3)*cos(8*tt2 + tt3 + (i-1)*teta),(R+l2-l3)*sin(8*tt2 + tt3 + (i-1)*teta)];
    p118 = [(R+l2-2*l3+0.001)*cos(8*tt2 + tt3 + (i-1)*teta),(R+l2-2*l3+0.001)*sin(8*tt2 + tt3 + (i-1)*teta)];
    p119 = [(R+l2-2*l3)*cos(8*tt2 + (i-1)*teta),(R+l2-2*l3)*sin(8*tt2 + (i-1)*teta)];
    
    p120 = [(R)*cos(8*tt2 + (i-1)*teta),(R)*sin(8*tt2 + (i-1)*teta)];
    
    p121 = [(R)*cos(8*tt2 + tt3 + (i-1)*teta),(R)*sin(8*tt2 + tt3 + (i-1)*teta)];
    p122 = [(R+l3)*cos(8*tt2 + tt3 + (i-1)*teta),(R+l3)*sin(8*tt2 + tt3 + (i-1)*teta)];
    p123 = [(R+l3)*cos(8*tt2 + 2*tt3 + (i-1)*teta),(R+l3)*sin(8*tt2 + 2*tt3 + (i-1)*teta)];
    p124 = [(R)*cos(8*tt2 + 2*tt3 + (i-1)*teta),(R)*sin(8*tt2 + 2*tt3 + (i-1)*teta)];
    
    p125 = [(R)*cos(9*tt2 + (i-1)*teta),(R)*sin(9*tt2 + (i-1)*teta)];
    
    
    
    nome1 = strcat(lt1,num2str(i + (i-1)*124),lt2,num2str(p0(1,1)),a2,num2str(p0(1,2)),a2,num2str(p1(1,1)),a2,num2str(p1(1,2)),a5);
    nome2 = strcat(lt1,num2str(i*2 + (i-1)*123),lt2,num2str(p1(1,1)),a2,num2str(p1(1,2)),a2,num2str(p2(1,1)),a2,num2str(p2(1,2)),a5);
    nome3 = strcat(lt1,num2str(i*3 + (i-1)*122),lt2,num2str(p2(1,1)),a2,num2str(p2(1,2)),a2,num2str(p3(1,1)),a2,num2str(p3(1,2)),a5);
    nome4 = strcat(lt1,num2str(i*4 + (i-1)*121),lt2,num2str(p3(1,1)),a2,num2str(p3(1,2)),a2,num2str(p4(1,1)),a2,num2str(p4(1,2)),a5);
    nome5 = strcat(lt1,num2str(i*5 + (i-1)*120),lt2,num2str(p4(1,1)),a2,num2str(p4(1,2)),a2,num2str(p5(1,1)),a2,num2str(p5(1,2)),a5);
    nome6 = strcat(lt1,num2str(i*6 + (i-1)*119),lt2,num2str(p5(1,1)),a2,num2str(p5(1,2)),a2,num2str(p6(1,1)),a2,num2str(p6(1,2)),a5);
    nome7 = strcat(lt1,num2str(i*7 + (i-1)*118),lt2,num2str(p6(1,1)),a2,num2str(p6(1,2)),a2,num2str(p7(1,1)),a2,num2str(p7(1,2)),a5);
    nome8 = strcat(lt1,num2str(i*8 + (i-1)*117),lt2,num2str(p7(1,1)),a2,num2str(p7(1,2)),a2,num2str(p8(1,1)),a2,num2str(p8(1,2)),a5);
    nome9 = strcat(lt1,num2str(i*9 + (i-1)*116),lt2,num2str(p8(1,1)),a2,num2str(p8(1,2)),a2,num2str(p9(1,1)),a2,num2str(p9(1,2)),a5);
    nome10 = strcat(lt1,num2str(i*10 + (i-1)*115),lt2,num2str(p9(1,1)),a2,num2str(p9(1,2)),a2,num2str(p10(1,1)),a2,num2str(p10(1,2)),a5);
    nome11 = strcat(lt1,num2str(i*11 + (i-1)*114),lt2,num2str(p10(1,1)),a2,num2str(p10(1,2)),a2,num2str(p11(1,1)),a2,num2str(p11(1,2)),a5);
    nome12 = strcat(lt1,num2str(i*12 + (i-1)*113),lt2,num2str(p11(1,1)),a2,num2str(p11(1,2)),a2,num2str(p12(1,1)),a2,num2str(p12(1,2)),a5);
    nome13 = strcat(lt1,num2str(i*13 + (i-1)*112),lt2,num2str(p12(1,1)),a2,num2str(p12(1,2)),a2,num2str(p13(1,1)),a2,num2str(p13(1,2)),a5);
    nome14 = strcat(lt1,num2str(i*14 + (i-1)*111),lt2,num2str(p13(1,1)),a2,num2str(p13(1,2)),a2,num2str(p14(1,1)),a2,num2str(p14(1,2)),a5);
    nome15 = strcat(lt1,num2str(i*15 + (i-1)*110),lt2,num2str(p14(1,1)),a2,num2str(p14(1,2)),a2,num2str(p15(1,1)),a2,num2str(p15(1,2)),a5);
    nome16 = strcat(lt1,num2str(i*16 + (i-1)*109),lt2,num2str(p15(1,1)),a2,num2str(p15(1,2)),a2,num2str(p16(1,1)),a2,num2str(p16(1,2)),a5);
    nome17 = strcat(lt1,num2str(i*17 + (i-1)*108),lt2,num2str(p16(1,1)),a2,num2str(p16(1,2)),a2,num2str(p17(1,1)),a2,num2str(p17(1,2)),a5);
    nome18 = strcat(lt1,num2str(i*18 + (i-1)*107),lt2,num2str(p17(1,1)),a2,num2str(p17(1,2)),a2,num2str(p18(1,1)),a2,num2str(p18(1,2)),a5);
    nome19 = strcat(lt1,num2str(i*19 + (i-1)*106),lt2,num2str(p18(1,1)),a2,num2str(p18(1,2)),a2,num2str(p19(1,1)),a2,num2str(p19(1,2)),a5);
    nome20 = strcat(lt1,num2str(i*20 + (i-1)*105),lt2,num2str(p19(1,1)),a2,num2str(p19(1,2)),a2,num2str(p20(1,1)),a2,num2str(p20(1,2)),a5);
    nome21 = strcat(lt1,num2str(i*21 + (i-1)*104),lt2,num2str(p20(1,1)),a2,num2str(p20(1,2)),a2,num2str(p21(1,1)),a2,num2str(p21(1,2)),a5);
    nome22 = strcat(lt1,num2str(i*22 + (i-1)*103),lt2,num2str(p21(1,1)),a2,num2str(p21(1,2)),a2,num2str(p22(1,1)),a2,num2str(p22(1,2)),a5);
    nome23 = strcat(lt1,num2str(i*23 + (i-1)*102),lt2,num2str(p22(1,1)),a2,num2str(p22(1,2)),a2,num2str(p23(1,1)),a2,num2str(p23(1,2)),a5);
    nome24 = strcat(lt1,num2str(i*24 + (i-1)*101),lt2,num2str(p23(1,1)),a2,num2str(p23(1,2)),a2,num2str(p24(1,1)),a2,num2str(p24(1,2)),a5);    
    nome25 = strcat(lt1,num2str(i*25 + (i-1)*100),lt2,num2str(p24(1,1)),a2,num2str(p24(1,2)),a2,num2str(p25(1,1)),a2,num2str(p25(1,2)),a5);
    nome26 = strcat(lt1,num2str(i*26 + (i-1)*99),lt2,num2str(p25(1,1)),a2,num2str(p25(1,2)),a2,num2str(p26(1,1)),a2,num2str(p26(1,2)),a5);
    nome27 = strcat(lt1,num2str(i*27 + (i-1)*98),lt2,num2str(p26(1,1)),a2,num2str(p26(1,2)),a2,num2str(p27(1,1)),a2,num2str(p27(1,2)),a5);
    nome28 = strcat(lt1,num2str(i*28 + (i-1)*97),lt2,num2str(p27(1,1)),a2,num2str(p27(1,2)),a2,num2str(p28(1,1)),a2,num2str(p28(1,2)),a5);
    nome29 = strcat(lt1,num2str(i*29 + (i-1)*96),lt2,num2str(p28(1,1)),a2,num2str(p28(1,2)),a2,num2str(p29(1,1)),a2,num2str(p29(1,2)),a5);
    nome30 = strcat(lt1,num2str(i*30 + (i-1)*95),lt2,num2str(p29(1,1)),a2,num2str(p29(1,2)),a2,num2str(p30(1,1)),a2,num2str(p30(1,2)),a5);
    nome31 = strcat(lt1,num2str(i*31 + (i-1)*94),lt2,num2str(p30(1,1)),a2,num2str(p30(1,2)),a2,num2str(p31(1,1)),a2,num2str(p31(1,2)),a5);
    nome32 = strcat(lt1,num2str(i*32 + (i-1)*93),lt2,num2str(p31(1,1)),a2,num2str(p31(1,2)),a2,num2str(p32(1,1)),a2,num2str(p32(1,2)),a5);
    nome33 = strcat(lt1,num2str(i*33 + (i-1)*92),lt2,num2str(p32(1,1)),a2,num2str(p32(1,2)),a2,num2str(p33(1,1)),a2,num2str(p33(1,2)),a5);
    nome34 = strcat(lt1,num2str(i*34 + (i-1)*91),lt2,num2str(p33(1,1)),a2,num2str(p33(1,2)),a2,num2str(p34(1,1)),a2,num2str(p34(1,2)),a5);
    nome35 = strcat(lt1,num2str(i*35 + (i-1)*90),lt2,num2str(p34(1,1)),a2,num2str(p34(1,2)),a2,num2str(p35(1,1)),a2,num2str(p35(1,2)),a5);
    nome36 = strcat(lt1,num2str(i*36 + (i-1)*89),lt2,num2str(p35(1,1)),a2,num2str(p35(1,2)),a2,num2str(p36(1,1)),a2,num2str(p36(1,2)),a5);
    nome37 = strcat(lt1,num2str(i*37 + (i-1)*88),lt2,num2str(p36(1,1)),a2,num2str(p36(1,2)),a2,num2str(p37(1,1)),a2,num2str(p37(1,2)),a5);
    nome38 = strcat(lt1,num2str(i*38 + (i-1)*87),lt2,num2str(p37(1,1)),a2,num2str(p37(1,2)),a2,num2str(p38(1,1)),a2,num2str(p38(1,2)),a5);
    nome39 = strcat(lt1,num2str(i*39 + (i-1)*86),lt2,num2str(p38(1,1)),a2,num2str(p38(1,2)),a2,num2str(p39(1,1)),a2,num2str(p39(1,2)),a5);
    nome40 = strcat(lt1,num2str(i*40 + (i-1)*85),lt2,num2str(p39(1,1)),a2,num2str(p39(1,2)),a2,num2str(p40(1,1)),a2,num2str(p40(1,2)),a5);
    nome41 = strcat(lt1,num2str(i*41 + (i-1)*84),lt2,num2str(p40(1,1)),a2,num2str(p40(1,2)),a2,num2str(p41(1,1)),a2,num2str(p41(1,2)),a5);
    nome42 = strcat(lt1,num2str(i*42 + (i-1)*83),lt2,num2str(p41(1,1)),a2,num2str(p41(1,2)),a2,num2str(p42(1,1)),a2,num2str(p42(1,2)),a5);
    nome43 = strcat(lt1,num2str(i*43 + (i-1)*82),lt2,num2str(p42(1,1)),a2,num2str(p42(1,2)),a2,num2str(p43(1,1)),a2,num2str(p43(1,2)),a5);
    nome44 = strcat(lt1,num2str(i*44 + (i-1)*81),lt2,num2str(p43(1,1)),a2,num2str(p43(1,2)),a2,num2str(p44(1,1)),a2,num2str(p44(1,2)),a5);
    nome45 = strcat(lt1,num2str(i*45 + (i-1)*80),lt2,num2str(p44(1,1)),a2,num2str(p44(1,2)),a2,num2str(p45(1,1)),a2,num2str(p45(1,2)),a5);
    nome46 = strcat(lt1,num2str(i*46 + (i-1)*79),lt2,num2str(p45(1,1)),a2,num2str(p45(1,2)),a2,num2str(p46(1,1)),a2,num2str(p46(1,2)),a5);
    nome47 = strcat(lt1,num2str(i*47 + (i-1)*78),lt2,num2str(p46(1,1)),a2,num2str(p46(1,2)),a2,num2str(p47(1,1)),a2,num2str(p47(1,2)),a5);
    nome48 = strcat(lt1,num2str(i*48 + (i-1)*77),lt2,num2str(p47(1,1)),a2,num2str(p47(1,2)),a2,num2str(p48(1,1)),a2,num2str(p48(1,2)),a5);
    nome49 = strcat(lt1,num2str(i*49 + (i-1)*76),lt2,num2str(p48(1,1)),a2,num2str(p48(1,2)),a2,num2str(p49(1,1)),a2,num2str(p49(1,2)),a5);
    nome50 = strcat(lt1,num2str(i*50 + (i-1)*75),lt2,num2str(p49(1,1)),a2,num2str(p49(1,2)),a2,num2str(p50(1,1)),a2,num2str(p50(1,2)),a5);
    nome51 = strcat(lt1,num2str(i*51 + (i-1)*74),lt2,num2str(p50(1,1)),a2,num2str(p50(1,2)),a2,num2str(p51(1,1)),a2,num2str(p51(1,2)),a5);
    nome52 = strcat(lt1,num2str(i*52 + (i-1)*73),lt2,num2str(p51(1,1)),a2,num2str(p51(1,2)),a2,num2str(p52(1,1)),a2,num2str(p52(1,2)),a5);
    nome53 = strcat(lt1,num2str(i*53 + (i-1)*72),lt2,num2str(p52(1,1)),a2,num2str(p52(1,2)),a2,num2str(p53(1,1)),a2,num2str(p53(1,2)),a5);
    nome54 = strcat(lt1,num2str(i*54 + (i-1)*71),lt2,num2str(p53(1,1)),a2,num2str(p53(1,2)),a2,num2str(p54(1,1)),a2,num2str(p54(1,2)),a5);
    nome55 = strcat(lt1,num2str(i*55 + (i-1)*70),lt2,num2str(p54(1,1)),a2,num2str(p54(1,2)),a2,num2str(p55(1,1)),a2,num2str(p55(1,2)),a5);
    nome56 = strcat(lt1,num2str(i*56 + (i-1)*69),lt2,num2str(p55(1,1)),a2,num2str(p55(1,2)),a2,num2str(p56(1,1)),a2,num2str(p56(1,2)),a5);
    nome57 = strcat(lt1,num2str(i*57 + (i-1)*68),lt2,num2str(p56(1,1)),a2,num2str(p56(1,2)),a2,num2str(p57(1,1)),a2,num2str(p57(1,2)),a5);
    nome58 = strcat(lt1,num2str(i*58 + (i-1)*67),lt2,num2str(p57(1,1)),a2,num2str(p57(1,2)),a2,num2str(p58(1,1)),a2,num2str(p58(1,2)),a5);
    nome59 = strcat(lt1,num2str(i*59 + (i-1)*66),lt2,num2str(p58(1,1)),a2,num2str(p58(1,2)),a2,num2str(p59(1,1)),a2,num2str(p59(1,2)),a5);
    nome60 = strcat(lt1,num2str(i*60 + (i-1)*65),lt2,num2str(p59(1,1)),a2,num2str(p59(1,2)),a2,num2str(p60(1,1)),a2,num2str(p60(1,2)),a5);
    nome61 = strcat(lt1,num2str(i*61 + (i-1)*64),lt2,num2str(p60(1,1)),a2,num2str(p60(1,2)),a2,num2str(p61(1,1)),a2,num2str(p61(1,2)),a5);
    nome62 = strcat(lt1,num2str(i*62 + (i-1)*63),lt2,num2str(p61(1,1)),a2,num2str(p61(1,2)),a2,num2str(p62(1,1)),a2,num2str(p62(1,2)),a5);
    nome63 = strcat(lt1,num2str(i*63 + (i-1)*62),lt2,num2str(p62(1,1)),a2,num2str(p62(1,2)),a2,num2str(p63(1,1)),a2,num2str(p63(1,2)),a5);
    nome64 = strcat(lt1,num2str(i*64 + (i-1)*61),lt2,num2str(p63(1,1)),a2,num2str(p63(1,2)),a2,num2str(p64(1,1)),a2,num2str(p64(1,2)),a5);
    nome65 = strcat(lt1,num2str(i*65 + (i-1)*60),lt2,num2str(p64(1,1)),a2,num2str(p64(1,2)),a2,num2str(p65(1,1)),a2,num2str(p65(1,2)),a5);
    nome66 = strcat(lt1,num2str(i*66 + (i-1)*59),lt2,num2str(p65(1,1)),a2,num2str(p65(1,2)),a2,num2str(p66(1,1)),a2,num2str(p66(1,2)),a5);
    nome67 = strcat(lt1,num2str(i*67 + (i-1)*58),lt2,num2str(p66(1,1)),a2,num2str(p66(1,2)),a2,num2str(p67(1,1)),a2,num2str(p67(1,2)),a5);
    nome68 = strcat(lt1,num2str(i*68 + (i-1)*57),lt2,num2str(p67(1,1)),a2,num2str(p67(1,2)),a2,num2str(p68(1,1)),a2,num2str(p68(1,2)),a5);
    nome69 = strcat(lt1,num2str(i*69 + (i-1)*56),lt2,num2str(p68(1,1)),a2,num2str(p68(1,2)),a2,num2str(p69(1,1)),a2,num2str(p69(1,2)),a5);
    nome70 = strcat(lt1,num2str(i*70 + (i-1)*55),lt2,num2str(p69(1,1)),a2,num2str(p69(1,2)),a2,num2str(p70(1,1)),a2,num2str(p70(1,2)),a5);
    nome71 = strcat(lt1,num2str(i*71 + (i-1)*54),lt2,num2str(p70(1,1)),a2,num2str(p70(1,2)),a2,num2str(p71(1,1)),a2,num2str(p71(1,2)),a5);
    nome72 = strcat(lt1,num2str(i*72 + (i-1)*53),lt2,num2str(p71(1,1)),a2,num2str(p71(1,2)),a2,num2str(p72(1,1)),a2,num2str(p72(1,2)),a5);
    nome73 = strcat(lt1,num2str(i*73 + (i-1)*52),lt2,num2str(p72(1,1)),a2,num2str(p72(1,2)),a2,num2str(p73(1,1)),a2,num2str(p73(1,2)),a5);
    nome74 = strcat(lt1,num2str(i*74 + (i-1)*51),lt2,num2str(p73(1,1)),a2,num2str(p73(1,2)),a2,num2str(p74(1,1)),a2,num2str(p74(1,2)),a5);
    nome75 = strcat(lt1,num2str(i*75 + (i-1)*50),lt2,num2str(p74(1,1)),a2,num2str(p74(1,2)),a2,num2str(p75(1,1)),a2,num2str(p75(1,2)),a5);
    nome76 = strcat(lt1,num2str(i*76 + (i-1)*49),lt2,num2str(p75(1,1)),a2,num2str(p75(1,2)),a2,num2str(p76(1,1)),a2,num2str(p76(1,2)),a5);
    nome77 = strcat(lt1,num2str(i*77 + (i-1)*48),lt2,num2str(p76(1,1)),a2,num2str(p76(1,2)),a2,num2str(p77(1,1)),a2,num2str(p77(1,2)),a5);
    nome78 = strcat(lt1,num2str(i*78 + (i-1)*47),lt2,num2str(p77(1,1)),a2,num2str(p77(1,2)),a2,num2str(p78(1,1)),a2,num2str(p78(1,2)),a5);
    nome79 = strcat(lt1,num2str(i*79 + (i-1)*46),lt2,num2str(p78(1,1)),a2,num2str(p78(1,2)),a2,num2str(p79(1,1)),a2,num2str(p79(1,2)),a5);
    nome80 = strcat(lt1,num2str(i*80 + (i-1)*45),lt2,num2str(p79(1,1)),a2,num2str(p79(1,2)),a2,num2str(p80(1,1)),a2,num2str(p80(1,2)),a5);
    nome81 = strcat(lt1,num2str(i*81 + (i-1)*44),lt2,num2str(p80(1,1)),a2,num2str(p80(1,2)),a2,num2str(p81(1,1)),a2,num2str(p81(1,2)),a5);
    nome82 = strcat(lt1,num2str(i*82 + (i-1)*43),lt2,num2str(p81(1,1)),a2,num2str(p81(1,2)),a2,num2str(p82(1,1)),a2,num2str(p82(1,2)),a5);
    nome83 = strcat(lt1,num2str(i*83 + (i-1)*42),lt2,num2str(p82(1,1)),a2,num2str(p82(1,2)),a2,num2str(p83(1,1)),a2,num2str(p83(1,2)),a5);
    nome84 = strcat(lt1,num2str(i*84 + (i-1)*41),lt2,num2str(p83(1,1)),a2,num2str(p83(1,2)),a2,num2str(p84(1,1)),a2,num2str(p84(1,2)),a5);
    nome85 = strcat(lt1,num2str(i*85 + (i-1)*40),lt2,num2str(p84(1,1)),a2,num2str(p84(1,2)),a2,num2str(p85(1,1)),a2,num2str(p85(1,2)),a5);
    nome86 = strcat(lt1,num2str(i*86 + (i-1)*39),lt2,num2str(p85(1,1)),a2,num2str(p85(1,2)),a2,num2str(p86(1,1)),a2,num2str(p86(1,2)),a5);
    nome87 = strcat(lt1,num2str(i*87 + (i-1)*38),lt2,num2str(p86(1,1)),a2,num2str(p86(1,2)),a2,num2str(p87(1,1)),a2,num2str(p87(1,2)),a5);
    nome88 = strcat(lt1,num2str(i*88 + (i-1)*37),lt2,num2str(p87(1,1)),a2,num2str(p87(1,2)),a2,num2str(p88(1,1)),a2,num2str(p88(1,2)),a5);
    nome89 = strcat(lt1,num2str(i*89 + (i-1)*36),lt2,num2str(p88(1,1)),a2,num2str(p88(1,2)),a2,num2str(p89(1,1)),a2,num2str(p89(1,2)),a5);
    nome90 = strcat(lt1,num2str(i*90 + (i-1)*35),lt2,num2str(p89(1,1)),a2,num2str(p89(1,2)),a2,num2str(p90(1,1)),a2,num2str(p90(1,2)),a5);
    nome91 = strcat(lt1,num2str(i*91 + (i-1)*34),lt2,num2str(p90(1,1)),a2,num2str(p90(1,2)),a2,num2str(p91(1,1)),a2,num2str(p91(1,2)),a5);
    nome92 = strcat(lt1,num2str(i*92 + (i-1)*33),lt2,num2str(p91(1,1)),a2,num2str(p91(1,2)),a2,num2str(p92(1,1)),a2,num2str(p92(1,2)),a5);
    nome93 = strcat(lt1,num2str(i*93 + (i-1)*32),lt2,num2str(p92(1,1)),a2,num2str(p92(1,2)),a2,num2str(p93(1,1)),a2,num2str(p93(1,2)),a5);
    nome94 = strcat(lt1,num2str(i*94 + (i-1)*31),lt2,num2str(p93(1,1)),a2,num2str(p93(1,2)),a2,num2str(p94(1,1)),a2,num2str(p94(1,2)),a5);
    nome95 = strcat(lt1,num2str(i*95 + (i-1)*30),lt2,num2str(p94(1,1)),a2,num2str(p94(1,2)),a2,num2str(p95(1,1)),a2,num2str(p95(1,2)),a5);
    nome96 = strcat(lt1,num2str(i*96 + (i-1)*29),lt2,num2str(p95(1,1)),a2,num2str(p95(1,2)),a2,num2str(p96(1,1)),a2,num2str(p96(1,2)),a5);
    nome97 = strcat(lt1,num2str(i*97 + (i-1)*28),lt2,num2str(p96(1,1)),a2,num2str(p96(1,2)),a2,num2str(p97(1,1)),a2,num2str(p97(1,2)),a5);
    nome98 = strcat(lt1,num2str(i*98 + (i-1)*27),lt2,num2str(p97(1,1)),a2,num2str(p97(1,2)),a2,num2str(p98(1,1)),a2,num2str(p98(1,2)),a5);
    nome99 = strcat(lt1,num2str(i*99 + (i-1)*26),lt2,num2str(p98(1,1)),a2,num2str(p98(1,2)),a2,num2str(p99(1,1)),a2,num2str(p99(1,2)),a5);
    nome100 = strcat(lt1,num2str(i*100 + (i-1)*25),lt2,num2str(p99(1,1)),a2,num2str(p99(1,2)),a2,num2str(p100(1,1)),a2,num2str(p100(1,2)),a5);
    nome101= strcat(lt1,num2str(i*101 + (i-1)*24),lt2,num2str(p100(1,1)),a2,num2str(p100(1,2)),a2,num2str(p101(1,1)),a2,num2str(p101(1,2)),a5);
    nome102= strcat(lt1,num2str(i*102 + (i-1)*23),lt2,num2str(p101(1,1)),a2,num2str(p101(1,2)),a2,num2str(p102(1,1)),a2,num2str(p102(1,2)),a5);
    nome103= strcat(lt1,num2str(i*103 + (i-1)*22),lt2,num2str(p102(1,1)),a2,num2str(p102(1,2)),a2,num2str(p103(1,1)),a2,num2str(p103(1,2)),a5);
    nome104= strcat(lt1,num2str(i*104 + (i-1)*21),lt2,num2str(p103(1,1)),a2,num2str(p103(1,2)),a2,num2str(p104(1,1)),a2,num2str(p104(1,2)),a5);
    nome105= strcat(lt1,num2str(i*105 + (i-1)*20),lt2,num2str(p104(1,1)),a2,num2str(p104(1,2)),a2,num2str(p105(1,1)),a2,num2str(p105(1,2)),a5);
    nome106= strcat(lt1,num2str(i*106 + (i-1)*19),lt2,num2str(p105(1,1)),a2,num2str(p105(1,2)),a2,num2str(p106(1,1)),a2,num2str(p106(1,2)),a5);
    nome107= strcat(lt1,num2str(i*107 + (i-1)*18),lt2,num2str(p106(1,1)),a2,num2str(p106(1,2)),a2,num2str(p107(1,1)),a2,num2str(p107(1,2)),a5);
    nome108= strcat(lt1,num2str(i*108 + (i-1)*17),lt2,num2str(p107(1,1)),a2,num2str(p107(1,2)),a2,num2str(p108(1,1)),a2,num2str(p108(1,2)),a5);
    nome109 = strcat(lt1,num2str(i*109 + (i-1)*16),lt2,num2str(p108(1,1)),a2,num2str(p108(1,2)),a2,num2str(p109(1,1)),a2,num2str(p109(1,2)),a5);
    nome110= strcat(lt1,num2str(i*110 + (i-1)*15),lt2,num2str(p109(1,1)),a2,num2str(p109(1,2)),a2,num2str(p110(1,1)),a2,num2str(p110(1,2)),a5);
    nome111= strcat(lt1,num2str(i*111 + (i-1)*14),lt2,num2str(p110(1,1)),a2,num2str(p110(1,2)),a2,num2str(p111(1,1)),a2,num2str(p111(1,2)),a5);
    nome112= strcat(lt1,num2str(i*112 + (i-1)*13),lt2,num2str(p111(1,1)),a2,num2str(p111(1,2)),a2,num2str(p112(1,1)),a2,num2str(p112(1,2)),a5);
    nome113= strcat(lt1,num2str(i*113 + (i-1)*12),lt2,num2str(p112(1,1)),a2,num2str(p112(1,2)),a2,num2str(p113(1,1)),a2,num2str(p113(1,2)),a5);
    nome114= strcat(lt1,num2str(i*114 + (i-1)*11),lt2,num2str(p113(1,1)),a2,num2str(p113(1,2)),a2,num2str(p114(1,1)),a2,num2str(p114(1,2)),a5);
    nome115= strcat(lt1,num2str(i*115 + (i-1)*10),lt2,num2str(p114(1,1)),a2,num2str(p114(1,2)),a2,num2str(p115(1,1)),a2,num2str(p115(1,2)),a5);
    nome116= strcat(lt1,num2str(i*116 + (i-1)*9),lt2,num2str(p115(1,1)),a2,num2str(p115(1,2)),a2,num2str(p116(1,1)),a2,num2str(p116(1,2)),a5);
    nome117= strcat(lt1,num2str(i*117 + (i-1)*8),lt2,num2str(p116(1,1)),a2,num2str(p116(1,2)),a2,num2str(p117(1,1)),a2,num2str(p117(1,2)),a5);
    nome118= strcat(lt1,num2str(i*118 + (i-1)*7),lt2,num2str(p117(1,1)),a2,num2str(p117(1,2)),a2,num2str(p118(1,1)),a2,num2str(p118(1,2)),a5);
    nome119 = strcat(lt1,num2str(i*119 + (i-1)*6),lt2,num2str(p118(1,1)),a2,num2str(p118(1,2)),a2,num2str(p119(1,1)),a2,num2str(p119(1,2)),a5);
    nome120= strcat(lt1,num2str(i*120 + (i-1)*5),lt2,num2str(p119(1,1)),a2,num2str(p119(1,2)),a2,num2str(p120(1,1)),a2,num2str(p120(1,2)),a5);
    nome121= strcat(lt1,num2str(i*121 + (i-1)*4),lt2,num2str(p120(1,1)),a2,num2str(p120(1,2)),a2,num2str(p121(1,1)),a2,num2str(p121(1,2)),a5);
    nome122= strcat(lt1,num2str(i*122 + (i-1)*3),lt2,num2str(p121(1,1)),a2,num2str(p121(1,2)),a2,num2str(p122(1,1)),a2,num2str(p122(1,2)),a5);
    nome123= strcat(lt1,num2str(i*123 + (i-1)*2),lt2,num2str(p122(1,1)),a2,num2str(p122(1,2)),a2,num2str(p123(1,1)),a2,num2str(p123(1,2)),a5);
    nome124= strcat(lt1,num2str(i*124 + (i-1)*1),lt2,num2str(p123(1,1)),a2,num2str(p123(1,2)),a2,num2str(p124(1,1)),a2,num2str(p124(1,2)),a5);
    
    nome125 = strcat(lt1,num2str(i*125),lt2,num2str(p124(1,1)),a2,num2str(p124(1,2)),a2,num2str(p125(1,1)),a2,num2str(p125(1,2)),a5);
    
    
    
    
    
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
    t6 = size(nome6);
    t6b = t6(1,2);
    t7 = size(nome7);
    t7b = t7(1,2);
    t8 = size(nome8);
    t8b = t8(1,2);
    t9 = size(nome9);
    t9b = t9(1,2);
    t10 = size(nome10);
    t10b = t10(1,2);
    t11 = size(nome11);
    t11b = t11(1,2);
    t12 = size(nome12);
    t12b = t12(1,2);
    t13 = size(nome13);
    t13b = t13(1,2);
    t14 = size(nome14);
    t14b = t14(1,2);
    t15 = size(nome15);
    t15b = t15(1,2);
    t16 = size(nome16);
    t16b = t16(1,2);
    t17 = size(nome17);
    t17b = t17(1,2);
    t18 = size(nome18);
    t18b = t18(1,2);
    t19 = size(nome19);
    t19b = t19(1,2);
    t20 = size(nome20);
    t20b = t20(1,2);
    t21 = size(nome21);
    t21b = t21(1,2);
    t22 = size(nome22);
    t22b = t22(1,2);
    t23 = size(nome23);
    t23b = t23(1,2);
    t24 = size(nome24);
    t24b = t24(1,2);
    t25 = size(nome25);
    t25b = t25(1,2);
    
    t26 = size(nome26);
    t26b = t26(1,2);
    
    t27 = size(nome27);
    t27b = t27(1,2);
    
    t28 = size(nome28);
    t28b = t28(1,2);
    
    t29 = size(nome29);
    t29b = t29(1,2);
    
    t30 = size(nome30);
    t30b = t30(1,2);
    
    t31 = size(nome31);
    t31b = t31(1,2);
    t32 = size(nome32);
    t32b = t32(1,2);
    t33 = size(nome33);
    t33b = t33(1,2);
    t34 = size(nome34);
    t34b = t34(1,2);
    t35 = size(nome35);
    t35b = t35(1,2);
    t36 = size(nome36);
    t36b = t36(1,2);
    t37 = size(nome37);
    t37b = t37(1,2);
    t38 = size(nome38);
    t38b = t38(1,2);
    t39 = size(nome39);
    t39b = t39(1,2);
    t40 = size(nome40);
    t40b = t40(1,2);
    t41 = size(nome41);
    t41b = t41(1,2);
    t42 = size(nome42);
    t42b = t42(1,2);
    t43 = size(nome43);
    t43b = t43(1,2);
    t44 = size(nome44);
    t44b = t44(1,2);
    t45 = size(nome45);
    t45b = t45(1,2);
    t46 = size(nome46);
    t46b = t46(1,2);
    
    t47 = size(nome47);
    t47b = t47(1,2);
    t48 = size(nome48);
    t48b = t48(1,2);
    t49 = size(nome49);
    t49b = t49(1,2);
    t50 = size(nome50);
    t50b = t50(1,2);
    
    t51 = size(nome51);
    t51b = t51(1,2);
    t52 = size(nome52);
    t52b = t52(1,2);
    t53 = size(nome53);
    t53b = t53(1,2);
    t54 = size(nome54);
    t54b = t54(1,2);
    t55 = size(nome55);
    t55b = t55(1,2);
    t56 = size(nome56);
    t56b = t56(1,2);
    t57 = size(nome57);
    t57b = t57(1,2);
    t58 = size(nome58);
    t58b = t58(1,2);
    t59 = size(nome59);
    t59b = t59(1,2);
    t60 = size(nome60);
    t60b = t60(1,2);
    
    t61 = size(nome61);
    t61b = t61(1,2);
    t62 = size(nome62);
    t62b = t62(1,2);
    t63 = size(nome63);
    t63b = t63(1,2);
    t64 = size(nome64);
    t64b = t64(1,2);
    t65 = size(nome65);
    t65b = t65(1,2);
    t66 = size(nome66);
    t66b = t66(1,2);
    t67 = size(nome67);
    t67b = t67(1,2);
    t68 = size(nome68);
    t68b = t68(1,2);
    t69 = size(nome69);
    t69b = t69(1,2);
    t70 = size(nome70);
    t70b = t70(1,2);
    
    t71 = size(nome71);
    t71b = t71(1,2);
    t72 = size(nome72);
    t72b = t72(1,2);
    t73 = size(nome73);
    t73b = t73(1,2);
    t74 = size(nome74);
    t74b = t74(1,2);
    t75 = size(nome75);
    t75b = t75(1,2);
    t76 = size(nome76);
    t76b = t76(1,2);
    t77 = size(nome77);
    t77b = t77(1,2);
    t78 = size(nome78);
    t78b = t78(1,2);
    t79 = size(nome79);
    t79b = t79(1,2);
    t80 = size(nome80);
    t80b = t80(1,2);
    
    t81 = size(nome81);
    t81b = t81(1,2);
    t82 = size(nome82);
    t82b = t82(1,2);
    t83 = size(nome83);
    t83b = t83(1,2);
    t84 = size(nome84);
    t84b = t84(1,2);
    t85 = size(nome85);
    t85b = t85(1,2);
    t86 = size(nome86);
    t86b = t86(1,2);
    t87 = size(nome87);
    t87b = t87(1,2);
    t88 = size(nome88);
    t88b = t88(1,2);
    t89 = size(nome89);
    t89b = t89(1,2);
    t90 = size(nome90);
    t90b = t90(1,2);
    
    t91 = size(nome91);
    t91b = t91(1,2);
    t92 = size(nome92);
    t92b = t92(1,2);
    t93 = size(nome93);
    t93b = t93(1,2);
    t94 = size(nome94);
    t94b = t94(1,2);
    t95 = size(nome95);
    t95b = t95(1,2);
    t96 = size(nome96);
    t96b = t96(1,2);
    t97 = size(nome97);
    t97b = t97(1,2);
    t98 = size(nome98);
    t98b = t98(1,2);
    t99 = size(nome99);
    t99b = t99(1,2);
    t100 = size(nome100);
    t100b = t100(1,2);
    
    t101 = size(nome101);
    t101b = t101(1,2);
    t102 = size(nome102);
    t102b = t102(1,2);
    t103 = size(nome103);
    t103b = t103(1,2);
    t104 = size(nome104);
    t104b = t104(1,2);
    t105 = size(nome105);
    t105b = t105(1,2);
    t106 = size(nome106);
    t106b = t106(1,2);
    t107 = size(nome107);
    t107b = t107(1,2);
    t108 = size(nome108);
    t108b = t108(1,2);
    t109 = size(nome109);
    t109b = t109(1,2);
    t110 = size(nome110);
    t110b = t110(1,2);
    
    t111 = size(nome111);
    t111b = t111(1,2);
    t112 = size(nome112);
    t112b = t112(1,2);
    t113 = size(nome113);
    t113b = t113(1,2);
    t114 = size(nome114);
    t114b = t114(1,2);
    t115 = size(nome115);
    t115b = t115(1,2);
    t116 = size(nome116);
    t116b = t116(1,2);
    t117 = size(nome117);
    t117b = t117(1,2);
    t118 = size(nome118);
    t118b = t118(1,2);
    t119 = size(nome119);
    t119b = t119(1,2);
    t120 = size(nome120);
    t120b = t120(1,2);
    
    t121 = size(nome121);
    t121b = t121(1,2);
    t122 = size(nome122);
    t122b = t122(1,2);
    t123 = size(nome123);
    t123b = t123(1,2);
    t124 = size(nome124);
    t124b = t124(1,2);
    t125 = size(nome125);
    t125b = t125(1,2);
    
    
    results(1 + (i-1)*125,1:t1b)=nome1;
    results(2 + (i-1)*125,1:t2b)=nome2;
    results(3 + (i-1)*125,1:t3b)=nome3;
    results(4 + (i-1)*125,1:t4b)=nome4;
    results(5 + (i-1)*125,1:t5b)=nome5;
    
    results(6 + (i-1)*125,1:t6b)=nome6;
    results(7 + (i-1)*125,1:t7b)=nome7;
    results(8 + (i-1)*125,1:t8b)=nome8;
    results(9 + (i-1)*125,1:t9b)=nome9;
    results(10 + (i-1)*125,1:t10b)=nome10;
    
    results(11 + (i-1)*125,1:t11b)=nome11;
    results(12 + (i-1)*125,1:t12b)=nome12;
    results(13 + (i-1)*125,1:t13b)=nome13;
    results(14 + (i-1)*125,1:t14b)=nome14;
    results(15 + (i-1)*125,1:t15b)=nome15;
    
    results(16 + (i-1)*125,1:t16b)=nome16;
    results(17 + (i-1)*125,1:t17b)=nome17;
    results(18 + (i-1)*125,1:t18b)=nome18;
    results(19 + (i-1)*125,1:t19b)=nome19;
    results(20 + (i-1)*125,1:t20b)=nome20;
    
    results(21 + (i-1)*125,1:t21b)=nome21;
    results(22 + (i-1)*125,1:t22b)=nome22;
    results(23 + (i-1)*125,1:t23b)=nome23;
    results(24 + (i-1)*125,1:t24b)=nome24;
    results(25 + (i-1)*125,1:t25b)=nome25;
    
    results(26 + (i-1)*125,1:t26b)=nome26;
    results(27 + (i-1)*125,1:t27b)=nome27;
    results(28 + (i-1)*125,1:t28b)=nome28;
    results(29 + (i-1)*125,1:t29b)=nome29;
    results(30 + (i-1)*125,1:t30b)=nome30;
    
    results(31 + (i-1)*125,1:t31b)=nome31;
    results(32 + (i-1)*125,1:t32b)=nome32;
    results(33 + (i-1)*125,1:t33b)=nome33;
    results(34 + (i-1)*125,1:t34b)=nome34;
    results(35 + (i-1)*125,1:t35b)=nome35;
    results(36 + (i-1)*125,1:t36b)=nome36;
    results(37 + (i-1)*125,1:t37b)=nome37;
    results(38 + (i-1)*125,1:t38b)=nome38;
    results(39 + (i-1)*125,1:t39b)=nome39;
    results(40 + (i-1)*125,1:t40b)=nome40;
    
    results(41 + (i-1)*125,1:t41b)=nome41;
    results(42 + (i-1)*125,1:t42b)=nome42;
    results(43 + (i-1)*125,1:t43b)=nome43;
    results(44 + (i-1)*125,1:t44b)=nome44;
    results(45 + (i-1)*125,1:t45b)=nome45;
    results(46 + (i-1)*125,1:t46b)=nome46;
    results(47 + (i-1)*125,1:t47b)=nome47;
    results(48 + (i-1)*125,1:t48b)=nome48;
    results(49 + (i-1)*125,1:t49b)=nome49;
    results(50 + (i-1)*125,1:t50b)=nome50;
    
    results(51 + (i-1)*125,1:t51b)=nome51;
    results(52 + (i-1)*125,1:t52b)=nome52;
    results(53 + (i-1)*125,1:t53b)=nome53;
    results(54 + (i-1)*125,1:t54b)=nome54;
    results(55 + (i-1)*125,1:t55b)=nome55;
    results(56 + (i-1)*125,1:t56b)=nome56;
    results(57 + (i-1)*125,1:t57b)=nome57;
    results(58 + (i-1)*125,1:t58b)=nome58;
    results(59 + (i-1)*125,1:t59b)=nome59;
    results(60 + (i-1)*125,1:t60b)=nome60;
    
    results(61 + (i-1)*125,1:t61b)=nome61;
    results(62 + (i-1)*125,1:t62b)=nome62;
    results(63 + (i-1)*125,1:t63b)=nome63;
    results(64 + (i-1)*125,1:t64b)=nome64;
    results(65 + (i-1)*125,1:t65b)=nome65;
    results(66 + (i-1)*125,1:t66b)=nome66;
    results(67 + (i-1)*125,1:t67b)=nome67;
    results(68 + (i-1)*125,1:t68b)=nome68;
    results(69 + (i-1)*125,1:t69b)=nome69;
    results(70 + (i-1)*125,1:t70b)=nome70;
    
    results(71 + (i-1)*125,1:t71b)=nome71;
    results(72 + (i-1)*125,1:t72b)=nome72;
    results(73 + (i-1)*125,1:t73b)=nome73;
    results(74 + (i-1)*125,1:t74b)=nome74;
    results(75 + (i-1)*125,1:t75b)=nome75;
    results(76 + (i-1)*125,1:t76b)=nome76;
    results(77 + (i-1)*125,1:t77b)=nome77;
    results(78 + (i-1)*125,1:t78b)=nome78;
    results(79 + (i-1)*125,1:t79b)=nome79;
    results(80 + (i-1)*125,1:t80b)=nome80;
    
    results(81 + (i-1)*125,1:t81b)=nome81;
    results(82 + (i-1)*125,1:t82b)=nome82;
    results(83 + (i-1)*125,1:t83b)=nome83;
    results(84 + (i-1)*125,1:t84b)=nome84;
    results(85 + (i-1)*125,1:t85b)=nome85;
    results(86 + (i-1)*125,1:t86b)=nome86;
    results(87 + (i-1)*125,1:t87b)=nome87;
    results(88 + (i-1)*125,1:t88b)=nome88;
    results(89 + (i-1)*125,1:t89b)=nome89;
    results(90 + (i-1)*125,1:t90b)=nome90;
    
    results(91 + (i-1)*125,1:t91b)=nome91;
    results(92 + (i-1)*125,1:t92b)=nome92;
    results(93 + (i-1)*125,1:t93b)=nome93;
    results(94 + (i-1)*125,1:t94b)=nome94;
    results(95 + (i-1)*125,1:t95b)=nome95;
    results(96 + (i-1)*125,1:t96b)=nome96;
    results(97 + (i-1)*125,1:t97b)=nome97;
    results(98 + (i-1)*125,1:t98b)=nome98;
    results(99 + (i-1)*125,1:t99b)=nome99;
    results(100 + (i-1)*125,1:t100b)=nome100;
    
    results(101 + (i-1)*125,1:t101b)=nome101;
    results(102 + (i-1)*125,1:t102b)=nome102;
    results(103 + (i-1)*125,1:t103b)=nome103;
    results(104 + (i-1)*125,1:t104b)=nome104;
    results(105 + (i-1)*125,1:t105b)=nome105;
    results(106 + (i-1)*125,1:t106b)=nome106;
    results(107 + (i-1)*125,1:t107b)=nome107;
    results(108 + (i-1)*125,1:t108b)=nome108;
    results(109 + (i-1)*125,1:t109b)=nome109;
    results(110 + (i-1)*125,1:t110b)=nome110;
    
    
    results(111 + (i-1)*125,1:t111b)=nome111;
    results(112 + (i-1)*125,1:t112b)=nome112;
    results(113 + (i-1)*125,1:t113b)=nome113;
    results(114 + (i-1)*125,1:t114b)=nome114;
    results(115 + (i-1)*125,1:t115b)=nome115;
    results(116 + (i-1)*125,1:t116b)=nome116;
    results(117 + (i-1)*125,1:t117b)=nome117;
    results(118 + (i-1)*125,1:t118b)=nome118;
    results(119 + (i-1)*125,1:t119b)=nome119;
    results(120 + (i-1)*125,1:t120b)=nome120;
    
    results(121 + (i-1)*125,1:t121b)=nome121;
    results(122 + (i-1)*125,1:t122b)=nome122;
    results(123 + (i-1)*125,1:t123b)=nome123;
    results(124 + (i-1)*125,1:t124b)=nome124;
    results(125 + (i-1)*125,1:t125b)=nome125;
end


dlmwrite('FileKoch3JS.dat',results,'delimiter','');
edit FileKoch3JS.dat