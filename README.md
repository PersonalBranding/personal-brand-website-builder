[中文文档](README_zh.md)

# isBio: Personal Website Builder

## Enjoy blogging with "Markdown" and "Git"

Demo website: [Zhang Jian's Blog](https://zhangjian.dev).

## How can I write articles locally with Markdown files and publish them with `git push`? 

At present, [Jekyll](https://jekyllrb.com/) or [Hugo](https://gohugo.io/) can already meet the above requirements, not perfectly.

is-bio can also meet the above requirements, yet it is different in a few ways.

## In what ways is is-bio **better** than Jekyll or Hugo?

1. The blog posts generated by Jekyll or Hugo are *static*, while *is-bio* is a **dynamic** blog engine.
    - The functions of *static* blogs are very limited.
    - In *dynamic* blog *is-bio*, email subscriptions are currently integrated, and in the future, resume, portfolio, comments, likes, reading counts, online payments, etc. will also be supported.
    - Also, you can **add some customized features** to your blog.
    - You might say, what if I don't know how to program in Ruby?
        - Two years ago, this would be a problem, but now, we have AI, and you can **let AI help you implement some small features**!
        - If there is an error, tell AI and let AI correct it.
2. For those who are not familiar with Jekyll or Hugo, it is even **difficult** to even find a good-looking theme.
    - *is-bio* currently supports one **beautiful free theme (8 color options included)**, and more themes will be added in the future.
3. Jekyll or Hugo's documentation is a lot of pages long. Who can explain everything in just one page?
    - *is-bio* can. For information on how to publish a post using *Markdown* and *Git*, please read [markdown-blog](https://github.com/is-bio/markdown-blog) using the *is-bio* approach.
4. A blog post can be translated into multiple languages and displayed on the blog. This feature is currently not supported by any blog engine. However, *is-bio* has already supported it, allowing your articles to reach global users. Eight languages: English, Chinese, Spanish, German, French, Portuguese, Japanese, Russian are already supported by default, and other languages can be easily supported.
5. For building a personal brand, it is not enough to just have a blog. It is better to have a resume and a portfolio. In fact, a blog is not the most important function, but **a resume and a portfolio are**. In the next version, we will launch the resume function.

## What is the cost of using *is-bio*?

Many programmers already use a server, and usually, that server is not fully utilized.

You can install *is-bio* on this server without worrying about port `80/443` being used by another website. In the installation document, I have pointed out how to perfectly solve this problem that does not actually exist.

So your cost increase may be only $2/month.

## Why don’t developers blog much anymore?

- After using [GitHub Pages](https://pages.github.com/) (powered by Jekyll), they **rarely** write blogs. Why?
- IMO, ordinary blog systems can **no longer create much value for bloggers**! Those blogs are not designed to bring value to bloggers.
- Take myself as an example, my GitHub Pages' [Zhang Jian's old blog](https://gazeldx.github.io/) is not sexy at all, so I can't get excited about writing.

## is-bio: A blog engine focused on bringing value to developers

- You can see [Zhang Jian's new blog](https://zhangjian.dev) (based on *is-bio*) is well-designed.
- I started expecting clients to **pay for my services directly on my blog**!
- Through the blog, I convey a message to potential customers: I am an expert in web development, algorithms, and game addiction!

# Deploy is-bio on a server 

If you want to deploy *is-bio* on a server, please read [deploy_on_CentOS10.md](/docs/deploy/deploy_on_CentOS10.md).

# Install is-bio on your local computer

The following content is mainly for installation under *macOS* locally. For other operating systems, the installation process is similar.

## Install Ruby

The *is-bio* is developed based on Ruby version 3.3.x, but other versions should also work.

- Use Homebrew to install Ruby if you are a casual user and won't be using Ruby frequently.

    ```shell
    brew install ruby
    ```

- Ruby developers use a Ruby version manager to install Ruby.
    - [ruby-build](https://github.com/rbenv/ruby-build)
    - [ruby-install](https://github.com/postmodern/ruby-install)
    - [asdf](https://github.com/asdf-vm/asdf)

## Clone 'is-bio' repository and install Ruby gems

```shell
git clone https://github.com/is-bio/is-bio.git
cd /path/to/is-bio
bundle install
```

## Set credentials

```shell
cd /path/to/is-bio
# This file contains all the credentials that need to be set.
cat config/credentials.yml.example # Set "all" of them with the next command:
# After saving it, "config/credentials.yml.enc" and "config/master.key" will be created.
# In order for the modified credentials to take effect, you need to restart the Rails web server.
EDITOR="vim" bin/rails credentials:edit
```

**All** items shown in `config/credentials.yml.example` need to be set!

If you are still not sure how to set some items, you can use the default values in `config/credentials.yml.example` first, and then set the values correctly according to the relevant instructions when you find that the relevant functions do not work.

## Prepare SQLite database

```shell
cd /path/to/is-bio
rails db:migrate # The database file is `./storage/development.sqlite3`. Running it has no side effects.
rails db:seed # Running it has no side effects.
```

## Install theme

Read [docs/install_theme.md](/docs/install_theme.md).

## Start Rails web server

```shell
cd /path/to/is-bio
rails assets:precompile # This needs to be executed whenever any assets are changed. Running it has no side effects.
rails s # Start Rails web server.
```

Visit http://localhost:3000/.

### Create the Admin User

```shell
cd /path/to/is-bio
vim db/seeds.rb
```

Uncomment the first few lines of code to create the Admin User.

```shell
rails db:seed
git restore db/seeds.rb
```

Use this email address and password to log in on http://localhost:3000/admin.

## Send email via SMTP

Please follow the instructions in [docs/send_email_via_smtp_guide.md](/docs/send_email_via_smtp_guide.md) to complete this step.

## Start "Solid Queue" to handle background jobs

Blog posts, images, files synchronization, sending emails, generating thumbnails, etc. all require background tasks to be started!

```shell
cd /path/to/is-bio
rm public/assets/.manifest.json
rails assets:precompile # You need to restart Rails web server to make the changes take effect.
bin/jobs # start it
```

- First, use email address and password to log in on http://localhost:3000/admin.
- Second, use this username and password to log in on http://localhost:3000/jobs to see if there are failed tasks.
    - The username and password can be obtained by running `EDITOR="vim" bin/rails credentials:edit`.

## Create and install your "GitHub App" to sync local "markdown-blog" repository's files' changes to blog website

Here, the blog website is your local Rails web server. If you [deploy_on_CentOS10.md](/docs/deploy/deploy_on_CentOS10.md), the blog website is your real web server.

Please read [markdown-blog](https://github.com/is-bio/markdown-blog) if you are not familiar with how to publish a blog using *Markdown* and *Git*.

Please follow the instructions in [GitHub_App.md](/docs/GitHub_App.md) to complete this step.

## Automatically generate thumbnails for images

<details>
  <summary>Click to view</summary>
  You need to install [ImageMagick](https://imagemagick.org/).<br>
If you don't care about thumbnails when debugging locally, you can skip this step and only install *ImageMagick* on the server.

```shell
# Warning: This command may take a long time and download a lot of packages!
brew install imagemagick
```
</details>

## Run tests

Run `bundle exec rspec spec`.

## Troubleshooting

```shell
cd /path/to/is-bio
tail -n 200 log/development.log # This is the log of Rails web server

# If you are testing background jobs related features, you can use it to check if the job process is running.
# If you didn't see any process listed, you can start it by reading the instructions above.
ps -ef|grep solid
```

## Setting up your website

Read [setup_website.md](/docs/setup_website.md).
