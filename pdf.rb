#!/usr/bin/env ruby

chrome = "/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
`#{chrome.inspect} --headless --disable-gpu --print-to-pdf=book.pdf http://localhost:4000/book`
