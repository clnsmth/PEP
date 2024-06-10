# PEP-0: PEP Purpose and Guidelines

- Author(s): Mark Servilla
- Status: Draft
- Type: Process
- Created: 2024-05-20
- Updated: 2024-06-10
- Final:

## What is a PEP?

PEP stands for **PASTA Enhancement Proposal** and borrows extensively from the Python community's *Python Enhancement Proposal* process (see [here](https://peps.python.org/pep-0001)). We are fortunate (LOL) that we can reuse the PEP acronym to our advantage. While the first "P" in PEP is for "PASTA", we will extend the PEP process to all technical proposals related to projects of the Environmental Data Initiative (EDI).

A PEP is an open and transparent document for EDI and its community that serves as a blueprint of change within the technical operation of EDI. Its purpose is to systematically record information that proposes *significant* additions or modifications (including removal) to the design or implementation of EDI developed software, processes, and technical policies. PEPs will be reviewed and decided upon by the EDI Technical Steering Council (ETSC; pronounced "et-c"). We emphasize that a PEP should only be written when considering a major technical change within EDI, while avoiding its use for bug fixes or minor enhancements such as cosmetic improvements to UI components. When in doubt, ask the steering council if a PEP would be required.

PEPs are stored as text files using Markdown formatting in a version-controlled repository ([GitHub](https://github.com/PASTAplus/PEP)) allowing their history to be preserved. This means anyone can review how a PEP evolved over time, either through git commands or by browsing the history on GitHub.

In general, the PEP process includes the following steps:

1. Proposal Submission: Anyone can propose a change to EDI's technical operations by writing a PEP that outlines the problem to be addressed, the proposed solution, and its potential impact on EDI's operations. PEPs must be written using the EDI PEP [template](https://github.com/PASTAplus/PEP/blob/main/pep-template.md) and be submitted as a pull request to the [PEP repository](https://github.com/PASTAplus/PEP). It will then be assigned a PEP number and officially enter the "Draft" state.
2. Review: The new PEP will change state from "Draft" to "Review" once the ETSC begins its review process. At this time, a PEP GitHub issue is created as the official means to convey feedback between ETSC, the PEP authors, and any community member wishing to comment on the PEP. During this process, the ETSC may ask the PEP authors for additional information, including modifications to the PEP, or to seek feedback on the PEP from the external community most affected by any proposed change. The PEP will remain in the "Review" state until the ETSC is satisfied that the proposal is ready to be accepted, at which point the state changes from "Review" to "Accepted". The ETSC may also decide to reject the PEP at this stage if it is deemed unnecessary or not feasible by adding a section to the PEP that details why it was rejected. If rejected, the state will change from "Review" to "Rejected" and the date of rejection will be entered into the "Final" section of the Preamble.
3. Implementation: If a PEP is accepted, the ETSC will identify the appropriate EDI technical lead who will be in charge of the PEP's implementation. The technical lead will be responsible for ensuring that all required steps (e.g. GitHub stories, use-cases, and tasks) are in place before work begins on PEP. The PEP will remain in the "Accepted" state until the implementation is complete, at which point the state will change to "Implemented" and the date of completed work will be entered into the "Final" section of the Preamble.

## What goes into a PEP proposal document?

A PEP should be about a single and focused topic or idea. It should include a technical description of what is being proposed, along with the rationale behind it (a business case or justification). The more focused a PEP the better chances of it being accepted and accomplished. PEPs that are too vague or composed of multiple ideas will be rejected. Major sections of a PEP include:

1. PEP number and title: The PEP number should be requested from the PEP technical steering council, while the title should be short, concise, and relevant to the PEP (see this PEP).
2. Premable: The preamble or header information (see this PEP).
    - Author(s): List of PEP authors or champions
    - Contact: Email of primary contact for PEP
    - Status: One of *Draft*, *Review*, *Accepted* (or *Rejected*), or *Implemented*
    - Type: One of *Application (software)*, *Process (operational)*, or *Policy*
    - Created: Date PEP was submitted
    - Updated: Date PEP was last updated or modified
    - Final: Date PEP entered the final state
3. Introduction: A brief statement about the PEP topic or idea.
4. Justification: A statement why the PEP should be considered, the benefits it will deliver, and an estimation of effort (if possible).
5. Detailed Explanation: A detailed explanation of the PEP topic or idea, including design decisions, security implications, use cases, example implementations, and if any change affects backward compatibility.
6. Alternative solution(s): A list of alternative solutions that were considered, but were rejected, along with reasons why they were rejected.
7. Open issue(s): A list of open issues that require resolution before the PEP can be adopted and how they will be mitigated.

## PEP Audience

The expected audience for a PEP is two-fold: the primary user is an internal developer or technical editor of EDI, while the secondary user is a community member.
