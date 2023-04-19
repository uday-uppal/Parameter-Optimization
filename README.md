# Parameter-Optimization
The Dataset was taken from the following link : https://archive.ics.uci.edu/ml/datasets/Online+Shoppers+Purchasing+Intention+Dataset
# Data Analytics
The dataset consists of feature vectors belonging to 12,330 sessions.
The dataset was formed so that each session
would belong to a different user in a 1-year period to avoid
any tendency to a specific campaign, special day, user
profile, or period.
<br>
<br>
The dataset consists of 10 numerical and 8 categorical attributes.
<br>
<br>
The 'Revenue' attribute can be used as the class label.
<br>
<br>
"Administrative", "Administrative Duration", "Informational", "Informational Duration", "Product Related" and "Product Related Duration" represent the number of different types of pages visited by the visitor in that session and total time spent in each of these page categories. The values of these features are derived from the URL information of the pages visited by the user and updated in real time when a user takes an action, e.g. moving from one page to another. The "Bounce Rate", "Exit Rate" and "Page Value" features represent the metrics measured by "Google Analytics" for each page in the e-commerce site. The value of "Bounce Rate" feature for a web page refers to the percentage of visitors who enter the site from that page and then leave ("bounce") without triggering any other requests to the analytics server during that session. The value of "Exit Rate" feature for a specific web page is calculated as for all pageviews to the page, the percentage that were the last in the session. The "Page Value" feature represents the average value for a web page that a user visited before completing an e-commerce transaction. The "Special Day" feature indicates the closeness of the site visiting time to a specific special day (e.g. Mother’s Day, Valentine's Day) in which the sessions are more likely to be finalized with transaction. The value of this attribute is determined by considering the dynamics of e-commerce such as the duration between the order date and delivery date. For example, for Valentina’s day, this value takes a nonzero value between February 2 and February 12, zero before and after this date unless it is close to another special day, and its maximum value of 1 on February 8. The dataset also includes operating system, browser, region, traffic type, visitor type as returning or new visitor, a Boolean value indicating whether the date of the visit is weekend, and month of the year.
<br>
<br>
Data Set Characteristics: Multivariate
<br><br>

Number of Instances: 12330
<br>
<br>
Area: Business
<br>
<br>
Attribute Characteristics: Integer, Real
<br>
<br>
Number of Attributes: 18
<br>
<br>
# Result
The best accuracy of Support Vector Machine was found to be 90.13%.
<br><br>

The best Nu value is 0.06630325
<br>
<br>
The best kernal value is Annovadot
<br>
<br>
The best Epsilon value is 0.2677976
<br>
<br>
The Graph between Iterations and Accuracy for the best sample is shown below:-
<br>
<br>
![result](https://user-images.githubusercontent.com/81161758/233202235-4c048047-1df0-4480-aa34-742ba27bf4ad.png)
