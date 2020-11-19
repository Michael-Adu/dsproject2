PROC FORMAT;

  VALUE GSP001X
    99       = "No answer"
    98       = "Don't know"
    89       = "89 or older"
  ;
  VALUE GSP002X
    99       = "No answer"
    98       = "Don't know"
    97       = "Not applicable"
  ;
  VALUE GSP003X
    2        = "Female"
    1        = "Male"
  ;
  VALUE GSP004X
    3        = "Other"
    2        = "Black"
    1        = "White"
    0        = "Not applicable"
  ;
  VALUE GSP005X
    9        = "No answer"
    8        = "Dont know"
    4        = "Not likely at all"
    3        = "Not very likely"
    2        = "Somewhat likely"
    1        = "Very likely"
    0        = "Not applicable"
  ;
  VALUE GSP006X
    9        = "No answer"
    8        = "Dont know"
    5        = "Very negative"
    4        = "Negative"
    3        = "Neutral"
    2        = "Positive"
    1        = "Very positive"
    0        = "Not applicable"
  ;


DATA GSS.GSS;

   LENGTH
      YEAR     20
      AGE      20
      EDUC     20
      SEX      20
      RACE     20
      VIOLPEOP 20
      INFMUSIC 20   ;

   LABEL
      YEAR     ="Gss year for this respondent                       "
      AGE      ="Age of respondent"
      EDUC     ="Highest year of school completed"
      SEX      ="Respondents sex"
      RACE     ="Race of respondent"
      VIOLPEOP ="Would child do something violent toward other"
      INFMUSIC ="Influence of rock & roll"
   ;

   INPUT
      YEAR     1 - 20
      AGE      21 - 40
      EDUC     41 - 60
      SEX      61 - 80
      RACE     81 - 100
      VIOLPEOP 101 - 120
      INFMUSIC 121 - 140   ;

   FORMAT
      AGE      GSP001X.
      EDUC     GSP002X.
      SEX      GSP003X.
      RACE     GSP004X.
      VIOLPEOP GSP005X.
      INFMUSIC GSP006X.   ;

PROC CONTENTS DATA=GSS.GSS;

RUN;
