# PEP-0: PEP Purpose and Guidelines

- Author(s): Mark Servilla
- Status: Active
- Type: Process
- Created: 2024-05-20
- Updated: 2024-05-20
- Adopted:

## What is a PEP?

PEP stands for **PASTA Enhancement Proposal** and borrows extensively from the Python community's *Python Enhancement Proposal* process (see [here](https://peps.python.org/pep-0001)). We are fortunate (LOL) that we can reuse the PEP acronym to our advantage. While the first "P" in PEP is for "PASTA", we will extend the PEP process to all technical proposals related to projects of the Environmental Data Initiative (EDI).

A PEP is an open and transparent document that serves as a blueprint of change for EDI and its community. Its purpose is to systematically record information that proposes *significant* additions or modifications (including removal) to the design or implementation of EDI developed software, processes, or technical policies. PEPs will be reviewed and decided upon by the EDI technical steering council. We emphasize that a PEP should only be written when considering a major technical change within EDI, while avoiding its use for bug fixes or minor enhancements such as comsmetic improvements to UI components. When in doubt, ask the steering council if a PEP would be required.

PEPs are stored as text files using Markdown formatting in a version-controlled repository ([GitHub](https://github.com/PASTAplus/PEP)) allowing their history to be preserved. This means anyone can review how a PEP evolved over time, either through git commands or by browsing the history on GitHub.

In general, the PEP process includes the following steps:

1. Proposal: Anyone can propose a change to EDI's technical operations by writing a PASTA Enhancement Proposal (PEP). PEPs outline the problem, the proposed solution, and its potential impact on EDI's operations.
2. Discussion: PEPs are then reviewed and discussed by the EDI Technical Steering Council (TSC). If the TSC believes the PEP should be accepted, the council will notify the authors of the PEP to engage the community to receive feedback that helps refine the proposal and assess its viability.
3. Decision: The TSC makes the final decision on whether or not to accept a PEP based on the community feedback and their own evaluation of the proposal.
4. Implementation: If a PEP is accepted, the TSC will identify the appropriate EDI staff to perform the implementation, including setting up the necessary Git Issues to effectively track progress of the PEP.

## What goes into a PEP proposal document?

A PEP should be about a single and focused topic or idea. It should include a technical description of what is being proposed, along with the rationale behind it (a business case or justification). The more focused a PEP the better chances of it being accepted and accomplished. PEPs that are too vague or composed of multiple ideas will be rejected. Major sections of a PEP include:

1. PEP number and title: The PEP number should be requested from the PEP technical steering council, while the title should be short, concise, and relevant to the PEP (see this PEP).
2. Premable: The preamble or header information (see this PEP).
    - Author(s): List of PEP authors or champions
    - Contact: Email of primary contact for PEP
    - Status: One of *Active*, *Adopted*, or *Rejected*
    - Type: One of *Application (software)*, *Process (operational)*, or *Policy*
    - Created: Date PEP was submitted
    - Update: Date PEP was last updated or modified
    - Adopted (or Rejected): Date PEP was adoption or rejection
3. Introduction: A brief statement about the PEP topic or idea.
4. Justification: A statement why the PEP should be considered, the benefits it will deliver, and an estimation of effort (if possible).
5. Detailed Explanation: A detailed explanation of the PEP topic or idea, including design decisions, security implications, use cases, example implementations, and if any change affects backward compatibility.
6. Alternative solution(s): A list of alternative solutions that were considered, but were rejected, along with reasons why they were rejected.
7. Open issue(s): A list of open issues that require resolution before the PEP can be adopted and how they will be mitigated.

## PEP Audience

The expected audience for a PEP is two-fold: the primary user is an internal developer or technical editor of EDI, while the secondary user is a community member.
