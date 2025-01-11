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
R = 3;
p0 = [R,0];
for i = 1:4
    l = R*(teta/3)
    l2 = R*(teta/9);
    
    p0 = [R*cos((i-1)*teta),R*sin((i-1)*teta)];
    p1 = [R*cos(tt2 + (i-1)*teta),R*sin(tt2 + (i-1)*teta)]; 
    p2 = [(R+l2)*cos(tt2 + (i-1)*teta),(R+l2)*sin(tt2 + (i-1)*teta)];
    p3 = [(R+l2)*cos(2*(tt2) + (i-1)*teta),(R+l2)*sin(2*(tt2) + (i-1)*teta)];
    p4 = [R*cos(2*(tt2) + (i-1)*teta),R*sin(2*(tt2) + (i-1)*teta)];
    p5 = [R*cos(3*(tt2) + (i-1)*teta),R*sin(3*(tt2) + (i-1)*teta)];
    
    p6 = [(R+l2)*cos(3*(tt2) + (i-1)*teta),(R+l2)*sin(3*(tt2) + (i-1)*teta)];
    p7 = [(R+l2+0.001)*cos((3*(tt2) - tt2) + (i-1)*teta),(R+l2+0.001)*sin((3*(tt2) - tt2) + (i-1)*teta)];
    p8 = [(R+2*l2)*cos((3*(tt2) - tt2) + (i-1)*teta),(R+2*l2)*sin((3*(tt2) - tt2) + (i-1)*teta)];
    p9 = [(R+2*l2)*cos(3*(tt2) + (i-1)*teta),(R+2*l2)*sin(3*(tt2) + (i-1)*teta)];
    p10 = [(R+3*l2)*cos(3*(tt2) + (i-1)*teta),(R+3*l2)*sin(3*(tt2) + (i-1)*teta)];
    
    p11 = [(R+l)*cos(4*(tt2) + (i-1)*teta),(R+l)*sin(4*(tt2) + (i-1)*teta)];
    p12 = [(R+l+l2)*cos(4*(tt2) + (i-1)*teta),(R+l+l2)*sin(4*(tt2) + (i-1)*teta)];
    p13 = [(R+l+l2)*cos(5*(tt2) + (i-1)*teta),(R+l+l2)*sin(5*(tt2) + (i-1)*teta)];
    p14 = [(R+l)*cos(5*(tt2) + (i-1)*teta),(R+l)*sin(5*(tt2) + (i-1)*teta)];
    p15 = [(R+l)*cos(6*(tt2) + (i-1)*teta),(R+l)*sin(6*(tt2) + (i-1)*teta)];
    
    
    p16 = [(R+2*l2)*cos(6*(tt2) + (i-1)*teta),(R+2*l2)*sin(6*(tt2) + (i-1)*teta)];
    p17 = [(R+2*l2)*cos((6*(tt2) + tt2) + (i-1)*teta),(R+2*l2)*sin((6*(tt2) + tt2) + (i-1)*teta)];
    p18 = [(R+l2+0.001)*cos((6*(tt2) + tt2) + (i-1)*teta),(R+l2+0.001)*sin((6*(tt2) + tt2) + (i-1)*teta)];
    p19 = [(R+l2)*cos(6*(tt2) + (i-1)*teta),(R+l2)*sin(6*(tt2) + (i-1)*teta)];
    
    
    p20 = [(R)*cos(6*(tt2) + (i-1)*teta),(R)*sin(6*(tt2) + (i-1)*teta)];   
    p21 = [(R)*cos(7*(tt2) + (i-1)*teta),(R)*sin(7*(tt2) + (i-1)*teta)];
    p22 = [(R+l2)*cos(7*tt2 + (i-1)*teta),(R+l2)*sin(7*tt2 + (i-1)*teta)];
    p23 = [(R+l2)*cos(8*tt2 + (i-1)*teta),(R+l2)*sin(8*tt2 + (i-1)*teta)];
    p24 = [(R)*cos(8*tt2 + (i-1)*teta),(R)*sin(8*tt2 + (i-1)*teta)];
    p25 = [(R)*cos(9*tt2 + (i-1)*teta),(R)*sin(9*tt2 + (i-1)*teta)];
    
    
    nome1 = strcat(lt1,num2str(i + (i-1)*24),lt2,num2str(p0(1,1)),a2,num2str(p0(1,2)),a2,num2str(p1(1,1)),a2,num2str(p1(1,2)),a5);
    nome2 = strcat(lt1,num2str(i*2 + (i-1)*23),lt2,num2str(p1(1,1)),a2,num2str(p1(1,2)),a2,num2str(p2(1,1)),a2,num2str(p2(1,2)),a5);
    nome3 = strcat(lt1,num2str(i*3 + (i-1)*22),lt2,num2str(p2(1,1)),a2,num2str(p2(1,2)),a2,num2str(p3(1,1)),a2,num2str(p3(1,2)),a5);
    nome4 = strcat(lt1,num2str(i*4 + (i-1)*21),lt2,num2str(p3(1,1)),a2,num2str(p3(1,2)),a2,num2str(p4(1,1)),a2,num2str(p4(1,2)),a5);
    nome5 = strcat(lt1,num2str(i*5 + (i-1)*20),lt2,num2str(p4(1,1)),a2,num2str(p4(1,2)),a2,num2str(p5(1,1)),a2,num2str(p5(1,2)),a5);
    nome6 = strcat(lt1,num2str(i*6 + (i-1)*19),lt2,num2str(p5(1,1)),a2,num2str(p5(1,2)),a2,num2str(p6(1,1)),a2,num2str(p6(1,2)),a5);
    nome7 = strcat(lt1,num2str(i*7 + (i-1)*18),lt2,num2str(p6(1,1)),a2,num2str(p6(1,2)),a2,num2str(p7(1,1)),a2,num2str(p7(1,2)),a5);
    nome8 = strcat(lt1,num2str(i*8 + (i-1)*17),lt2,num2str(p7(1,1)),a2,num2str(p7(1,2)),a2,num2str(p8(1,1)),a2,num2str(p8(1,2)),a5);
    nome9 = strcat(lt1,num2str(i*9 + (i-1)*16),lt2,num2str(p8(1,1)),a2,num2str(p8(1,2)),a2,num2str(p9(1,1)),a2,num2str(p9(1,2)),a5);
    nome10 = strcat(lt1,num2str(i*10 + (i-1)*15),lt2,num2str(p9(1,1)),a2,num2str(p9(1,2)),a2,num2str(p10(1,1)),a2,num2str(p10(1,2)),a5);
    nome11 = strcat(lt1,num2str(i*11 + (i-1)*14),lt2,num2str(p10(1,1)),a2,num2str(p10(1,2)),a2,num2str(p11(1,1)),a2,num2str(p11(1,2)),a5);
    nome12 = strcat(lt1,num2str(i*12 + (i-1)*13),lt2,num2str(p11(1,1)),a2,num2str(p11(1,2)),a2,num2str(p12(1,1)),a2,num2str(p12(1,2)),a5);
    nome13 = strcat(lt1,num2str(i*13 + (i-1)*12),lt2,num2str(p12(1,1)),a2,num2str(p12(1,2)),a2,num2str(p13(1,1)),a2,num2str(p13(1,2)),a5);
    nome14 = strcat(lt1,num2str(i*14 + (i-1)*11),lt2,num2str(p13(1,1)),a2,num2str(p13(1,2)),a2,num2str(p14(1,1)),a2,num2str(p14(1,2)),a5);
    nome15 = strcat(lt1,num2str(i*15 + (i-1)*10),lt2,num2str(p14(1,1)),a2,num2str(p14(1,2)),a2,num2str(p15(1,1)),a2,num2str(p15(1,2)),a5);
    nome16 = strcat(lt1,num2str(i*16 + (i-1)*9),lt2,num2str(p15(1,1)),a2,num2str(p15(1,2)),a2,num2str(p16(1,1)),a2,num2str(p16(1,2)),a5);
    nome17 = strcat(lt1,num2str(i*17 + (i-1)*8),lt2,num2str(p16(1,1)),a2,num2str(p16(1,2)),a2,num2str(p17(1,1)),a2,num2str(p17(1,2)),a5);
    nome18 = strcat(lt1,num2str(i*18 + (i-1)*7),lt2,num2str(p17(1,1)),a2,num2str(p17(1,2)),a2,num2str(p18(1,1)),a2,num2str(p18(1,2)),a5);
    nome19 = strcat(lt1,num2str(i*19 + (i-1)*6),lt2,num2str(p18(1,1)),a2,num2str(p18(1,2)),a2,num2str(p19(1,1)),a2,num2str(p19(1,2)),a5);
    nome20 = strcat(lt1,num2str(i*20 + (i-1)*5),lt2,num2str(p19(1,1)),a2,num2str(p19(1,2)),a2,num2str(p20(1,1)),a2,num2str(p20(1,2)),a5);
    nome21 = strcat(lt1,num2str(i*21 + (i-1)*4),lt2,num2str(p20(1,1)),a2,num2str(p20(1,2)),a2,num2str(p21(1,1)),a2,num2str(p21(1,2)),a5);
    nome22 = strcat(lt1,num2str(i*22 + (i-1)*3),lt2,num2str(p21(1,1)),a2,num2str(p21(1,2)),a2,num2str(p22(1,1)),a2,num2str(p22(1,2)),a5);
    nome23 = strcat(lt1,num2str(i*23 + (i-1)*2),lt2,num2str(p22(1,1)),a2,num2str(p22(1,2)),a2,num2str(p23(1,1)),a2,num2str(p23(1,2)),a5);
    nome24 = strcat(lt1,num2str(i*24 + (i-1)*1),lt2,num2str(p23(1,1)),a2,num2str(p23(1,2)),a2,num2str(p24(1,1)),a2,num2str(p24(1,2)),a5);
    nome25 = strcat(lt1,num2str(i*25),lt2,num2str(p24(1,1)),a2,num2str(p24(1,2)),a2,num2str(p25(1,1)),a2,num2str(p25(1,2)),a5);
    
    
    
    
    
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
    
    results(1 + (i-1)*25,1:t1b)=nome1;
    results(2 + (i-1)*25,1:t2b)=nome2;
    results(3 + (i-1)*25,1:t3b)=nome3;
    results(4 + (i-1)*25,1:t4b)=nome4;
    results(5 + (i-1)*25,1:t5b)=nome5;
    
    results(6 + (i-1)*25,1:t6b)=nome6;
    results(7 + (i-1)*25,1:t7b)=nome7;
    results(8 + (i-1)*25,1:t8b)=nome8;
    results(9 + (i-1)*25,1:t9b)=nome9;
    results(10 + (i-1)*25,1:t10b)=nome10;
    
    results(11 + (i-1)*25,1:t11b)=nome11;
    results(12 + (i-1)*25,1:t12b)=nome12;
    results(13 + (i-1)*25,1:t13b)=nome13;
    results(14 + (i-1)*25,1:t14b)=nome14;
    results(15 + (i-1)*25,1:t15b)=nome15;
    
    results(16 + (i-1)*25,1:t16b)=nome16;
    results(17 + (i-1)*25,1:t17b)=nome17;
    results(18 + (i-1)*25,1:t18b)=nome18;
    results(19 + (i-1)*25,1:t19b)=nome19;
    results(20 + (i-1)*25,1:t20b)=nome20;
    
    results(21 + (i-1)*25,1:t21b)=nome21;
    results(22 + (i-1)*25,1:t22b)=nome22;
    results(23 + (i-1)*25,1:t23b)=nome23;
    results(24 + (i-1)*25,1:t24b)=nome24;
    results(25 + (i-1)*25,1:t25b)=nome25;
end


dlmwrite('2Ger.dat',results,'delimiter','');
edit test.dat

