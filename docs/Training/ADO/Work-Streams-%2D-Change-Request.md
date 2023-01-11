::: mermaid
 graph TD;
    A([Requirement is generated in specific teams' backlog])-->B([CR generated as child predecessor])
    B-->C[Are multiple teams involved?];
    C-->D[[No, only one team]];
    C-->E[[Yes, multiple teams involved]];
    D-->F[No predecessor tasks required];
    E-->G([Generate predecessor tasks for each team])
    G-->H
    F-->H[Save CR];
    H-->Z[IMPORTANT!: CR Initiator Follows CR WIT];
    Z-->Q[When ready for CAB consideration move to IT Ops backlog]
    Z-->I[Proposed];
    I-->J[Active];
    J-->K[Scheduled];
    K-->L[Resolved];
    L-->M[Initiator is notified of resolution];
    M-->N[Is CR Closed];
    N-->O[Yes.  Initiator closes CR]
    N-->P[No, Initiator changes CR state to Active];
    P-->J;
:::

Public: Yes