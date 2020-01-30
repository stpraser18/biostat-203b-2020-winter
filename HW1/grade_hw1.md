*Supasara Prasertphong*

### Overall Grade: 99/110

### Quality of report: 10/10

-   Is the homework submitted (git tag time) before deadline? 

    Yes. `Jan 24, 2020, 10:37 PM PST`.

-   Is the final report in a human readable format html? 

    Yes. `html` file. 

-   Is the report prepared as a dynamic document (R markdown) for better reproducibility?

    Yes. `Rmd`.

-   Is the report clear (whole sentences, typos, grammar)? Do readers have a clear idea what's going on and how are results produced by just reading the report? 

	  Yes. 


### Correctness and efficiency of solution: 52/60

-   Q1 (10/10)

-   Q2 (16/20)

	  \#4. 
	  
    - (-2 pts) Note that delimiter should be `,`, not ` `. Try:
	    ```
	    cut -d ',' -f2 /home/203bdata/mimic-iii/ADMISSIONS.csv | sort -u | wc -l
	    ```
	    Excluding the header, there should be 46520 unique patients.
	 
    - (-2 pts) Here you want to count the number of Hispanic patients with unique `SUBJECT_ID`. e.g. 
      ```
      grep 'HISPANIC' /home/203bdata/mimic-iii/ADMISSIONS.csv | awk -F, '{ print $2 }' | sort | uniq | wc -l
      ```
	
	
-   Q3 (15/15)

-   Q4 (11/15)
	
	\#3. (-4 pts) Cannot run `MSEtable.R`. Missing table. 
	
	    
### Usage of Git: 10/10

-   Are branches (`master` and `develop`) correctly set up? Is the hw submission put into the `master` branch?

    Yes.

-   Are there enough commits? Are commit messages clear? 

    Yes. 21 commits for hw1. 

          
-   Is the hw1 submission tagged? 

    Yes. `hw1`. 

-   Are the folders (`hw1`, `hw2`, ...) created correctly? 

    Yes.
  
-   Do not put a lot auxiliary files into version control. 

	  Yes. 

### Reproducibility: 10/10

-   Are the materials (files and instructions) submitted to the `master` branch sufficient for reproducing all the results? Just click the `knit` button will produce the final `html` on teaching server? 

	  Yes. 
	
-   If necessary, are there clear instructions, either in report or in a separate file, how to reproduce the results?

    Yes.

### R code style: 17/20

-   [Rule 3.](https://google.github.io/styleguide/Rguide.xml#linelength) The maximum line length is 80 characters. (-2 pts)

    Some violations:
    
      - `MSEtable.R`: lines 3, 5, 7

-   [Rule 4.](https://google.github.io/styleguide/Rguide.xml#indentation) When indenting your code, use two spaces.

-   [Rule 5.](https://google.github.io/styleguide/Rguide.xml#spacing) Place spaces around all binary operators (=, +, -, &lt;-, etc.). 	
	
-   [Rule 5.](https://google.github.io/styleguide/Rguide.xml#spacing) Do not place a space before a comma, but always place one after a comma. (-1 pt)

    Some violations:
    
      - `MSEtable.R` : lines 10, 17
      
-   [Rule 5.](https://google.github.io/styleguide/Rguide.xml#spacing) Place a space before left parenthesis, except in a function call.

-   [Rule 5.](https://google.github.io/styleguide/Rguide.xml#spacing) Do not place spaces around code in parentheses or square brackets.
