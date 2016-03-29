%load data
gene=load('data.txt');
gene=gene';

%person: id:gene:class
person=load('_metadata_test.txt');

gene=normalization(gene);

%gene=zscore(gene);

person=person(:,3);

%sort type
Type=classification(person,3);

num=(1:length(person))';

select=[Type{1},Type{3}];

%people match after excepting type 2
match=[num,person];

%mean of types
m=[mean(gene(Type{1},:));mean(gene(Type{3},:))];

%mutual distance
dis=(m(1,:)-m(2,:)).^2;


s1=var(gene(Type{1},:));
s3=var(gene(Type{3},:));


px=hist(gene,0.1:0.1:0.9)/size(gene,1);

py1=length(Type{1})/size(gene,1);
py3=length(Type{3})/size(gene,1);


for i = 1:size(gene,2)
    fprintf('i=%d\n',i);
    for j = 1:10
        pxj1=length(find(gene(Type{1},i)>(j-1)/10 & gene(Type{1},i)<=j/10));
        pxj3=length(find(gene(Type{3},i)>(j-1)/10 & gene(Type{3},i)<=j/10));
        pxj1*log2(pxj1/(px(j)*py1))+pxj3*log2(pxj3/(px(j)*py3))+;
    end
end

sum_s=(min(Entropy,[],2))';

%sum_s=(s1+s3)./dis;

%sum_s=ones(1,size(gene(2),2))./dis;

%sum_s=s1+s3;
[ss,index]=sort(sum_s);

x=index(1);
z=index(2);
y=index(3);

plot3(gene(Type{1},x),gene(Type{1},y),gene(Type{1},z),'.');grid
    
hold on
    
plot3(gene(Type{3},x),gene(Type{3},y),gene(Type{3},z),'g.');

