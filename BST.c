eetinclude<stdio.h>
#include<stdlib.h>

struct BstNode{
int info;
struct BstNode *llink;
struct BstNode *rlink;
};
typedef struct BstNode *BST;
BST createNode()
{
	BST x;
	x=(BST)malloc(sizeof(struct BstNode));
	if(x==NULL)
	{
	printf("out of Memeory");
		exit(0);
	} 
return x;
}
void predorder(BST root)
{
if(root == NULL) return;
	printf("%d",root->info);
	preorder(root->llink);
	preorder(root->rlink);
} 
void postorder(BST root)
{
if(root == NULL) return;
	
	postorder(root->llink);
	postorder(root->rlink);
	printf("%d",root->info);
}
void inorder(BST root)
{
	if(root == NULL) return ;
	inorder(root->llink);
	printf("%d",root->info);
	inorder(root->rlink);
}
BST insert(BST root,int data)
{
BST temp;
temp->llink=NULL;
temp->info=data;
temp->rlink=NULL;
if(root == NULL)
	return temp;
BST cur,prev;
prev=NULL;
cur=root;

while(cur != NULL)
{
prev=cur;
	if(data == cur->info)
	{
		printf("Duplicates not allow\n");
		free(temp);
		return root;
	}
	if(data < cur->info)
		temp=cur->llink;
	else
		temp=cur->rlink;
}
if(data < prev->info)
	prev->llink=temp;
else
	prev->rlink=temp;
return root;	

}
void display(BST root,int level)
{
int i;
if(root==NULL)
	return;
display(root->rlink,level+1);
for(i=0;i<level;i++)
	printf(" ");
printf("%d\n",root->info);
display(root->llink,level+1);
}
int main()
{
BST root,cur;
int ch,data;
root=NULL;
for(;;)
{
	printf("1.Insert 2.Preorder 3.Postorder 4.Inorder 5.Search \n");
	scanf("%d",&ch);
	switch(ch)
	{
	 case 1:printf("Enter the data to be insert\n");
		scanf("%d",&data);
		root=insert(root,data);
		break;
	case 2:if(root == NULL)
		{
			printf("Tree is empty");
			break;
		}	
		printf("The given tree  \n");
		display(root,1);
		printf("PREORDER traversal \n");
		preorder(root);
		printf("\n");
		break;
	case 3:if(root == NULL)
		{
			printf("Tree is EMpty\n");
			break;}
		printf("The Given tree int eh form of \n");
		display(root,1);
		printf("POST ORDER :\n");
		postorder(root);
		break;
	case 4:if(root == NULL)
                {
                        printf("Tree is EMpty\n");
                        break;}
                printf("The Given tree int the  form of \n");
                display(root,1);
                printf("IN ORDER :\n");
                inorder(root);
                break;
	case 5:printf("Enter the item to be Search \n");
		scanf("%d",&data);
		//cur=search(root,item);
		if(cur==NULL)
			printf("Search UN_Successfully ");
		else
			printf("Search Successfully");
		break;
	default:break;
	}
}

			
	}








