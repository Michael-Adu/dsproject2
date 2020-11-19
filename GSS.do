#delimit ;

   infix
      year     1 - 20
      age      21 - 40
      educ     41 - 60
      sex      61 - 80
      race     81 - 100
      violpeop 101 - 120
      infmusic 121 - 140
using GSS.dat;

label variable year     "Gss year for this respondent                       ";
label variable age      "Age of respondent";
label variable educ     "Highest year of school completed";
label variable sex      "Respondents sex";
label variable race     "Race of respondent";
label variable violpeop "Would child do something violent toward other";
label variable infmusic "Influence of rock & roll";


label define gsp001x
   99       "No answer"
   98       "Don't know"
   89       "89 or older"
;
label define gsp002x
   99       "No answer"
   98       "Don't know"
   97       "Not applicable"
;
label define gsp003x
   2        "Female"
   1        "Male"
;
label define gsp004x
   3        "Other"
   2        "Black"
   1        "White"
   0        "Not applicable"
;
label define gsp005x
   9        "No answer"
   8        "Dont know"
   4        "Not likely at all"
   3        "Not very likely"
   2        "Somewhat likely"
   1        "Very likely"
   0        "Not applicable"
;
label define gsp006x
   9        "No answer"
   8        "Dont know"
   5        "Very negative"
   4        "Negative"
   3        "Neutral"
   2        "Positive"
   1        "Very positive"
   0        "Not applicable"
;


label values age      gsp001x;
label values educ     gsp002x;
label values sex      gsp003x;
label values race     gsp004x;
label values violpeop gsp005x;
label values infmusic gsp006x;


