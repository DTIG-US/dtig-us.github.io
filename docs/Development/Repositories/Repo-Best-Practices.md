# Repo Best Practices
## Don’t git push straight to master
## Know your repo
This is arguably Rule Zero for a secure Git repository. As a project maintainer, whether you started it yourself or you’ve adopted it from someone else, it’s your job to know the contents of your own repository. You might not have a memorized list of every file in your codebase, but you need to know the basic components of what you’re managing. Should a stray file appear after a few dozen merges, you’ll be able to spot it easily because you won’t know what it’s for, and you’ll need to inspect it to refresh your memory. When that happens, review the file and make sure you understand exactly why it’s necessary.

## Use Git Ignore
Many of the conveniences built for programmers are also very noisy. The typical project directory for any project, programming, or artistic or otherwise, is littered with hidden files, metadata, and leftover artifacts. You can try to ignore these objects, but the more noise there is in your `git status`, the more likely you are to miss something.

You can Git filter out this noise for you by maintaining a good gitignore file. Because that’s a common requirement for anyone using Git, there are a few starter gitignore files available. [Github.com/github/gitignore](https://github.com/github/gitignore) offers several purpose-built gitignore files you can download and place into your own project, and [Gitlab.com](https://about.gitlab.com/releases/2016/05/22/gitlab-8-8-released) integrated gitignore templates into the repo creation workflow several years ago. Use these to help you build a reasonable gitignore policy for your project, and stick to it.

## Use a descriptive commit message
When I want to commit my changes, to avoid accidentally committing more than I intended, I always run the following commands:

For Git:

  `# Lists all the modified files`
  `git status`
  `# Shows specific differences, helps me compose a commit message`
  `git diff`
  `# Commits just the files I want to`
  `git commit _file1_ _file2_ -m "_Descriptive commit message_"`

## Make each commit a logical unit
## Incorporate others' changes frequently
## Share your changes frequently 
## Coordinate with your co-workers

----
Public: Yes