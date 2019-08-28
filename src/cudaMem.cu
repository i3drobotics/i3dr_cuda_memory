#include <cudaMem.h>

void cudaMem::calcMem(){
  size_t mf, ma;
  cudaMemGetInfo(&mf, &ma);
  memFree = mf;
  memUsed = ma-mf;
  memTotal = ma;
}

size_t cudaMem::getMemFree(){
  return memFree;
}

size_t cudaMem::getMemUsed(){
  return memUsed;
}

size_t cudaMem::getMemTotal(){
  return memTotal;
}