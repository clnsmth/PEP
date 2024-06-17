# PEP-2: Add level of abstraction between ACLs and IdPs

- Author(s): Roger Dahl
- Contact: dahl@unm.edu
- Status: Draft
- Type: Application
- Created:
- Reviewed:
- Final:


## Introduction

We support multiple IdPs, but the current implementation of ACLs is tightly coupled to the IdP, causing the particular IdP that was used by a given user to sign in, to affect authorization and access for the user in the system. This PEP proposes adding a level of abstraction between ACLs and IdPs, in the form of an internal user ID (IUID), to resolve this and other issues.


## Issue Statement

We support multiple IdPs for sign in. Currently, user information provided by the IdP with which the user signed in, is used directly in package entity access control lists (ACLs), and the user's PASTA token. This has the following issues:

- A given user may look like different users to the system, depending on the IdP with which they signed in. This then affects the user's permissions and access during the session.

- If the user changes their information with the IdP, such as their email address, they may lose access to their data, unless we then also update all their ACLs. Updating the ACLs probably requires manual intervention in order to verify that the 'new' user is the same as the 'old' user.

- If the IdP changes the format of the information they provide, it may cause issues similar to those caused by the user changing their own information.

- A user that uses multiple IdPs cannot see all their data in one place.

- The person who assigns access to entities must know how the user signs in, and depending on that information, use their email address, ORCID, or LDAP DN in the ACLs.


## Proposed Solution

We will add a level of abstraction between ACLs and IdPs, in the form of an internal UID (IUID). The IUID uniquely identifies a user in the system. 

Instead of using information provided by the IdPs directly in the ACLs, we will use the IUID in the ACLs and tokens, and store mappings to this single IUID for all IdPs with which the user has signed in.

When a user signs in, the system will look up the IUID for the user, based on the information provided by the IdP. If the IUID is not found, a new IUID will be created for the user. The system will then use the IUID in the ACLs and tokens.

This resolves the issues mentioned in the Issue Statement. In addition, this has the following benefits:

- We can change or add IdPs in the future, without having to update the ACLs.

- It provides a single source of truth for information about a given user in the system.

- This change will work well with the concept of a user profile, and with group management features which we are currently planning.


## Open issue(s)


## References

