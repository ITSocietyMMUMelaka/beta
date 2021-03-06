# IT Society, MMU Melaka
[![Build Status](https://travis-ci.org/ITSocietyMMUMelaka/beta.svg?branch=master)](https://travis-ci.org/ITSocietyMMUMelaka/beta)

This is the beta site repo for IT Society, MMU Melaka.

| Host        | URL                                        |
| ----------: | :----------------------------------------- |
| GitHub      | https://itsocietymmumelaka.github.io/beta/ |
| Self-hosted | https://beta.itsociety.club                |


# Table Of Contents

- [IT Society, MMU Melaka](#it-society-mmu-melaka)
- [Table Of Contents](#table-of-contents)
- [Using](#using)
    - [Content Organization Strategy](#content-organization-strategy)
    - [Creating new post](#creating-new-post)
        - [Creating new post with `post.bat`](#creating-new-post-with-postbat)
    - [Using shortcode](#using-shortcode)
- [Development](#development)
    - [Cloning](#cloning)
    - [On Windows](#on-windows)
    - [With Visual Studio Code](#with-visual-studio-code)
        - [Extensions](#extensions)
        - [Tasks](#tasks)
    - [Hugo](#hugo)
    - [Git Commit Message Convention](#git-commit-message-convention)
        - [The `<TYPE>`](#the-type)
        - [The `<SCOPE>`](#the-scope)
        - [The `<SUBJECT>`](#the-subject)
        - [Examples](#examples)
    - [Travis CI](#travis-ci)
        - [Note](#note)

# Using

## Content Organization Strategy

We are using `Structure B` as stated in this Hugo discussion: [Discussion: Content Organization Best Practice](https://discourse.gohugo.io/t/discussion-content-organization-best-practice/6360/3)

Besically, all assets related to a post/other content is kept together (instead of separating them in the `static` folder).

## Creating new post

> Todo: `hugo new`, editor, `git push`, posting with GitHub Issue, etc

### Creating new post with `post.bat`

After running `start.bat` on CMD, you can use `post.bat` to quickly create a new post in the directory `post\<TITLE-SLUG>\index.md`

```
USAGE: post.bat title-slug
```

For more usage info, run `new.bat`, which is a generic version of `post.bat`

```
USAGE: new.bat section slug

Create a new hugo content as
   /<SECTION>/<TITLE-SLUG>/index.md

Slugify:
1. Replace all spaces with '-'
2. Multiple spaces will only have one '-'
3. No '-' at the start and end of the slug
4. Convert everything to lowercase

   Example:  "  New  Site   " becomes "new-site"
```

## Using shortcode

Refer to the post "[Shortcodes](site/content/post/shortcodes/index.md)" (best view through the [website](https://beta.itsociety.club/post/shortcodes/))

# Development

## Cloning

1. Run `git clone --recursive git@github.com:ITSocietyMMUMelaka/beta.git`.

## On Windows

1. Run `start.bat` to include `hugo.exe` in the `%PATH%` variable and switch to the `/site` directory.
2. Start using `hugo` commands or run `dev.bat` to start `hugo` server.

> Running `hugo` will build the site to `/prod`
>
> Running `dev.bat` will build the site to `/dev` (with drafts) and start hugo server

**Note**: With Visual Studio Code, you can run the build task instead of running the commands manually. See [With Visual Studio Code - Tasks](#tasks) below.

## With Visual Studio Code

### Extensions

1. Install `markdownlint` <https://github.com/DavidAnson/vscode-markdownlint> for a consistent markdown style across the repo.

### Tasks

- Run Hugo server by pressing `Ctrl + Shift + P` (Command Palette) > Enter `Run Build Task`
- Or by pressing `Ctrl + Shift + P` > Enter `Run Task` to run other task:
    - `Run Hugo Server`
    - `Build Hugo Site`

## Hugo

This site is built with `Hugo`, a static website engine. It has a well-written documentation that can be found here: <https://gohugo.io/documentation/>.

## Git Commit Message Convention

The commit message convention used in this repo is roughly similar to Angular's [Git Commit Guidelines](https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#commits) with several custom (but not strictly applied) types.

The general convention for a commit message (of **oneline**) is

```
<TYPE>(<SCOPE>): <SUBJECT>
```
> Note: `(<SCOPE>)` is optional

For multi-line commit message, refer to the original [Guidelines](https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#commits).

### The `<TYPE>`

> Taken from Angular's commit message format, with some customization. 

**Note**: these are *guidelines* not *rules*, they are not *compulsory* but it is **better** if you apply. Also, there are *exceptions*, feel free to choose anything appropriate.

- `feat`: a new feature
- `fix`: a bug fix
- `docs`: changes to documentation (`readme` for example.)
- `style`: changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- `refactor`: a code change that neither fixes a bug nor adds a feature
- `perf`: a code change that improves performance
- `test`: adding missing or correcting existing tests
- `chore`: changes to the build process (use `build` instead) or auxiliary tools and libraries such as documentation generation

With some custom types:

- `build`: any changes related to the build process (Travis CI, FTP deployment etc.). You may also use `chore`
- `site`: changes to the site itself (eg: updating the theme's `submodule`)
- `post`: changes made to a post (new post, edit post, etc.)

### The `<SCOPE>`

Anything specifying the place of that commit changed.

### The `<SUBJECT>`

A short and concise description of the change:

- use **present tense**: use `change` instead of `changed` or `changes`
- don't capitalize the first letter: `feat: add xxx` instead of `feat: Add xxx`
- no full stop (`.`) at the end: `feat: add xxx` instead of `feat: add xxx.`

### Examples

| ❌                          | ✔️                                  | ❓                                                                                                                                                   |
| -------------------------- | ----------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| Add readme.md              | docs: add readme                    | It's better to use the convention for a consistent commit message log                                                                               |
| **D**ocs: **A**dd readme   | **d**ocs: **a**dd readme            | Don't capitalize the first letter                                                                                                                   |
| docs: add**ed** readme     | docs: **add** readme                | Use present tense                                                                                                                                   |
| docs: add readme.          | docs: add readme                    | Don't end with full stop                                                                                                                            |
| docs: update readme        | docs(readme): fix typo              | Try to be more specific with the commit message so that everyone can easily know the purpose of that commit without looking the the commit's `diff` |
| docs: add background image | feat(layouts): add background image | At least categorize the changes properly                                                                                                            |

## Travis CI

Travis CI is used to build and deploy this repo. Build status can be found here: <https://travis-ci.org/ITSocietyMMUMelaka/beta>.

### Note

Add `[ci skip]` or `[skip ci]` to commit message (preferably inside the commit `message body` instead of it's `subject`) for skipping a build (useful when the changes do not modify the actual content of the website).
