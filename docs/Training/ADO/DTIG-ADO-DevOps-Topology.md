# DTIG ADO DevOps Topology

::: mermaid
 graph TD;
  id1[[Client Projects]]-->D[DTIG]
  id2(Sales and Marketing)-->D
  id3(Finance and Legal)-->D
  id4[MicroProjects]-->D
  id5[[Support Client Tickets]]-->D
  id6[[Support Client Billable Hours]]-->D
  A[Development]-->C[DevOps]
  B[ITOps]-->C[DevOps]    
  C-->D
  D-->E[DTIG Founders]
  F[Sales]-->id2
  G[Marketing]-->id2
  H[Finance]-->id3
  I[Legal]-->id3
  M[DTIG-MP-WWW]-->id4
:::

Public: Yes