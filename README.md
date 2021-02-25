[![Netlify Status](https://api.netlify.com/api/v1/badges/ef0441b4-e316-47ea-9961-e769a5c4407e/deploy-status)](https://app.netlify.com/sites/wai-coga-design-guide/deploys)

This repository includes the content for COGA Design Patterns for People with Cognitive and Learning Disabilities.

There are two types of pages. Firstly, regular content pages are in the `content` directory:

* “About“ page - information about what COGA Design Patterns are
* “All” page - lists all individual patterns, separated by Objective

Secondly, the patterns themselves, are in the `_patterns` directory. They are recognised by Jekyll as a “collection”.

## Adding a pattern

* Add new patterns as `name.md` in the `/_patterns` folder.
* In the frontmatter, specify at least: 
  * `title`: will be displayed above pattern
  * `ref`: is a unique reference to this page, can be used to identify it when it gets translated
  * `objective`: the `id` of the objective this pattern belongs to. Objectives are specified in `_config.yml`
