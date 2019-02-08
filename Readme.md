As a Shakespeare buff, statistics junkie, and Unix lover, Ben finds himself wanting a command-line tool for analyzing Macbeth.
Write a command-line program that prints the number of lines spoken by each character in the play.

Setup instructions
* Unzip and setup the exercise repository:

```shell
cd analyzing-shakespeare
bin/setup
```

Sample usage/output (using made-up numbers):

```shell
$ ruby macbeth_analyzer.rb
543 Macbeth  
345 Banquo  
220 Duncan  
(etc.)
```

* You can find an XML-encoded version of Macbeth here: http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml.
* Your program should download and parse this file at runtime.
* Your solution should be tested, preferably via TDD. Running your tests should not download the play from the ibiblio.org server.
* Some lines are attributed to a speaker called "ALL". Your program should ignore these.

<!-- IO (basis of Input and Output) or File class for DOWNLOAD!!! file -->

 <!-- require 'open-uri' -->
<!-- download and file?

require 'csv'
url =  "https://mydomain/manage/reporting/index?who=user&users=0&teams=0&datasetName=0&startDate=2015-10-18&endDate=2015-11-17&format=csv"

download = open(url)
IO.copy_stream(download, 'test.csv')
CSV.new(download).each do |l|
   puts l
end -->