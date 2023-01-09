# Repo Licensing

## Choose an open source license

### Non-judgmental guidance on choosing a license for your open source project

-   **CHANGELOG File**: `CHANGELOG` or `CHANGELOG.txt` or `CHANGELOG.md` etc. is a file that describes what's happening in the repo. Version number increases, software updates, bug fixes… are examples of the file’s content.
-   **CONTRIBUTORS File**: `CONTRIBUTORS` or `CONTRIBUTORS.txt` or `CONTRIBUTORS.md` etc. is a file that lists people who have contributed to the repo.
-   **AUTHORS File**: `AUTHORS` or `AUTHORS.txt` or `AUTHORS.md` etc. is a file that lists people who are significant authors of the project, such as the people who are legally related to the work.
-   **SUPPORT File:** `SUPPORT` or `SUPPORT.txt` or `SUPPORT.md` etc. is a file that explains how a reader can get help with the repository. GitHub links this file on the page "New Issue".
-   **SECURITY File:** `SECURITY` describes your project's security policies, including a list of versions that are currently being maintained with security updates. It also gives instructions on how your users can submit a report of a vulnerability. Fore more details, check the following [link](https://help.github.com/en/articles/adding-a-security-policy-to-your-repository).
-   **CODE_OF_CONDUCT File:** `CODE_OF_CONDUCT` is a file that explains how to engage in a community and how to address any problems among members of your project's community. Here is some [examples](https://i-sight.com/resources/18-of-the-best-code-of-conduct-examples/).
-   **CONTRIBUTING File:** `CONTRIBUTING` is a file that explains how people should contribute, and that can help verify people are submitting well-formed pull requests and opening useful issues. GitHub links this file on page "New Issue" and the page "New Pull Request". This helps people understand how to contribute.
-   **ACKNOWLEDGMENTS File:** `ACKNOWLEDGMENTS` or `ACKNOWLEDGMENTS.txt` or `ACKNOWLEDGMENTS.md` etc. is a file that describes related work, such as other projects that are dependencies, or libraries, or modules, or have their own copyrights or licenses that you want to include in your project.
-   **CODEOWNERS File:** `CODEOWNERS` is a file that defines individuals or teams that are responsible for code in a repository. Code owners are automatically requested for review when someone opens a pull request that modifies code that they own. When someone with admin or owner permissions has enabled required reviews, they also can optionally require approval from a code owner before the author can merge a pull request in the repository.
-   **FUNDING File**: `funding.yml` is a [file](https://docs.github.com/en/github/administering-a-repository/managing-repository-settings/displaying-a-sponsor-button-in-your-repository) to raise funding for or support your project.
-   **ISSUE_TEMPLATE File:** When you add an issue template to your repository, project contributors will automatically see the template’s contents in the issue body. Templates customize and standardize the information you’d like included when contributors open issues. To add multiple issue templates to a repository create an `ISSUE_TEMPLATE/` directory in your project root. Within that `ISSUE_TEMPLATE/` directory you can create as many issue templates as you need, for example `ISSUE_TEMPLATE/bugs.md`. This [list](https://github.com/devspace/awesome-github-templates) contains multiple templates for issues and pull requests.
-   **PULL_REQUEST_TEMPLATE File:** When you add a `PULL_REQUEST_TEMPLATE` file to your repository, project contributors will automatically see the template's contents in the pull request body. Templates customize and standardize the information you'd like included when contributors create pull requests. You can create a `PULL_REQUEST_TEMPLATE/` subdirectory in any of the supported folders to contain multiple pull request templates.

## .github Folder

This folder is just a convention folder used to place GitHub related stuff inside it. GitHub handles some of these files even when you place it in root of your project (`_CONTRIBUTING.md_`_,_ `_CODE_OF_CONDUCT.md_` _etc_).

Some of the most used files in `.github` folder:

1.  `CODE_OF_CONDUCT.md`
2.  `CONTRIBUTING.md`
3.  `FUNDING.yml`
4.  `SECURITY.md`
5.  `PULL_REQUEST_TEMPLATE.md`
6.  `ISSUE_TEMPLATE`
7.  `CODEOWNERS`
8.  `workflows:` configuration folder containing Yaml files for GitHub Actions
----
Public: Yes