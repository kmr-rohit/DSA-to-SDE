class Solution {
     public:int closedIsland(vector<vector<int>>&grid) {
          int rows=grid.size(), cols=grid[0].size();
          int ans = 0;
          
          for(int i=0; i<rows; i++) for(int j=0; j<cols; j++){
               if(i==0 or j==0 or i==rows-1 or j==cols-1)
                    fill(grid, i, j);
          }
          
          for(int i=1; i<rows-1; i++) for(int j=1; j<cols-1; j++){
               if(grid[i][j] == 0){
                    ans++;
                    fill(grid, i, j);
               }
          }
          
          return ans;
     }
     
     private:void fill(vector<vector<int>>&grid, int i, int j){
          if(i<0 or j<0 or i>=grid.size() or j>=grid[0].size() or grid[i][j]!=0) return;
          
          grid[i][j] = -1;
          
          fill(grid, i+1, j);
          fill(grid, i, j-1);
          fill(grid, i, j+1);
          fill(grid, i-1, j);
          return;
     }
};