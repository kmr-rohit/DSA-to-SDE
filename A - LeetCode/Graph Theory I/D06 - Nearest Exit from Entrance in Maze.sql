class Solution {
     public:int nearestExit(vector<vector<char>>&maze, vector<int>&ent){
          int m=maze.size(), n=maze[0].size();
          int dx[4] = {0,0,1,-1};
          int dy[4] = {1,-1,0,0};
          
          queue<pair<int,int>> Q;
          Q.push({ent[0], ent[1]});
          maze[ent[0]][ent[1]] = '+';
          int ans = 1;
          
          while(!Q.empty()){
               int size = Q.size();
               while(size--){
                    auto [i,j] = Q.front();
                    Q.pop();
                    
                    for(int c=0; c<4; c++){
                         int X = i + dx[c];
                         int Y = j + dy[c];
                         
                         if(X<0 or Y<0 or X>=m or Y>=n or maze[X][Y]=='+')
                         continue;
                         if(X==0 or Y==0 or X==m-1 or Y==n-1)
                         return ans;
                         
                         Q.push({X,Y});
                         maze[X][Y] = '+';
                    }
               }
               ans++;
          }
          
          return -1;
     }
};