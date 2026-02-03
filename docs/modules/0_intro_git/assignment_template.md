# Assignment X: Topic Name
## Author: Your Name Here
## Date: last-modified

<!-- INSTRUCTIONS:
1. Rename this file to match the assignment (e.g 1_sequencing_techs.md).
2. Move the file to the correct folder (e.g 1_sequencing_techs/).
3. Update the 'title' and 'author' in the YAML header above.
4. Write your answers below each Question header.
5. Install the dependency Markdown PDF
6. Export to PDF before submitting to GitHub (VS Code: Right Click -> Markdown PDF: Export).
-->

Markdown is a lightweight markup language that allows you to format text using plain text symbols. It is the industry standard for documentation in bioinformatics and data science. It is widely used primarily due to the following characteristics:

* Code-Friendly: It handles code blocks and syntax highlighting natively.
* Git-Friendly: Since it is plain text, Git can track changes line-by-line (unlike Word documents).
* Universal: It renders automatically on GitHub and converts easily to PDF or HTML.

<div style="page-break-after: always;"></div>

# Task 1: [Short Title]

In markdown, headers are specified with the hashtag symbol ("#"). For subheaders, you use two hashtags ("##"). The more hashtag you put, the smaller the header will be.

## This is a subheader

Start each answer pasting the question as given in the pdf. After that, you can add your answer.


## Writing code

If the answer requires code, use a code block starting and ending with single quotation marks like the one below:

```
# Write your code here
```

You can add language specific code blocks by using the language's name:

```sh
# Write your BASH code here
samtools view ...
```

```r
# Write your R code here
m1 = glm(...)
```

```py
# Write your Python code here
import pandas
```

## Adding images

To add an image or plot to your answer, save the image in your folder and use the following code:

![](image.png){}

To add a caption to your image:

![Caption text](image.png){}

If the image is not in the same folder as your markdown file, you need to put the whole path:

![](/path/to/image.jpg){}

The square brackets are used to give the image a specific format. For instance:

![](/path/to/image.jpg){style="display: block; margin: 0 auto"}

## Other important syntax

Your answer can also include lists. You can start a list with the "*" symbol for a bulleted list or with numbers for a numbered list.

* Item 1
* Item 2
  
Or 

1. Item 1
2. Item 2

You can also make a word *italic* or **bold**.

Once you finish an answer, put the next question on a different page:
<!-- This tag forces the next question to start on a new page -->
<div style="page-break-after: always;"></div>

# Question 2: [Short Title]

This is the second question.

## Adding tables

If you need to include a table, you can do it like this:

| Column 1      | Column 2    |
| ------------- | ----------- |
| Text 1        | Text 2      |
| Text 3        | Text 4      |

Making tables can be tedius. My favority online software to turn .csv or excel tables into markdown or latex is https://www.tablesgenerator.com/markdown_tables

