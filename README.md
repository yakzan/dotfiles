# dotfiles
dotfiles for console configuration
What is it

pandas is a Python package providing fast, flexible, and expressive data structures designed to make working with "relational" or "labeled" data both easy and intuitive. It aims to be the fundamental high-level building block for doing practical, real world data analysis in Python. Additionally, it has the broader goal of becoming the most powerful and flexible open source data analysis / manipulation tool available in any language. It is already well on its way toward this goal.

Main Features

Here are just a few of the things that pandas does well:

Easy handling of missing data (represented as NaN) in floating point as well as non-floating point data
Size mutability: columns can be inserted and deleted from DataFrame and higher dimensional objects
Automatic and explicit data alignment: objects can be explicitly aligned to a set of labels, or the user can simply ignore the labels and let Series, DataFrame, etc. automatically align the data for you in computations
Powerful, flexible group by functionality to perform split-apply-combine operations on data sets, for both aggregating and transforming data
Make it easy to convert ragged, differently-indexed data in other Python and NumPy data structures into DataFrame objects
Intelligent label-based slicing, fancy indexing, and subsetting of large data sets
Intuitive merging and joining data sets
Flexible reshaping and pivoting of data sets
Hierarchical labeling of axes (possible to have multiple labels per tick)
Robust IO tools for loading data from flat files (CSV and delimited), Excel files, databases, and saving/loading data from the ultrafast HDF5 format
Time series-specific functionality: date range generation and frequency conversion, moving window statistics, moving window linear regressions, date shifting and lagging, etc.
Where to get it

The source code is currently hosted on GitHub at: https://github.com/pandas-dev/pandas

Binary installers for the latest released version are available at the Python package index and on conda.

# conda
conda install pandas
# or PyPI
pip install pandas
Dependencies

NumPy: 1.7.0 or higher
python-dateutil: 1.5 or higher
pytz
Needed for time zone support with pandas.date_range
See the full installation instructions for recommended and optional dependencies.

Installation from sources

To install pandas from source you need Cython in addition to the normal dependencies above. Cython can be installed from pypi:

pip install cython
In the pandas directory (same one where you found this file after cloning the git repo), execute:

python setup.py install
or for installing in development mode:

python setup.py develop
Alternatively, you can use pip if you want all the dependencies pulled in automatically (the -e option is for installing it in development mode):

pip install -e .
See the full instructions for installing from source.

License

BSD 3

Documentation

The official documentation is hosted on PyData.org: https://pandas.pydata.org/pandas-docs/stable

The Sphinx documentation should provide a good starting point for learning how to use the library. Expect the docs to continue to expand as time goes on.

Background

Work on pandas started at AQR (a quantitative hedge fund) in 2008 and has been under active development since then.

Getting Help

For usage questions, the best place to go to is StackOverflow. Further, general questions and discussions can also take place on the pydata mailing list.

Discussion and Development

Most development discussion is taking place on github in this repo. Further, the pandas-dev mailing list can also be used for specialized discussions or design issues, and a Gitter channel is available for quick development related questions.

Contributing to pandas

All contributions, bug reports, bug fixes, documentation improvements, enhancements and ideas are welcome.

A detailed overview on how to contribute can be found in the contributing guide.

If you are simply looking to start working with the pandas codebase, navigate to the GitHub “issues” tab and start looking through interesting issues. There are a number of issues listed under Docs and Difficulty Novice where you could start out.

Or maybe through using pandas you have an idea of your own or are looking for something in the documentation and thinking ‘this can be improved’...you can do something about it!

Feel free to ask questions on the mailing list or on Gitter.
