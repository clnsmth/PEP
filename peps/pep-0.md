# PEP 0 - PEP Purpose and Guidelines

- Author(s): Mark Servilla
- Status: Active
- Type: Process
- Created: 2024-05-20
- Updated: 2024-05-20
- Adopted:

## What is a PEP?

PEP stands for **PASTA Enhancement Proposal** and borrows extensively from the Python community's *Python Enhancement Proposal* process (see [here](https://peps.python.org/pep-0001)). We are fortunate (LOL) that we can reuse the PEP acronym to our advantage (while the first "P" in PEP is for "PASTA", we will extend it to all technical proposals related to the Environmental Data Initiative (EDI) project).

A PEP is a document that serves as a blueprint for EDI and its community. Its purpose is to propose *significant* additions or modifications (including removal) to the design or implementation of EDI developed software, processes, or technical policy. PEPs will be reviewed and decided upon by the EDI technical steering council. We emphasize that a PEP should only be written when considering a major technical change within EID, while avoiding its use for bug fixes or minor enhancements such as comsmetic improvements to UI components. When in doubt, ask the steering council if a PEP would be required.

In general, the PEP process includes the following steps:

    1. Proposal: Anyone can propose a change to EDI's technical operations by writing a PASTA Enhancement Proposal (PEP). PEPs outline the problem, the proposed solution, and its potential impact on EDI's operations.
    2. Discussion: PEPs are then reviewed and discussed by the EDI technical steering council.If the technical steering council believes the PEP should be reviewed, the council will request the authors of the PEP to engage the community  This feedback helps refine the proposal and assess its viability.
    3. Decision: The Steering Council makes the final decision on whether or not to accept a PEP based on the community feedback and their own evaluation of the proposal.
    4. Implementation: If a PEP is accepted, core developers implement the change in the Python codebase, and it is included in a future Python release.

Each PEP should contain a clear technical outline of what is being proposed, along with the rationale behind it. The PEP process will gather feedback from the community, and record design decisions made for the proposals. PEPs provide a written document ensuring both transparency and  The author of a PEP is responsible for building concensus within the community and noting any disagreements or concerns.


Since PEPs are stored as text files in a version-controlled repository, their history is preserved. This means anyone can review how a PEP evolved over time, either through git commands or by browsing the history on [GitHub](https://github.com/PASTAplus/PEP).

## PEP Audience

The expected audience for a PEP is two-fold: the primary user is an internal developer or technical editor of EDI, while the secondary user is a community member.
