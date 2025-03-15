# C11 中文翻译

C11标准的中文翻译。此翻译使用ElegantBook LaTeX模板。 感谢ElegantBook模板的出色工作。

## 构建说明

*   依赖项：LaTeX, `xelatex`, 以及以下LaTeX包：`texlive-fonts-extra`, `texlive-fonts-recommended`, `texlive-lang-chinese`, `texlive-latex-extra`, `texlive-latex-recommended`, `texlive-plain-generic`, `graphviz`。
*   构建命令：`xelatex c11.tex` (运行两次以解决引用)
*   使用 `elegantbook.cls` 类进行样式设置。
*   使用 `gbt7714.sty` 样式进行中文书目。

## Artifacts

构建过程生成一个PDF文件 (`c11.pdf`)。

## 目录结构

*   `chapters/`: 包含C11翻译的各个章节。
*   `figure/`: 包含文档中使用的图像。
