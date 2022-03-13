#define vvi vector<vector<int>>
class Solution{
     public:vvi allPathsSourceTarget(vvi &G){
          vvi ans;
          vector<int> temp;
          
          dfs(G, ans, temp, 0);
          return ans;
     }
     
     private:void dfs(vvi &G, vvi &ans, vector<int> temp, int idx){
          temp.push_back(idx);
          
          if(idx == G.size()-1){
               ans.push_back(temp);
               return;
          }
          
          for(int &node : G[idx])
               dfs(G, ans, temp, node);
          
          return;
     }
};