%%January

z = find(all_Jans(:,4)==0);
t0h = all_Jans(z,:);
z = find(all_Jans(:,4)==1);
 t1h = all_Jans(z,:);
z = find(all_Jans(:,4)==2);
 t2h = all_Jans(z,:);
z = find(all_Jans(:,4)==3);
 t3h = all_Jans(z,:);
z = find(all_Jans(:,4)==4);
 t4h = all_Jans(z,: );
z = find(all_Jans(:,4)==5);
 t5h = all_Jans(z,:);
z = find(all_Jans(:,4)==6);
 t6h = all_Jans(z,:);
z = find(all_Jans(:,4)==7);
 t7h = all_Jans(z,:);
z = find(all_Jans(:,4)==8);
 t8h = all_Jans(z,:);
z = find(all_Jans(:,4)==9);
 t9h = all_Jans(z,:);
z = find(all_Jans(:,4)==10);
 t10h = all_Jans(z,:);
z = find(all_Jans(:,4)==11);
 t11h = all_Jans(z,:);
z = find(all_Jans(:,4)==12);
 t12h = all_Jans(z,:);
z = find(all_Jans(:,4)==13);
 t13h = all_Jans(z,:);
z = find(all_Jans(:,4)==14);
 t14h = all_Jans(z,:);
z = find(all_Jans(:,4)==15);
 t15h = all_Jans(z,:);
z = find(all_Jans(:,4)==16);
 t16h = all_Jans(z,:);
z = find(all_Jans(:,4)==17);
 t17h = all_Jans(z,:);
z = find(all_Jans(:,4)==18);
 t18h = all_Jans(z,:);
z = find(all_Jans(:,4)==19);
 t19h = all_Jans(z,:);
z = find(all_Jans(:,4)==20);
 t20h = all_Jans(z,:);
z = find(all_Jans(:,4)==21);
 t21h = all_Jans(z,:);
z = find(all_Jans(:,4)==22);
 t22h = all_Jans(z,:);
z = find(all_Jans(:,4)==23);
 t23h = all_Jans(z,:);
%% January for loops

interval = length(t0h)/31;
a = 1;
b=31;
Jan0_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan0_HT)
    Jan0_HT(j,1:2) = mean(t0h(a:b,14:15));
    a=a+31;
    b=b+31;
end

interval = length(t1h)/31;
a = 1;
b=31;
Jan1_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan1_HT)
    Jan1_HT(j,1:2) = mean(t1h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,Jan0_HT,Jan1_HT);

interval = length(t2h)/31;
a = 1;
b=31;
Jan2_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan2_HT)
    Jan2_HT(j,1:2) = mean(t2h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan2_HT);

interval = length(t3h)/31;
a = 1;
b=31;
Jan3_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan3_HT)
    Jan3_HT(j,1:2) = mean(t3h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan3_HT);

interval = length(t4h)/31;
a = 1;
b=31;
Jan4_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan4_HT)
    Jan4_HT(j,1:2) = mean(t4h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan4_HT);


interval = length(t5h)/31;
a = 1;
b=31;
Jan5_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan5_HT)
    Jan5_HT(j,1:2) = mean(t5h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan5_HT);


interval = length(t6h)/31;
a = 1;
b=31;
Jan6_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan6_HT)
    Jan6_HT(j,1:2) = mean(t6h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan6_HT);

interval = length(t7h)/31;
a = 1;
b=31;
Jan7_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan7_HT)
    Jan7_HT(j,1:2) = mean(t7h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan7_HT);

interval = length(t8h)/31;
a = 1;
b=31;
Jan8_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan8_HT)
    Jan8_HT(j,1:2) = mean(t8h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan8_HT);

interval = length(t9h)/31;
a = 1;
b=31;
Jan9_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan9_HT)
    Jan9_HT(j,1:2) = mean(t9h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan9_HT);

interval = length(t10h)/31;
a = 1;
b=31;
Jan10_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan10_HT)
    Jan10_HT(j,1:2) = mean(t10h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan10_HT);


interval = length(t11h)/31;
a = 1;
b=31;
Jan11_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan11_HT)
    Jan11_HT(j,1:2) = mean(t11h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan11_HT);

interval = length(t12h)/31;
a = 1;
b=31;
Jan12_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan12_HT)
    Jan12_HT(j,1:2) = mean(t12h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan12_HT);

interval = length(t13h)/31;
a = 1;
b=31;
Jan13_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan13_HT)
    Jan13_HT(j,1:2) = mean(t13h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan13_HT);

interval = length(t14h)/31;
a = 1;
b=31;
Jan14_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan14_HT)
    Jan14_HT(j,1:2) = mean(t14h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan14_HT);

interval = length(t15h)/31;
a = 1;
b=31;
Jan15_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan15_HT)
    Jan15_HT(j,1:2) = mean(t15h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan15_HT);

interval = length(t16h)/31;
a = 1;
b=31;
Jan16_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan16_HT)
    Jan16_HT(j,1:2) = mean(t16h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan16_HT);

interval = length(t17h)/31;
a = 1;
b=31;
Jan17_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan17_HT)
    Jan17_HT(j,1:2) = mean(t17h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan17_HT);


interval = length(t18h)/31;
a = 1;
b=31;
Jan18_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan18_HT)
    Jan18_HT(j,1:2) = mean(t18h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan18_HT);

interval = length(t19h)/31;
a = 1;
b=31;
Jan19_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan19_HT)
    Jan19_HT(j,1:2) = mean(t19h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan19_HT);

interval = length(t20h)/31;
a = 1;
b=31;
Jan20_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan20_HT)
    Jan20_HT(j,1:2) = mean(t20h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan20_HT);

interval = length(t21h)/31;
a = 1;
b=31;
Jan21_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan21_HT)
    Jan21_HT(j,1:2) = mean(t21h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan21_HT);


interval = length(t22h)/31;
a = 1;
b=31;
Jan22_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan22_HT)
    Jan22_HT(j,1:2) = mean(t22h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan22_HT);

interval = length(t23h)/31;
a = 1;
b=31;
Jan23_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Jan23_HT)
    Jan23_HT(j,1:2) = mean(t23h(a:b,14:15));
    a=a+31;
    b=b+31;
end
JanTot_HT = cat(1,JanTot_HT,Jan23_HT);

%% July 
z = find(all_Juls(:,4)==0);
t0hr = all_Juls(z,:);
z = find(all_Juls(:,4)==1);
 t1hr = all_Juls(z,:);
z = find(all_Juls(:,4)==2);
 t2hr = all_Juls(z,:);
z = find(all_Juls(:,4)==3);
 t3hr = all_Juls(z,:);
z = find(all_Juls(:,4)==4);
 t4hr = all_Juls(z,:);
z = find(all_Juls(:,4)==5);
 t5hr = all_Juls(z,:);
z = find(all_Juls(:,4)==6);
 t6hr = all_Juls(z,:);
z = find(all_Juls(:,4)==7);
 t7hr = all_Juls(z,:);
z = find(all_Juls(:,4)==8);
 t8hr = all_Juls(z,:);
z = find(all_Juls(:,4)==9);
 t9hr = all_Juls(z,:);
z = find(all_Juls(:,4)==10);
 t10hr = all_Juls(z,:);
z = find(all_Juls(:,4)==11);
 t11hr = all_Juls(z,:);
z = find(all_Juls(:,4)==12);
 t12hr = all_Juls(z,:);
z = find(all_Juls(:,4)==13);
 t13hr = all_Juls(z,:);
z = find(all_Juls(:,4)==14);
 t14hr = all_Juls(z,:);
z = find(all_Juls(:,4)==15);
 t15hr = all_Juls(z,:);
z = find(all_Juls(:,4)==16);
 t16hr = all_Juls(z,:);
z = find(all_Juls(:,4)==17);
 t17hr = all_Juls(z,:);
z = find(all_Juls(:,4)==18);
 t18hr = all_Juls(z,:);
z = find(all_Juls(:,4)==19);
 t19hr = all_Juls(z,:);
z = find(all_Juls(:,4)==20);
 t20hr = all_Juls(z,:);
z = find(all_Juls(:,4)==21);
 t21hr = all_Juls(z,:);
z = find(all_Juls(:,4)==22);
 t22hr = all_Juls(z,:);
z = find(all_Juls(:,4)==23);
 t23hr = all_Juls(z,:);
 %% July for loops
 
 interval = length(t0h)/31;
a = 1;
b=31;
Ju0_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju0_HT)
    Ju0_HT(j,1:2) = mean(t0hr(a:b,14:15));
    a=a+31;
    b=b+31;
end

interval = length(t1h)/31;
a = 1;
b=31;
Ju1_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju1_HT)
    Ju1_HT(j,1:2) = mean(t1hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,Ju0_HT,Ju1_HT);

interval = length(t2h)/31;
a = 1;
b=31;
Ju2_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju2_HT)
    Ju2_HT(j,1:2) = mean(t2hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju2_HT);

interval = length(t3h)/31;
a = 1;
b=31;
Ju3_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju3_HT)
    Ju3_HT(j,1:2) = mean(t3hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju3_HT);

interval = length(t4h)/31;
a = 1;
b=31;
Ju4_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju4_HT)
    Jan4_HT(j,1:2) = mean(t4hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju4_HT);


interval = length(t5h)/31;
a = 1;
b=31;
Ju5_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju5_HT)
    Ju5_HT(j,1:2) = mean(t5hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju5_HT);


interval = length(t6h)/31;
a = 1;
b=31;
Ju6_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju6_HT)
    Ju6_HT(j,1:2) = mean(t6hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju6_HT);


interval = length(t7h)/31;
a = 1;
b=31;
Ju7_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju7_HT)
    Ju7_HT(j,1:2) = mean(t7hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju7_HT);


interval = length(t8h)/31;
a = 1;
b=31;
Ju8_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju8_HT)
    Ju8_HT(j,1:2) = mean(t8hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju8_HT);


interval = length(t9h)/31;
a = 1;
b=31;
Ju9_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju9_HT)
    Ju9_HT(j,1:2) = mean(t9hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju9_HT);


interval = length(t10h)/31;
a = 1;
b=31;
Ju10_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju10_HT)
    Ju10_HT(j,1:2) = mean(t10hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju10_HT);


interval = length(t11h)/31;
a = 1;
b=31;
Ju11_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju11_HT)
    Ju11_HT(j,1:2) = mean(t11hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju11_HT);


interval = length(t12h)/31;
a = 1;
b=31;
Ju12_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju12_HT)
    Ju12_HT(j,1:2) = mean(t12hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju12_HT);


interval = length(t13h)/31;
a = 1;
b=31;
Ju13_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju13_HT)
    Ju13_HT(j,1:2) = mean(t13hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju13_HT);



interval = length(t14h)/31;
a = 1;
b=31;
Ju14_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju14_HT)
    Ju14_HT(j,1:2) = mean(t14hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju14_HT);


interval = length(t15h)/31;
a = 1;
b=31;
Ju15_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju15_HT)
    Ju15_HT(j,1:2) = mean(t15hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju15_HT);


interval = length(t16h)/31;
a = 1;
b=31;
Ju16_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju16_HT)
    Ju16_HT(j,1:2) = mean(t16hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju16_HT);


interval = length(t17h)/31;
a = 1;
b=31;
Ju17_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju17_HT)
    Ju17_HT(j,1:2) = mean(t17hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju17_HT);


interval = length(t18h)/31;
a = 1;
b=31;
Ju18_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju18_HT)
    Ju18_HT(j,1:2) = mean(t18hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju18_HT);


interval = length(t19h)/31;
a = 1;
b=31;
Ju19_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju19_HT)
    Ju19_HT(j,1:2) = mean(t19hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju19_HT);


interval = length(t20h)/31;
a = 1;
b=31;
Ju20_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju20_HT)
    Ju20_HT(j,1:2) = mean(t20hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju20_HT);



interval = length(t21h)/31;
a = 1;
b=31;
Ju21_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju21_HT)
    Ju21_HT(j,1:2) = mean(t21hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju21_HT);




interval = length(t22h)/31;
a = 1;
b=31;
Ju22_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju22_HT)
    Ju22_HT(j,1:2) = mean(t22hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju22_HT);



interval = length(t23h)/31;
a = 1;
b=31;
Ju23_HT = NaN(interval,2);
%%where (:,1)=humidity  and  (:,2)=temp
for j=1:length(Ju23_HT)
    Ju23_HT(j,1:2) = mean(t23hr(a:b,14:15));
    a=a+31;
    b=b+31;
end
JuTot_HT = cat(1,JuTot_HT,Ju23_HT);


 
% interim = NAD;
% NewMeans = interim(2:3471,:);
% mean(NAD1(FullDaySortedind(1,1):FullDaySortedind(2,1),:));
% for i = 1:length(FullDaySortedind)-3
%     x = z;
%     if mod(i,2) ~= 0 
%         MeanCalc = mean(NAD1(FullDaySortedind(i+2,1):FullDaySortedind(i+3,1),:))
%         NewMeans = cat(1,CompiledMeans,MeanCalc);
%   
%         y = mean(NAD);
%         z = cat(1,x,y);
%     end 
% end