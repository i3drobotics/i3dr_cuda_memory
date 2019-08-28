#include <iostream>
#include <math.h>
#include <cudaMem.h>

int main(void)
{
  cudaMem cudaMemory;
  std::cout << "used: " << (float(cudaMemory.getMemUsed()))/1073741824. <<  " GB free: " << float(cudaMemory.getMemFree())/1073741824. << " GB total: " << float(cudaMemory.getMemTotal())/1073741824. << " GB" << std::endl;
  
  return 0;
}