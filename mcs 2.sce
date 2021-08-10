
clc;
clear;
xdel(winsid());
disp("EXP 2 Name.Navnish Shettigar Roll No-35")
// Generation of 7 bit PN sequence
// Coefficient of polynomial
a1=1;
a2=1;
a3=1;
// Initial states of flip flop
R(1)=1;
R(2)=0;
R(3)=0;
m=3;
disp('output after every clock pulse');
for i=1:((2^m)-1)//shift of bit in each register for every clock pulse
 r1=R(1);
 r2=R(2);
 r3=R(3);
 PN(i)=R(3);
 //if(a1==0)
R1=bitxor(r2,r3);//input of register is modulo2 addition of R2 and R3
R(3)=R(2);
R(2)=R(1);
R(1)=R1;
disp(R);
end
disp('PN sequence is');
disp(PN);//Display 7 bit PN sequence
c1=[1 -1 -1];//information of user 1
for j=1:1:length(PN)//0 replaced with -1 in PN sequence
 if PN(j)==0 then
 PN(j)=PN(j)-1;
 else PN(j)=PN(j)+0;
 end

 end
 disp(PN);
spreaded_sig=[c1(1).*PN' c1(2).*PN' c1(3).*PN']//Spreading of data of user 1 using PN sequence
detect_code=[spreaded_sig(1:7).*PN' spreaded_sig(8:14).*PN' spreaded_sig(15:21).*PN'];//at receiver,recieved spreaded signal multiplied with PN sequnce
corr_code=[sum(detect_code(1:7)) sum(detect_code(8:14)) sum(detect_code(15:21))];
rec_sig=(1/7).*corr_code;//get information form received signal
disp('received signal with correct PN sequence is');
disp(rec_sig);//received data of user 1 at receiver:1 -1 -1
//Despreading with shifted PN sequence
shift_fact=input('enter the shifting factor' );
l=1;
 k=shift_fact-1;
for i=1:1:length(PN) //generation of shifted PN sequence as per entered shifting factor
 if i<=shift_fact
 shift_seq(i)=PN(length(PN)-k);
 k=k-1;
 else i>shift_fact 
 shift_seq(i)=PN(l);
 l=l+1;
 end
 end
 disp('shifted sequence is');
 disp(shift_seq');//display shifted sequence
//despreading using shifted PN sequence
detect_shift_code=[spreaded_sig(1:7).*shift_seq' spreaded_sig(8:14).*shift_seq'spreaded_sig(15:21).*shift_seq'];
corr_shift_code=[sum(detect_shift_code(1:7)) sum(detect_shift_code(8:14)) sum(detect_shift_code(15:21))];
rec_shift_sig=(1/7).*corr_shift_code;
 disp("recieved signal with shifted PN sequence is");
 disp(rec_shift_sig);//Invalid data received beacuse signal was despreded with shifted PN sequence
 disp('which is not valid transmitted signal');
