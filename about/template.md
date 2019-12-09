---
# This basic template provides core metadata fields for Markdown articles on docs.microsoft.com.

# Mandatory fields.
title: Intent and product brand in a unique string of 43-59 chars including spaces. Do not include site identifier (it is auto-generated).
description: 115-145 characters including spaces. This abstract displays in the search result.
author: NO VALUE SET
ms.author: NO VALUE SET # Microsoft employees only
ms.date: 12/8/2019
ms.topic: article-type-from-white-list
# Use ms.service for services or ms.prod for on-prem products. Remove the # before the relevant field.
# ms.service: service-name-from-white-list
# ms.prod: product-name-from-white-list

# Optional fields. Don't forget to remove # if you need a field.
# ms.custom: can-be-multiple-comma-separated
# ms.reviewer: MSFT-alias-of-reviewer
# manager: MSFT-alias-of-manager-or-PM-counterpart
---
# Heading 1
---   
# This template provides a structure for Office on-prem conceptual articles.
# For details about MAX content metadata requirements, see https://review.docs.microsoft.com/en-us/office-authoring-guide/metadata-for-max-content-on-dmc?branch=master

# REQUIRED METADATA

title: Article title goes here       # Very important for SEO. See https://aka.ms/seo-for-writers-cheat-sheet
author: YourGitHubUserName           # This is your GitHub alias, not your Microsoft alias
ms.author: YourMicrosoftAlias        # Your Microsoft alias without @microsoft.com
ms.date: mm/dd/yyyy                  # Use the format mm/dd/yyyy. IMPORTANT: Update manually when you modify a topic.
manager: pamgreen                    # Delete for Skype/Exchange
manager: serdars                     # Delete for SharePoint
audience: ITPro                      # One of: Admin, ITPro, Developer
ms.topic: article                    # See metadata requirements link above for additional allowed values.
localization_priority: Normal        # See metadata requirements link above for allowed values.
ms.collection: some-scs-name         # Delete if this topic isn't in a SCS, or enter the tag for SCS. 
# Choose ONLY ONE of the following values for ms.prod. Delete the ones you don't use.
ms.prod: sharepoint-server-itpro           # See metadata requirements link above for allowed values.
ms.prod: exchange-server-itpro             # See metadata requirements link above for allowed values.
ms.prod: skypeforbusiness-server-itpro     # See metadata requirements link above for allowed values.

# OPTIONAL METADATA

description:                         # Treat this like a summary tag in DxStudio. It helps with SEO.
ms.custom:                           # Similar to Set Free Tag. Use sparingly, limited character space.
ms.reviewer: MsAlias1, MsAlias2, etc # List contributors' Microsoft aliases, separated with commas.
robots:                              # Omit this field to make content searchable. Include it to hide from search.

---
# Feature name

## FeatureName overview

Short overview of what the new feature is.

- What is the new or updated experience?

- Does this feature replace an existing feature/experience? If yes, what is the transition plan?

- Does this feature has dependency on other features? If yes, list/explain the dependencies.

- List the key deployment scenarios - why would people use this feature? 

## [OPTIONAL] Planning for feature

Some features would require careful pre-planning before deployment can begin. For those features, cover what planning tasks customers should complete.

## Configure feature

How do you configure this feature? Cover these points: 

- Are there any prerequisites?

- Is this feature per org or per user? 

- Use PowerShell or UI?

- Short instructions on how to turn on the feature for the organization or for individual users. 

## Manage feature

- Add subsections with basic management tasks that would be required or that we expect customer to perform. 

### Management task 1

### Management task 2

## Security & Compliance

List any security or compliance impact of this feature here. Cover the following:

- Where is the data associated with this feature stored?

- Include any other data implications such as GDPR compliance.


## Related topics

#### 

[Some Article](Office-2019-template.md)

[Some Article](Office-2019-template.md)---
title: #error-code
description: Explanation and resolution for Docs build issue #error-code
author: NO VALUE SET
ms.author: NO VALUE SET # Microsoft employees only
ms.topic: error-reference
ms.date: 12/8/2019
ms.prod: non-product-specific
---
# [error-code]

## Error | Warning | Info

``

## Resolution

<!--make sure to add this file to your includes folder and verify the path-->
[!INCLUDE [validation-reference-help](includes/validation-reference-help.md)]
---
# This basic template provides core metadata fields for Markdown articles on docs.microsoft.com.

# Mandatory fields.
title: Intent and product brand in a unique string of 43-59 chars including spaces. Do not include site identifier (it is auto-generated).
description: 115-145 characters including spaces. This abstract displays in the search result.
author: NO VALUE SET
ms.author: NO VALUE SET # Microsoft employees only
ms.date: 12/8/2019
ms.topic: article-type-from-white-list
# Use ms.service for services or ms.prod for on-prem products. Remove the # before the relevant field.
# ms.service: service-name-from-white-list
# ms.prod: product-name-from-white-list

# Optional fields. Don't forget to remove # if you need a field.
# ms.custom: can-be-multiple-comma-separated
# ms.reviewer: MSFT-alias-of-reviewer
# manager: MSFT-alias-of-manager-or-PM-counterpart
---
# Heading 1
---   
                             
# For details about MAX content metadata requirements, see https://review.docs.microsoft.com/en-us/office-authoring-guide/metadata-for-max-content-on-dmc?branch=master

# REQUIRED METADATA

title: Article title goes here       # Very important for SEO. See https://aka.ms/seo-for-writers-cheat-sheet
author: YourGitHubUserName           # This is your GitHub alias, not your Microsoft alias
ms.author: YourMicrosoftAlias        # Your Microsoft alias without @microsoft.com
ms.date: mm/dd/yyyy                  # Use the format mm/dd/yyyy. IMPORTANT: Update manually when you modify a topic.
manager: YourManagersMicrosoftAlias  # Your manager's Microsoft alias without @microsoft.com
audience: ITPro                      # One of: Admin, ITPro, Developer
ms.topic: TypeOfTopic                # See metadata requirements link above for allowed values.
localization_priority: Normal        # See metadata requirements link above for allowed values.
ms.collection: some-scs-name         # See metadata requirements link above for allowed values.
# Choose EITHER ms.service OR ms.prod - NOT BOTH. Delete the one you don't use.
ms.service: ServiceID                # See metadata requirements link above for allowed values.
ms.prod: ProductID                   # See metadata requirements link above for allowed values.


# OPTIONAL METADATA

description:                         # Treat this like a summary tag in DxStudio. It helps with SEO.
ms.custom:                           # Similar to Set Free Tag. Use sparingly, limited character space.
ms.reviewer: MsAlias1, MsAlias2, etc # List contributors' Microsoft aliases, separated with commas.
robots:                              # Omit this field to make content searchable. Include it to hide from search.

---

---
author: NO VALUE SET
ms.author: NO VALUE SET # Microsoft employees only
ms.date: 12/8/2019
---
# Epic Spec Title

[Epics are metric-oriented precise divisions of the corresponding goal given in the vision doc. The title of the Epic should reflect this.]

[What Vision Doc does the goal of this Epic map to? If the Vision Doc doesn't exist, who should write it?]

- [Vision Doc](https://review.docs.microsoft.com/en-us/new-hope/?branch=master)
- [Epic in DevOps](https://ceapex.visualstudio.com/Engineering/_workitems/create/epic)

## Summary

[one or more paragraphs - Why are we doing this? How does this fit into the overall team objectives? ]

## Definitions

[Define terms that may not be understood by those reading the spec]

| Term | Definition |
|------|------------|
| term 1 | term 1 definition |
| term 2 | term 2 definition |
| term 3 | term 3 definition |

## Scope

[Describe the goals and non-goals]

### Goals

- Goal 1
- Goal 2
- Goal 3

### Non-goals

- Non-goal 1
- Non-goal 2
- Non-goal 3

## Dependencies

[What does this work depend that outside of our group's work, like CELA or Privacy information?Or does this work depend on other work we are doing that isn't done yet?]

## Feature Summaries

### [Feature title 1](https://ceapex.visualstudio.com/Engineering/_workitems/create/feature)

[Feature 1 summary paragraph]

### [Feature title 2](https://ceapex.visualstudio.com/Engineering/_workitems/create/feature)

[Feature 2 summary paragraph]

### [Feature title 3](https://ceapex.visualstudio.com/Engineering/_workitems/create/feature)

[Feature 3 summary paragraph]

## Success Criteria

[How do we qualify and quantify success?]

## Epic Team

- Name of Person 0, Role
- Name of Person 1, Role
- Name of Person 2, Role

## Stakeholders

- Name of Person 0, Role
- Name of Person 1, Role
- Name of Person 2, Role

## Open Items

| Priority | Item | Owner | Next Steps |
|----------|------|-------|------------|
| 1 | Item title | alias | Next step to close on the item |
| 2 | Item title | alias | Next step to close on the item |
| 3 | Item title | alias | Next step to close on the item |

## Revision History

[Track major changes with dates]

| Changed by | Date | Summary |
|------------|------|---------|
| alias | 8/8/2018 | Notes |
| alias | 8/8/2018 | More notes |
| alias | 8/8/2018 | Even more notes |

## Appendix

- [useful site](https://docs.microsoft.com/)
- [useful site](https://docs.microsoft.com/)
- [useful site](https://docs.microsoft.com/)---
# This basic template provides core metadata fields for Markdown articles on docs.microsoft.com.

# Mandatory fields.
title: Intent and product brand in a unique string of 43-59 chars including spaces. Do not include site identifier (it is auto-generated).
description: 115-145 characters including spaces. This abstract displays in the search result.
author: NO VALUE SET
ms.author: NO VALUE SET # Microsoft employees only
ms.date: 12/8/2019
ms.topic: article-type-from-white-list
# Use ms.service for services or ms.prod for on-prem products. Remove the # before the relevant field.
# ms.service: service-name-from-white-list
# ms.prod: product-name-from-white-list

# Optional fields. Don't forget to remove # if you need a field.
# ms.custom: can-be-multiple-comma-separated
# ms.reviewer: MSFT-alias-of-reviewer
# manager: MSFT-alias-of-manager-or-PM-counterpart
---
# Heading 1
---
# This basic template provides core metadata fields for Markdown articles on docs.microsoft.com.

# Mandatory fields.
title: Intent and product brand in a unique string of 43-59 chars including spaces. Do not include site identifier (it is auto-generated).
description: 115-145 characters including spaces. This abstract displays in the search result.
author: NO VALUE SET
ms.author: NO VALUE SET # Microsoft employees only
ms.date: 12/8/2019
ms.topic: article-type-from-white-list
# Use ms.service for services or ms.prod for on-prem products. Remove the # before the relevant field.
# ms.service: service-name-from-white-list
# ms.prod: product-name-from-white-list

# Optional fields. Don't forget to remove # if you need a field.
# ms.custom: can-be-multiple-comma-separated
# ms.reviewer: MSFT-alias-of-reviewer
# manager: MSFT-alias-of-manager-or-PM-counterpart
---
# Heading 1
---
author: meganbradley
ms.author: mbradley
---
## Need help?

If you need help with this issue, or have feedback on the message or documentation, use the Feedback feature below to file a GitHub issue!
---
author: NO VALUE SET
ms.author: NO VALUE SET # Microsoft employees only
ms.date: 12/8/2019
# A simple template for small feature specifications
---
# [Feature title here]

[Feature status: Draft | Ready for review | Approved for implementation]

[1 - 3 sentence feature summary goes here.]

**VSTS:** [link to feature]

**Vision doc:** [link to vision doc]

## Dependencies

[List any dependencies engineering needs to be aware of.]

## Requirements

[Detail your requirements here. Should focus on user tasks or outcomes, NOT on implementation details, which are owned by engineering.]

## Design

[If relevant, link to design details here.]

## Testing

[If there are specific test requirements, such as repos to use for testing, list them here.]

## Revision history

[As you make changes to your spec, list them here!]

<!--
CHECKLIST: Confirm that you have considered the following and included details in your spec as appropriate:
- Accessibility
- Contributor tools (OPS Portal, VS Code)
- GDPR
- Global compliance
- Localization
- Security
- Validation/linting
-->
