DATA LIST FILE=TEMP FIXED RECORDS=1 TABLE /
   YEAR     1 - 20
   AGE      21 - 40
   EDUC     41 - 60
   SEX      61 - 80
   RACE     81 - 100
   VIOLPEOP 101 - 120
   INFMUSIC 121 - 140
.

VARIABLE LABELS
   YEAR     "Gss year for this respondent                       "
   AGE      "Age of respondent"
   EDUC     "Highest year of school completed"
   SEX      "Respondents sex"
   RACE     "Race of respondent"
   VIOLPEOP "Would child do something violent toward other"
   INFMUSIC "Influence of rock & roll"
.

VALUE LABELS
  AGE
      99       "No answer"
      98       "Don't know"
      89       "89 or older"
 / EDUC
      99       "No answer"
      98       "Don't know"
      97       "Not applicable"
 / SEX
      2        "Female"
      1        "Male"
 / RACE
      3        "Other"
      2        "Black"
      1        "White"
      0        "Not applicable"
 / VIOLPEOP
      9        "No answer"
      8        "Dont know"
      4        "Not likely at all"
      3        "Not very likely"
      2        "Somewhat likely"
      1        "Very likely"
      0        "Not applicable"
 / INFMUSIC
      9        "No answer"
      8        "Dont know"
      5        "Very negative"
      4        "Negative"
      3        "Neutral"
      2        "Positive"
      1        "Very positive"
      0        "Not applicable"
.

EXECUTE.
