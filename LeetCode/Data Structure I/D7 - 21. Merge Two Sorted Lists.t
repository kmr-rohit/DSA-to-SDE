class Solution {
public:
    ListNode* mergeTwoLists(ListNode* list1, ListNode* list2) {
        if(!list1) return list2;
        if(!list2) return list1;
        
        ListNode *ans = new ListNode(0);
        ListNode *temp = ans;
        
        while(list1 and list2){
            if(list1->val < list2->val){
                temp->next = list1;
                list1 = list1->next;
            }
            else{
                temp->next = list2;
                list2 = list2->next;
            }
            temp = temp->next;
        }
        
        if(list1) temp->next = list1;
        else temp->next = list2;
        
        return ans->next;
    }
};

//TC: O(M+N)
// SC: O(M+N)