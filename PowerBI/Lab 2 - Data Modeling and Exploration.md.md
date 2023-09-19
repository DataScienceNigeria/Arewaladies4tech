Power BI Dashboard in a Day Lab 2

1 | Page

Contents Introduction
.....................................................................................................................................................
3 Power BI Desktop – Data Modeling and Exploration
.......................................................................................
4 Power BI Desktop - Layout
...........................................................................................................................
4 Power BI Desktop – Data Exploration
..........................................................................................................
8 Power BI Desktop – Data Exploration Continued
.......................................................................................
29 References
.....................................................................................................................................................
55

2 | Page

Introduction This is lab two out of five labs in total. Please continue
to use your file after completing Lab 1. If you are joining the AIIE at
this point or were unable to complete Lab 1, please start this lab with
the “Lab 1 solution.pbix” file you can find in the Reports folder. In
this lab you will learn how to: • create a range of different charts. •
highlight and cross-filter. • create new groups and hierarchies. • add
new measures to the model to do additional analysis. The lab includes
steps for the user to follow along with associated screenshots that
provide a visual aid. In the screenshots, sections are highlighted with
red or orange boxes to indicate the area the user needs to focus on.

3 | Page

Power BI Desktop – Data Modeling and Exploration In this section, we
will learn about the key parts of the Power BI desktop. We will model
and explore the data and build visuals.

Power BI Desktop - Layout Let’s start with the main Power BI Desktop
window of your file entitled MyFirstPowerBIModel (This is the file that
we saved at the end of Lab 1; refer back to the Introduction) and become
familiar with the distinct sections available.

1.  At the top of the window within the ribbon, you will see the Home
    tab where the most common operations you perform are available.
2.  The Insert tab in the ribbon allows you to insert shapes, a text box
    or new visuals.
3.  The Modeling tab in the ribbon enables additional data modeling
    capabilities like adding custom columns and calculating measures.
4.  The View tab has options to format the page layout.
5.  The Help tab provides self-help options like guided learning,
    training videos and links to online communities, partner showcases
    and consulting services.
6.  On the left side of the window, you have three icons within the
    Navigation menu: Report, Data and Model. If you hover over the
    icons, you can see the tooltips. Switching between these allow you
    to see the data and the relationships between the tables.
7.  The center white space is the canvas where you will be creating
    visuals.

4 | Page

8. The Visualizations pane on the right-side of the window allows you
to select visualizations, add values to the visuals, and add columns to
the axis or filters. 9. The Data pane is where you see the list of
tables which were generated from the queries. By selecting the arrow
next to a table name, you can expand the list of fields for that table.

5 | Page

10. Select the Data view icon within the Navigation menu to the left
side of the screen. Select and expand the Sales table within the Data
pane as shown in the figure below. Scroll up and down to notice how fast
you can navigate through over three million rows.

11. Select the Model view icon within the Navigation menu to the left
    side of the screen. You will see the tables you have imported along
    with Relationships. The Power BI Desktop can often automatically
    infer relationships between the tables. • A relationship is created
    between the Sales and Product tables using the ProductID column. • A
    relationship is created between the Product and Manufacturer tables
    using the ManufacturerID column. Power BI supports multiple types of
    relationships: • 1 to many • 1 to 1 • Many to many

6 | Page

In this lab, we will be using the 1 to many type of relationship, the
most common type of relationship. This means one of the tables involved
in the relationship should have a unique set of values. We will create
additional relationships later in this lab. Drag, resize, and move the
tables to appear as shown in the figure below: Note: Tables may not
appear as shown in the figure. You can zoom in and out of the
Relationship models by dragging the zoom slider in the bottom right
corner of the window. Also, if you want to ensure you are seeing all the
tables, use the Fit to Screen the tables and dragging.

icon. You can resize the tables by selecting the boarders of

7 | Page

Power BI Desktop – Data Exploration Now that we have loaded data, let’s
start with analyzing sales by country. 12. Select the Report icon within
the Navigation menu to the left side of the Power BI Desktop to navigate
to the Report view. 13. Select the Clustered column chart visual in
Visualizations pane.

14. From the Data pane to the right of the screen, expand the Geography
    table and then select the checkbox next to the Country field. Notice
    that the Country field is placed within the X-axis box within the
    Visualizations pane.
15. From the Data pane again, expand the Sales table and then select the
    checkbox next to the Revenue field. Notice that the Revenue field is
    placed within the Y-axis box within the Visualizations pane.
16. Resize the visual as needed by dragging the anchor points around the
    edges of the visual as shown below.

8 | Page

Notice that the Sum of Revenue of each country is the same. This is
because there is currently no relationship between the tables used in
the visual. Next, we will create a relationship between the Sales and
Geography tables. 17. Select the Model icon within the Navigation menu
to the left side of the Power BI Desktop to navigate to the Model view.
18. Our sales data is by Zip code, so we need to connect the Zip column
from the Sales table with Zip column in the Geography table. To do this,
select, drag, and drop the Zip field in the Sales table to on top of the
Zip field in the Geography table. You will notice the Create
relationship dialog opens with a warning message at the bottom stating
the relationship has a many-many cardinality. The reason for the warning
is that we don’t have unique Zip values in the Geography table. This is
because multiple countries could have the same Zip code. Let’s
concatenate the Zip and Country columns to create a unique value field.
19. Select the Cancel button at the bottom of the Create relationship
dialog box.

9 | Page

We need to create a new column in both the Geography table and the
Sales table that combines the Zip and Country columns. Let’s start by
creating a new column in the Sales table. 20. Select the Report icon
within the Navigation menu to the left of the screen to navigate to the
Report view. 21. Within the Data pane, hover over the Sales table name,
then select the ellipses (…) to the right of the table name. Choose New
Column from the options menu. You will then see a formula bar appear, as
shown in the figure below, to help create this new column.

22. Now we are ready to combine the Zip and Country columns into a new
    column called ZipCountry, separated by a comma. To create this
    column called ZipCountry, type the following calculation in the
    formula bar: ZipCountry = Sales\[Zip\] & "," & Sales\[Country\]

23. Once you are done entering the formula in the formula bar, press
    Enter on your keyboard or select the checkmark on the left side of
    the formula bar. You will notice that IntelliSense appears guiding
    you to choose the correct column. The language you used to create
    this new column is called Data Analysis Expression (DAX). We are
    connecting columns (Zip and Country) in each row by using the “&”
    symbol. The icon with an (fx), near the new column ZipCountry,
    indicates that you have a column containing an expression, also
    referred to as a calculated column.

IMPORTANT! If you get an error creating a new column, make sure your Zip
column is the Text Data Type.

10 | Page

Note: An alternative way to add a new column is by selecting the table
from the Data pane, selecting the Table Tools or Modeling tab, and then
choosing New Column from the menu.

Let’s use this method to create a ZipCountry column in the Geography
table. 24. From the Data pane, select the Geography table. Then from the
ribbon, choose Modeling, and then select New Column as shown in the
figure below: 25. A formula bar now appears. Enter the following DAX
expression in the formula bar: ZipCountry = Geography\[Zip\] & "," &
Geography\[Country\]

You will see a new column, ZipCountry, in the Geography table. The final
step is to set up the relationship between the two tables using the
newly created ZipCountry columns in each of these tables. 26. Select the
Model icon in the Navigation menu to the left of the Power BI Desktop to
navigate back to the Model view.

11 | Page

27. Drag and drop the ZipCountry field from the Sales table to on top
of the ZipCountry field in the Geography table. Note: If you do not see
the ZipCountry column you may need to scroll down on the list of columns
in each table.

Now we have successfully created a relationship. The number “1” next to
Geography indicates it is on the one side of the relationship and the
“\*” next to Sales indicates it is on the many side of the relationship.
28. Select the Report icon within the Navigation menu to the left of the
Power BI Desktop to navigate back to the Report view. Notice the
clustered column chart that we created earlier. It shows different sales
for each country or region. USA has the most sales, followed by
Australia and Japan. Note: If your clustered column chart is missing
countries then you may need to double check that you completed step 99
on lab 1 correctly.

12 | Page

By default, the chart is sorted by Revenue. In this next section we
will begin to use the data model we have designed by exploring several
data visualization components. 29. Select the Clustered Column Chart
visual. Select the ellipses (…) located near the top right corner of the
visual (alternatively, the ellipse may be at the bottom of the chart).
Notice there is an option to Sort axis by Country. Do not make any
changes for now. Select the background of the report to close out the
options menu.

30. Select the Clustered column Chart again. Then, from the Data pane,
    expand the Manufacturer table, and then drag and drop the
    Manufacturer column to the Legend section under Visualizations.

31. Resize the visual as needed within the canvas. Now we can see the
    top manufacturers by country.

13 | Page

Now let’s try different visuals to see which chart represents the data
the best. 32. With the Clustered column Chart visual selected in the
design space, select and change the chart to a Stacked column chart by
choosing the visual type within the Visualizations pane.

33. Sort the legend in descending order using the same method you
    learned in step 29.

34. If the Filters pane is not yet expanded, select the &lt;&lt; at the
    top of the collapsed pane to expand it. Within the Filters pane,
    expand Manufacturer under the Filters on this visual section. A
    drop-down arrow will appear for you to expand when you hover your
    mouse over Manufacturer.

14 | Page

35. Using the Filter type dropdown menu, select Top N. 36. Enter 5 in
the text box next to Top. 37. From the Sales table, drag and drop the
Revenue field into the By value section. 38. Select Apply filter at the
bottom of the Manufacturer section within the Filters pane to activate
the filter.

Notice that the visual is filtered to display the top five manufacturers
by Sum of Revenue. We see that the manufacturer VanArsdel has a higher
percentage of sales in Australia compared to other countries or regions.
If you desire, you can now collapse the Filters pane until it is needed.
We can now add total labels to the stacked visuals. Let’s explore font
formatting options. 39. Select the paint brush icon (Format your visual
button) at the top of the Visualizations pane, and then expand the X
-axis section.

15 | Page

40. Select the Bold and Italic options – feel free to try different
formatting options in different areas. For the purpose of this lab, we
will turn on Bold and Italic

41. Navigate to the Total labels section within the Visualizations pane
    and switch the setting to On.

Notice the total labels now appearing above each of the columns within
the Stacked column chart. Any of these properties can very easily be
changed or turned on/off whenever you like.

16 | Page

Now let’s remove the total labels. 42. Select the On/Off toggle setting
next to Total labels to switch the setting to Off again.

We are interested in the top five competitors by revenue. Let’s group
them so we don’t have to add a filter to every visual. Before we do
that, we’ll remove the Top 5 visual level filter we added earlier. 43.
Begin with the Stacked column chart selected in the canvas. 44. Hover
over and select the Clear filter icon (eraser) next to the Manufacturer
field in the Filters pane. (You may need to expand the Filters pane if
you previously collapsed it)

Note: You will only see the eraser icon when you hover your mouse over
the Manufacturer filter section. 45. From the Data pane, expand the
Manufacturer table and right-click on the Manufacturer field. Note: Do
not select the checkbox.

17 | Page

46. Select New Group from the options menu.

47. In the Ungrouped values section of the Groups dialog, using the CTRL
    key (to multi-select), choose Aliqui, Currus, Natura, and Pirum.
48. Select the Group button. Notice a new group is added in the Groups
    and members section.
49. Double-click the newly created group and rename it Top Competitors.
50. Select VanArsdel from the Ungrouped values section and select the
    Group button to create the VanArsdel group.
51. Select the checkbox Include Other group. This will create another
    Other group that includes all the other manufacturers.

18 | Page

52. Select OK to close the Groups dialog.

53. With the Stacked column chart selected in the canvas, select the X
    next to Manufacturer in the Legend section of the Visualizations
    pane. This will remove the Manufacturer. (You may need to switch to
    the Add data to your visual tab within the Visualizations pane)

19 | Page

54. From the Data pane, drag and drop the newly created Manufacturer
(groups) to the Legend section of the Visualizations pane. Now we can
see that VanArsdel has nearly 50% share in Australia.

Note: It is ok if you notice that the colors used in your column chart
are in a different order than what appears here. This can be adjusted by
changed the Legend sort order as you saw in step 34.

55. Hover over one of the columns in the Stacked Column Chart and
    right-click.
56. Select Show as a table from the context menu. You will now be in
    Focus mode with the chart displayed on top and the data displayed
    below. Notice that VanArsdel has a large percent of the Australian
    market.

20 | Page

57. Use the orientation icon in the top right corner of the chart to
switch to the vertical layout. In this layout, you view the chart on the
left and the data on the right in two separate panels. 58. Switch back
to the horizontal layout and select Back to Report to navigate back to
the Report canvas.

Note: You can similarly right-click on a column in the chart and select
Show data point as a table to see records for a specific data point.

Now let’s create a Revenue by Manufacturer visual. 59. Select the white
space in the canvas to deselect the Stacked column chart visual. From
the Data pane, select the checkbox next to the Revenue field in the
Sales table. 60. From the Data pane, select the checkbox next to the
Manufacturer field in the Manufacturer table. 61. From the
Visualizations pane, select the Treemap visual.

21 | Page

We now have Sum of Revenue by Manufacturer. Let’s turn our attention to
the interaction between the Stacked Column Chart and the Treemap
visuals. 62. Within the Treemap visual, select VanArsdel and notice that
the Stacked column chart is highlighting only the values related to
VanArsdel. This confirms that VanArsdel has a large percentage of the
Australian market.

63. To remove the highlighting, select VanArsdel again. This interaction
    between visuals is called cross-highlighting. Previously, we added a
    Top 5 Visual level filter. Now let’s add a filter to the Page level,
    so we are working with the Top Competitors and VanArsdel, and so we
    can filter out the other manufacturers. Page-level filters apply to
    all visuals on the page. Visual-level filters apply only to a
    visual. Ensure the Filters pane is expanded/open.
64. From the Data pane, drag and drop Manufacturer (groups) from the
    Manufacturer table to the Filters on this page box in the Filters
    pane.

22 | Page

65. Select both Top Competitors and VanArsdel.

Now, let’s add a visual that provides sales information over time 66.
Begin by selecting the white space in the canvas to ensure that nothing
is selected. 67. Select the checkbox next to the Date field in the Sales
table. Notice that a Date Hierarchy is created if you have Auto
date/time turned on. Note: If you do not see the data hierarchy go to
File -&gt; Options and settings -&gt; Options &gt; Current file -&gt;
Data load -&gt; Auto date/time) to turn it on. 68. Select the checkbox
next to the Revenue field in the Sales table. 69. Change the newly
created visual to a Clustered column chart. Notice in the X-axis
section, a date hierarchy is used. There are arrows on the visual header
which are used to navigate through the hierarchy.

23 | Page

70. Select Australia from the Sum of Revenue by Country and
Manufacturer (groups) visual. 71. With the Sum of Revenue by Country and
Manufacturer (groups) visual selected, navigate to the Format tab in the
ribbon, and then select Edit Interactions. Notice in the top right
corner of the other two visuals, new icons appear. These icons determine
the interactive capabilities between the visual you have selected and
all other visuals on the screen.

Note: You will not see the Format tab if you do not select the Sum of
Revenue by Country and Manufacturer (groups) visual first.

24 | Page

72. Select the Filter icon for both visuals: Sum of Revenue by
Manufacturer and Sum of Revenue by Year.

Notice now in both Sum of Revenue by Year and Sum of Revenue by
Manufacturer, data is filtered for Australia. Select Australia again to
deselect the filter. 73. Now, select the Sum of Revenue by Year visual.
74. Next, select the Filter icon on the other two visuals.

25 | Page

75. Similarly, select the Sum of Revenue by Manufacturer visual
(Treemap) and select the Filter icon on the other two visuals. Once you
are done, all the visuals should be in filter mode. 76. With the Sum of
Revenue by Manufacturer visual selected, navigate to the Format tab and
unselect Edit Interactions to remove the icons. 77. Select VanArsdel in
the Sum of Revenue by Manufacturer visual (Treemap).

Note: If your screen does not match the figure above, please edit your
interactions. If the colors in the column chart are different that is
ok.

We have already noticed that VanArsdel has a large share of the market
in Australia. Let’s see how VanArsdel has done over time in Australia.
78. Select the Sum of Revenue by Country and Manufacturer (groups) chart
and remove Manufacturer (groups) from the legend within the
Visualizations pane by selecting the X. 79. Select VanArsdel in the Sum
of Revenue by Manufacturer visual (Treemap).

26 | Page

80. Then hold the CTRL key (to multi-select) and select Australia
within the Sum of Revenue by Country visual. This will multi-select both
filters.

We have now filtered the charts by both VanArsdel and Australia. Looking
at the results, we can see a spike in 2021 sales for VanArsdel in
Australia. This spike in sales is intriguing, so let’s investigate
further. 81. Hover over the Sum of Revenue by Year visual. Select the
down arrow at the top of the Sum of Revenue by Year visual to enable the
drill-down capability.

82. Select the 2021 column within the Sum of Revenue by Year visual.
    Notice that you have drilled down to the quarter level of 2021.
    There was a big spike in the fourth quarter. Let’s dig further.

27 | Page

83. Select the double down-arrow icon at the top of the Sum of Revenue
by Year and Quarter visual. This drills down to the next level of the
hierarchy, which is the month.

84. Select the up-arrow icon at the top of the Sum of Revenue by Year
    visual to drill back up to the Quarter level again.
85. Select the drill up icon a second time to go all the way back up to
    the Year level.

28 | Page

86. Select the split arrow icon at the top right of the Sum of Revenue
by Year visual. This expands down to the next level of the hierarchy,
which is quarters for all the years; not just 2021 like we did in steps
82-83.

Notice that the fourth-quarter sales have always been high, but in 2021
there was a larger sales spike in the fourth quarter than usual. 87. Now
let’s expand down one more time to the month level. Select the split
arrow icon at the top right of the Sum of Revenue by Year and Quarter
visual again. This expands down to the next level of the hierarchy; this
shows revenue for months for all the years.

Power BI Desktop – Data Exploration Continued Now that we’ve explored
the data, let’s add a slicer so we can filter by the manufacturers. 88.
Select the white space in the canvas. From the Data pane, select the
checkbox next to the Manufacturer field in the Manufacturer table.

29 | Page

89. From the Visualizations pane, select the Slicer visual.

90. Here you will see a list of Manufacturers. Select VanArsdel and
    notice that all the visuals are filtered based on your selection.
    Also, re-select Australia in the Sum of Revenue by Country visual.

91. With the Slicer visual still selected, navigate to the Format visual
    section of the Visualizations pane. Expand the Slicer settings menu.
    Then, expand the Options menu within the Slicer settings.
92. Select the drop-down for the Style section within the Options menu.
    From the drop-down, select Dropdown.

30 | Page

93. Then, within the Slicer visual, select VanArsdel from the VanArsdel
dropdown.

94. Confirm Top Competitors and VanArsdel are still selected in the
    Manufacturer (groups) filter in the Filters pane.

Note: There is a box for Filters on all pages in the Filters pane. If
you have more than one report page, this is how you sync a filter for
the whole file.

Now let’s use the Manufacturer slicer to analyze one manufacturer at a
time. 95. First, de-select the highlighted value on Sum of Revenue by
Country of Australia so the report is no longer filtered by country. 96.
Next, select the Sum of Revenue by Manufacturer (Treemap) visual.

31 | Page

97. From the Visualizations pane, select the Card visual.

The card visual gives us the Sum of Revenue as we filter and
cross-filter the visuals. Notice that all key dimensions are in tables
with related attributes, except for the date. For example, Product
attributes are in the Product table. Manufacturer attributes are in the
Manufacturer table. Now let’s create a Date table. 98. Navigate to the
Data view by selecting the Data icon within the Navigation menu to the
left of the Power BI Desktop. 99. From the ribbon at the top of the
screen, select the Table Tools tab, then choose New Table from the menu
at the top of the screen.

Notice that a new table called “Table” is created in the Data pane to
the right of the Power BI Desktop and the formula bar opens at the top
of your screen.

32 | Page

100. Enter the following formula in the formula bar, then hit Enter on
your keyboard: Date = CALENDAR(DATE(2014,1,1), DATE(2022,12,31)) A Date
table with a Date column is created.

We are using two DAX functions: the CALENDAR function, which accepts the
start and end data, and the DATE function, which takes the year, month,
and date Fields. For this lab, we will create dates from 2014 to 2021
(since we have data for those years). We can also add more Fields - such
as Year, Month, Week, etc. - to this table by using additional DAX
functions. 101. Within the Data pane to the right of the screen, select
the Date field in the Date table.

Notice that the Date field is of the data type Date/Time. Let’s change
it to the Date data type.

33 | Page

102. From the ribbon, select the Column Tools tab, choose the Data type
drop-down, and then select Date.

Next, we need to create a relationship between the newly created Date
table and the Sales table. 103. From the ribbon, select the Column Tools
tab, and then choose Manage Relationships. 104. A Manage Relationships
dialog box opens. Select the New button.

105. A Create Relationship dialog box opens. Select Date from the top
    dropdown menu.
106. Select Sales from the second dropdown menu.
107. Highlight the Date field in both tables by multi-selecting (using
    your Ctrl key on your keyboard). 34 | Page

108. Then, select OK to close the Create relationship dialog box.

109. Select the Close button to close the Manage relationships dialog
    box.
110. Navigate to the Report view by selecting the Report icon within the
    Navigation menu to the left of the Power BI Desktop.

Notice that the Sum of Revenue by Date chart looks different now. Let’s
fix it. 111. Select the Sum of Revenue by Date visual.

35 | Page

112. From the X-axis section within the Visualizations pane, select the
X to remove the Date field.

113. From the Data pane, expand the Date table.
114. Now, drag and drop the Date field from the Date table to the X-axis
    section within the Visualizations pane.
115. Select the Drill up button above the visual, that you learned about
    previously, until the visual appears to be at the Year level.

Notice that the new Date field behavior is like it was previously. Since
there are now two Date fields, it may be confusing to know which one to
use. To accommodate this, let’s hide the Date field in the Sales table.

36 | Page

116. From the Data pane, hover over and select the ellipses (…) to the
right of the Date field in the Sales table. Then, select Hide from the
options menu.

117. Using the same process as in the previous step, hide Country,
    ProductID, Zip, and ZipCountry within the Sales table as well. All
    that should remain within the Sales table is the Revenue and Units
    fields.
118. Next, hide ZipCountry from the Geography table.
119. Then, hide ManufacturerID from the Manufacturer table.
120. Hide ProductID and ManufacturerID from the Product table. Tip: It
    is a best practice to hide fields that are not used in your report
    visuals. These fields are the basis of our relationships between
    each table so we should not delete them.

Now let’s get back to our data story, Australia, VanArsdel and 2021.
Let’s check if the spike occurred in a specific region in Australia.
121. Select the Sum of Revenue by Country visual.

37 | Page

122. From the Data pane, drag and drop the State field from the
Geography table below the Country field within the X-axis section of the
Visualizations pane.

123. Drag and drop the District field from the Geography table below the
    State field in the X-axis section of the Visualizations pane.

We have just created a hierarchy. 124. Select the up arrow within the
header area of the visual twice to Drill up to the top level of the
hierarchy again.

38 | Page

125. Ensure that VanArsdel is still selected within the Manufacturer
slicer. 126. Enable Drill down mode by selecting the down arrow of the
Sum of Revenue by Country visual once.

127. Select Australia to drill down to the State level.
128. From the Sum of Revenue by Year visual, select 2021 and notice what
    happens to the Sum of Revenue by Country. Tip: If you notice this
    step performs a drilldown into a table of data select Back to report
    and then Data / Drill and disable Data point table in the ribbon.
129. Now, Drill up to the Country level again.
130. Select 2021 again in the Sum of Revenue by Year visual to undo the
    cross-highlighting.
131. Disable drill mode by selecting the down arrow again on the Sum of
    Revenue by Country visual. Now let’s analyze the data by product.
    We’ll start by creating a product hierarchy.
132. Ensure that there no visuals are selected within the design canvas.
    From the Data pane, select the ellipses (…) to the right of the
    Category field in the Product table.
133. Select Create Hierarchy.

39 | Page

Notice that a new object called Category Hierarchy is created inside
the Product table. 134. Double-click Category Hierarchy and rename it to
Product Hierarchy. 135. Select the ellipses (…) to the right of the
Segment field within the Product table. 136. Select Add to Hierarchy,
and then choose Product Hierarchy.

137. Select the ellipses (…) to the right of the Product field within
    the Product table.
138. Select Add to Hierarchy, and then choose Product Hierarchy. We have
    now created a Product Hierarchy with the fields Category, Segment,
    and Product.

40 | Page

139. Select the white space within the canvas de-select any visual that
may be selected. From the Visualizations pane, select Clustered bar
chart.

140. With the Clustered bar chart still selected, from the Data pane,
    expand the Product table.
141. Select the checkbox to the left of the Product Hierarchy. Notice
    the complete hierarchy is selected.
142. From the Data pane, expand the Sales table.
143. Select the checkbox to the left of the Revenue field. Notice that
    the Product Hierarchy is added to the Y-axis field and Sum of
    Revenue is added to the Xaxis field within the Visualizations pane.
    You will see the visual within the canvas change and update as you
    select these different fields.

41 | Page

Now, let’s edit interactions for the new chart. 144. Select the Sum of
Revenue by Country visual. With the visual selected, navigate to the
Format tab within the ribbon at the top of the screen. Select Edit
interactions. 145. Change the Sum of Revenue by Category visual to
filter.

Note: Review steps 71-72 if you need a review of how Edit interactions
works. 146. Do the same thing with the Sum of Revenue by Year visual;
select the Sum of Revenue by Year visual and change the interaction of
the Sum of Revenue by Category to filter 147. We also need to change the
interactions of the other charts. Select the Sum of Revenue by Category
visual and change the Sum of Revenue by Year visual to a filter action.
148. Select the filter interaction on the Sum of Revenue by Country
visual as well. 149. Select the format tab and choose Edit interactions
to turn it off. 150. Navigate back to the Sum of Revenue by Category
visual 151. Enable drill-down mode in the Sum of Revenue by Category
chart by selecting the down arrow in the visual header.

42 | Page

152. Select Urban to drill-down into the Segment. After drilling down
into the Segment disable drill down.

153. Within the Sum of Revenue by Country visual ensure you are at the
    Country level. If you are not, drill up to Country level then
    disable drill down.

154. Select Australia in the Sum of Revenue by Country visual
155. Then, use the Ctrl key on your keyboard to multi-select 2021 from
    the Sum of Revenue by Year visual. Notice that the sales in the
    Urban Extreme segment are higher than the Urban Convenience and
    Urban Moderation segments.

43 | Page

Let’s investigate further… 156. Select the down arrow at the top of Sum
of Revenue by Country visual to enable drill down. 157. Select Australia
to drill down to the State level. If 2021 was unselected during this
process, make sure to select it again as shown below.

158. Disable drill mode in the Sum of Revenue by Category and Segment
    visual
159. Ctrl + select the Urban Extreme Segment in the Sum of Revenue by
    Category and Segment visual. Notice that there is no significant
    spike in revenue by State.

44 | Page

160. Select Urban Extreme again to remove cross-filtering between the
visuals. 161. Drill up to the Category level in the Sum of Revenue by
Category and Segment visual. 162. Drill up to Country in the Sum of
Revenue by Country and State visual 163. Disable drill mode in the Sum
of Revenue by Country visual

164. Select the background of the Sum of Revenue by Year visual to
    ensure the visual is not still filtered. Now let’s add a Matrix
    visual so we can view the data in rows and columns. We can apply
    conditional formatting to the matrix visual to highlight the
    outliers.
165. Select the Sum of Revenue by Category Clustered bar chart and
    change it to a Matrix visual.

45 | Page

166. Select the + (plus sign) to the left of the Urban row to drill
down.

Let’s add the percentage of the total field to the visual to give us a
better perspective on the data. 167. With the Matrix selected, navigate
to the Data pane. 168. From the Data pane, drag and drop the Revenue
field from the Sales table to below the existing Sum of Revenue field in
the Values section of the Visualizations pane. It will look like you
have Sum of Revenue twice in the Values section.

169. Select the down arrow to the right of the newly added Sum of
    Revenue field in the Values section.

46 | Page

170. From the visual field menu, hover over Show value as and then
select Percent of grand total.

171. Right-click on the newly created field and select Rename for this
    visual. Name the field %GT Revenue.
172. Drill back up to Category level if you are not already there within
    the Matrix visual.

173. Then, select Enable drill down mode within the header of the Matrix
    visual
174. Now, select Urban (the word, not the + sign)

47 | Page

175. Ensure that the Matrix visual is still selected. Then, using the
Ctrl key on your keyboard, multi-select the 2021 column within the Sum
of Revenue by Year visual and the Australia column within the Sum of
Revenue by Country visual.

Now let’s look at the Extreme category for Australia over time.

Notice that the Extreme segment has around 40% of the grand total. Now
let’s drill down into the Extreme Segment to determine if a Product
stands out. 176. Within the Matrix visual, select the Extreme row (the
word, not the + sign) to drill down to the Product level.

48 | Page

177. Resize the visual as needed.

178. Select the ellipses (…) in the top right corner of the matrix
    visual header.
179. Select Sort By &gt; %GT Revenue and ensure that Sort Descending is
    also selected (this should be the default).

We can now see the top Products.

49 | Page

180. Ensure 2021 is selected in the Sum of Revenue by Year visual, and
Australia in the Sum of Revenue by Country visual. Notice that Maximus
UE-04 and Maximus UE-21 are the top products. Also, notice that Product
Maximus UE-04 has nearly 7% of the grand total.

Earlier we created a calculated column named ZipCountry using DAX. Now
let’s create a Percent Growth calculated measure so we can compare sales
over time. We are going to do this in two steps. But first, what’s the
difference between a measure and a calculated column? • •

A Calculated column is evaluated row by row. We extend a table by adding
calculated columns. A Measure is used when we want to aggregate values
from many rows in a table.

181. Within the Data pane, select the Sales table.
182. From the ribbon at the top of the screen, select the Table Tools
    tab, then select New Measure. A formula bar will appear.
183. Enter PY Sales = CALCULATE(SUM(Sales\[Revenue\]),
    SAMEPERIODLASTYEAR('Date'\[Date\]))

50 | Page

184. Select the checkmark to the left of the formula bar or hit Enter
on your keyboard. You will see the PY Sales measure is created within
the Sales table.

Let’s create another measure using a different method. 185. In the Data
pane, hover over the Sales table. 186. Select the ellipses (…) to the
right of the table name. 187. Select New Measure from the options menu.
A formula bar opens.

188. Within the formula bar, enter the following formula: % Growth =
    DIVIDE(SUM(Sales\[Revenue\])-\[PY Sales\],\[PY Sales\])

51 | Page

189. Select the checkmark next to the formula bar or hit Enter on your
keyboard. You will see the % Growth measure added to the Sales table.

190. Ensure that the Matrix visual is still selected. If not, select the
    Matrix visual and also ensure that you still have the Australia and
    2021 columns selected in the other visuals.
191. In the Data pane, select the checkbox next to the newly created PY
    Sales and % Growth measures within the Sales table. These measures
    should be added to the Values section of the Matrix.
192. Resize the Matrix to see these newly added fields. (You may also
    have to adjust the size of the other visuals where needed)

Notice that the fields need to be formatted. 193. From the Data pane,
select the % Growth field (the name, not the checkbox) within the Sales
table. 52 | Page

194. From the ribbon at the top of the screen, select the Measure Tools
tab, choose the Format dropdown, and then select Percentage.

Tip: If your % Growth calculated measures shows as 0.00% at any point,
double check that you still have 2021 and Australia selected as filters
from the other visuals. 195. Similarly, from the Data pane, select the
PY Sales field (the name, not the checkbox) within the Sales table. 196.
From the ribbon at the top of the screen, select the Measure Tools tab,
choose the Format dropdown, and then select Currency (if it isn’t
already formatted to Currency). 197. Similarly, from the Data pane,
select the Revenue field. 198. From the ribbon at the top of the screen,
select the Column Tools tab, choose the Format dropdown, and then select
Currency (if it isn’t already formatted to Currency). 199. Ensure that
Australia is still selected within the Sum of Revenue by Country visual,
and the 2021 column is still selected within the Sum of Revenue by Year
visual. Notice that Maximus UE-04 has nearly 158% growth compared to
last year.

53 | Page

200. Select the white space within the canvas to deselect any of the
possible selected visuals. Then, from the ribbon at the top of the
screen, select File and choose Save from the menu to the left of the
screen.

Congratulations! You have now completed Lab 2!

54 | Page

References AI in Every City introduces you to some of the key functions
available in Power BI. In the ribbon of the Power BI Desktop, the Help
section has links to some great resources.

Here are a few more resources that will help you with your next steps
with Power BI. •

Getting started: http://powerbi.com

•

Power BI Desktop: https://powerbi.microsoft.com/desktop

•

Power BI Mobile: https://powerbi.microsoft.com/mobile

•

Community site https://community.powerbi.com/

•

Power BI Getting started support page:
https://support.powerbi.com/knowledgebase/articles/430814-get-started-with-power-bi

•

Support site https://support.powerbi.com/

•

Feature requests https://ideas.powerbi.com/forums/265200-power-bi-ideas

•

New ideas for using Power BI https://aka.ms/PBI\_Comm\_Ideas

•

Power BI Courses http://aka.ms/pbi-create-reports

•

Power Platform
https://powerplatform.microsoft.com/en-us/instructor-led-training/

•

Power Apps Business Apps | Microsoft Power Apps

•

Power Automate Power Automate | Microsoft Power Platform

•

Dataverse What is Microsoft Dataverse? - Power Apps | Microsoft Docs

55 | Page


