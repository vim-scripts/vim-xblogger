XBlogger
========

This is a set of Vim-files for publishing posts to Blogger or Wordpress in your favorite markup language.

Requirements
------------

[b.py](http://http://pythonhosted.org/b.py/) - a command line tool for publishing posts.

Optional utilities:
* linkchecker: pip install linkchecker
* [my plugin for checking markdown files](https://github.com/xvadim/linkchecker/blob/feature/linkcheck/plugins/markdowncheck.py) 
  it still is not in the main branch

Optional Vim-plugins:

* [SirVer/ultisnips](https://github.com/SirVer/ultisnips) - snippets
* [tpope/vim-ragtag](https://github.com/tpope/vim-ragtag) - for tag closing
* [aperezdc/vim-template](https://github.com/aperezdc/vim-template) - templates for new files

Installation
------------

1. Install via Vundle: `Plugin 'xvadim/vim-xblogger'` or just unpack the archive to `$HOME/.vim`
2. Copy the file `external/brc.py` to the directory where you are going to prepare and keep posts
3. Replace `YOU_BLOG_ID` with the real ID of your blog
4. Setup `b.py` as [described in documentation](http://pythonhosted.org/b.py/tutorial.html)

Usage
-----

1. Start post creation: `vim my_post.blog`
2. Create post [as described in documentation](http://pythonhosted.org/b.py/tutorial.html#creating-the-first-post)
3. For publishing the post type in the normal mode: `<Leader>post`

Improvements
------------

If you use plugin **vim-template** copy the file `external/.vim-template:*.blog` to the directory of your posts.
This will insert a header to new files.

If you use [higlhlight.js](https://highlightjs.org/) and plugin **ultisnips** copy the file `snippet/blog.snippets`
to the snippets directory. This adds the snippet `code` which inserts the next fragment:

```
<pre><code class="...">
</code></pre>
```

Also it makes available all snippets for mardown-files.

Also the command `Rc file_name` available. This command inserts the given file as fragment of code.

Links checking
--------------
1. Copy my plugin to the `<...>/site-packages/linkcheck/plugins` directory
2. Add the next lines to the `~/.linkchecker/linkcheckerrc`:
```ini
[MarkdownCheck]
filename_re=.*.(blog|markdown|md(own)?|mkdn?)$
```
3. Run `:make`
