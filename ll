#define ll long long int

// creating ll

class linked_list{
public:
ll data;
linked_list *next;

linked_list(){
this->next=NULL;
}

linked_list(ll data){
this->data=data;
this->next=NULL;
}
}

linked_list *add(ll data,linked_list *head){
// case:1
if(head==NULL){
linked_list *temp=new linked_list(data);
head=temp;
}
else{
//case :2

linked_list *temp=head;
while(temp->next!=NULL)
temp=temp->next;
temp->next=new linked_list(data);
}
return head;

}

void print(linked_list *head){
auto temp=head;
while(temp!=NULL){
cout<<temp->data<<"";
temp=temp->next;
}
cout<<endl;
}

ll middle_element(linked_list *head){
auto sp=head,fp=head;
while(fp!=NULL and fp->next!=NULL){
sp=sp->next;
fp=fp->next->next;
}
return sp->data;
}

