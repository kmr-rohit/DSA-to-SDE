#include <bits/stdc++.h>
using namespace std;

void merge(int a[], int l, int mid, int r){
      int n1 = mid-l+1, n2 = r-mid;
      int A[n1], B[n2];

      for(int i=0; i<n1; i++) A[i] = a[l+i];
      for(int i=0; i<n2; i++) B[i] = a[mid+1+i];

      int i=0, j=0, k=l;
      while(i<n1 && j<n2){
            if(A[i] < B[j]){
                  a[k] = A[i];
                  k++; i++;
            }
            else{
                  a[k] = B[j];
                  k++; j++;
            }
      }

      while(i<n1){
            a[k] = A[i];
            k++; i++;
      }

      while(j<n2){
            a[k] = B[j];
            k++; j++;
      }
}

void mergeSort(int a[], int l, int r){
      if(l<r){
            int mid = (l+r)/2;
            mergeSort(a, l, mid);
            mergeSort(a, mid+1, r);

            merge(a, l, mid, r);
      }
}

int main(){
      int n; cin>>n;
      int a[n]; for(int i=0; i<n; i++) cin>>a[i];

      mergeSort(a, 0, n-1);

      for(int i=0; i<n; i++) cout<<a[i]<<" ";
      return 0;
}