# Joy of Elixir

Hello! You've reached the GitHub repository for [Joy of Elixir](https://joyofelixir.com). You can find more information [about this book on its "About" page](https://joyofelixir.com/about.html).

If you're here to [file an issue](https://github.com/radar/joyofelixir/issues/new), please go ahead and do that. We _love_ getting feedback!

## Working with the book's source

This book is written in HTML + CSS and is compiled with [Jekyll](https://jekyllrb.com). To generate this book from the source, you can run:

```
bundle install
bundle exec jekyll serve
```

Then you'll be able to go to http://localhost:4000 and view the generated source.

Each chapter's text is located in the `_includes/ch/*` files, as they're all compiled into one big gnarly HTML file called `book.html` for easy PDF generation -- see `pdf.rb` for that part.


