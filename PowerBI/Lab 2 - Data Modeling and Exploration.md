<img width="109" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/6b35e1c1-035f-4a26-a58c-ebd2a2264d52"><img width="814" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/8aa5133b-caa1-41ca-93b3-e61b0a7dd4ec">

# Contents
- Introduction 
- Power BI Desktop – Data Modeling and Exploration
  - Power BI Desktop - Layout
  - Power BI Desktop – Data Exploration 
  - Power BI Desktop – Data Exploration Continued
- References

## Introduction

  This is lab two out of five labs in total. **Please continue to use your file after completing Lab 1.** If you are joining the AIIE at this point or were unable to complete Lab 1, please start this lab with the “Lab 1 solution.pbix” file you can find in the **Reports** folder.

In this lab you will learn how to:
  - create a range of different charts.
  - highlight and cross-filter.
  - create new groups and hierarchies.
  - add new measures to the model to do additional analysis.

The lab includes steps for the user to follow along with associated screenshots that provide a visual aid. In the screenshots, sections are highlighted with red or orange boxes to indicate the area the user needs to 
focus on.

## Power BI Desktop – Data Modeling and Exploration
In this section, we will learn about the [key parts of the Power BI desktop](https://powerbi.microsoft.com/en-us/documentation/powerbi-desktop-query-overview/). We will model and explore the data and build visuals.

### Power BI Desktop - Layout
Let’s start with the main **Power BI Desktop** window of your file entitled **MyFirstPowerBIModel** (This is the file that we saved at the end of Lab 1; refer back to the Introduction) and become familiar with the distinct 
sections available.

<img width="567" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/f2b07162-e55e-4495-97a3-a500915418ec">

1. At the top of the window within the ribbon, you will see the **Home** tab where the most common operations you perform are available.

2. The **Insert** tab in the ribbon allows you to insert shapes, a text box or new visuals.

3. The **Modeling** tab in the ribbon enables additional data modelling capabilities like adding custom columns and calculating measures.

4. The **View** tab has options to format the page layout.

5. The **Help** tab provides self-help options like guided learning, training videos and links to online communities, partner showcases and consulting services.

6. On the left side of the window, you have three icons within the **Navigation** menu: **Report**, **Data** and 
**Model**. If you hover over the icons, you can see the **tooltips**. Switching between these allows you to see the data and the relationships between the tables.

7. The centre **white space** is the canvas where you will be creating visuals.

<img width="576" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/7913f131-edf9-4e6c-91e7-14193fb4fdfc">

8. The **Visualizations** pane on the right-side of the window allows you to select visualizations, add values to the visuals, and add columns to the axis or filters.

9. The **Data** pane is where you see the list of tables which were generated from the queries. By selecting the arrow next to a table name, you can expand the list of fields for that table.
    
<img width="580" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/e86b45ef-6cce-4fe4-bcc9-0435ea008b47">

10. Select the **Data** view icon within the **Navigation** menu to the left side of the screen. Select and expand the **Sales** table within the **Data** pane as shown in the figure below. Scroll up and down to notice how fast you can navigate through over three million rows.

<img width="578" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/690d561e-d8b9-47dd-bb3d-2ad1a610474b">

11. Select the **Model** view icon within the **Navigation** menu to the left side of the screen. You will see the 
tables you have imported along with Relationships. The Power BI Desktop can often automatically infer relationships between the tables.

  - A relationship is created between the **Sales** and **Product** tables using the **ProductID** column.
  - A relationship is created between the **Product** and **Manufacturer** tables using the **ManufacturerID** column.

Power BI supports multiple types of relationships:
  - 1 to many
  - 1 to 1
  -  Many to many

In this lab, we will be using the 1 to many type of relationship, the most common type of relationship. This means one of the tables involved in the relationship should have a unique set of values. We will create additional relationships later in this lab.

Drag, resize, and move the tables to appear as shown in the figure below:

<img width="572" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/8287e063-6891-4752-8d31-8b273c84918e">

<img width="592" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/7ee096f4-f1c4-4a84-b5d3-913a5ed83966">

### Power BI Desktop – Data Exploration

Now that we have loaded data, let’s start with analyzing sales by country.

12. Select the **Report** icon within the **Navigation** menu to the left side of the Power BI Desktop to navigate to the **Report** view.

13. Select the **Clustered column chart** visual in **Visualizations** pane.

<img width="570" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/d01e31db-473c-45f6-96fd-0d91fae855bb">

14. From the **Data** pane to the right of the screen, expand the **Geography** table and then select the **checkbox** next to the **Country** field. Notice that the **Country** field is placed within the **X-axis** box within the **Visualizations** pane.

15. From the **Data** pane again, expand the **Sales** table and then select the **checkbox** next to the **Revenue** field. Notice that the **Revenue** field is placed within the **Y-axis** box within the **Visualizations** pane.

16. **Resize** the visual as needed by dragging the anchor points around the edges of the visual as shown below.

<img width="486" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/01da93f5-bbf3-4142-95e1-d257deb41bbb">

Notice that the **Sum of Revenue** of each country is the same. This is because there is currently no relationship between the tables used in the visual. Next, we will create a relationship between the Sales and Geography tables.

17. Select the **Model** icon within the **Navigation** menu to the left side of the Power BI Desktop to navigate to the **Model** view.

18. Our sales data is by Zip code, so we need to connect the **Zip** column from the **Sales** table with **Zip** column in the Geography table. To do this, select, drag, and drop the **Zip** field in the **Sales** table to on top of the **Zip** field in the **Geography** table.
    
You will notice the **Create Relationship** dialog opens with a warning message at the bottom stating the relationship has a many-many cardinality. The reason for the warning is that we don’t have unique Zip 
values in the **Geography** table. This is because multiple countries could have the same Zip code. Let’s concatenate the **Zip** and **Country** columns to create a unique value field.

19. Select the **Cancel** button at the bottom of the **Create relationship** dialog box.

<img width="575" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/f2bfcfad-b223-4271-90a3-34b75d74cefe">

We need to create a new column in both the **Geography** table and the Sales table that combines the **Zip** and **Country** columns. Let’s start by creating a new column in the **Sales** table.

20. Select the **Report** icon within the **Navigation** menu to the left of the screen to navigate to the **Report** view.

21. Within the **Data** pane, hover over the **Sales** table name, then select the **ellipses**(…) to the right of the table name. Choose New Column from the options menu. You will then see a formula bar appear, as shown in the figure below, to help create this new column.

<img width="581" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/76be82cf-e607-4942-abc9-b3ef836b5824">

22. Now we are ready to combine the Zip and Country columns into a new column called ZipCountry, separated by a comma. To create this column called ZipCountry, type the following calculation in the formula bar:

     ``ZipCountry = Sales[Zip] & "," & Sales[Country]``

<img width="587" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/986898c4-9474-4097-acbe-68aee4aad7cf">

23. Once you are done entering the formula in the formula bar, press Enter 
on your keyboard or select the checkmark on the left side of the formula bar.

<img width="316" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/d9ebbb4a-26eb-4521-b171-350bed60c2db">

You will notice that IntelliSense appears guiding you to choose the correct column. The language you used to create this new column is called **Data Analysis Expression (DAX)**. We are connecting columns (Zip and Country) in each row by using the “&” symbol. The icon with an (fx), near the new column ZipCountry, indicates that you have a column containing an 
expression, also referred to as a calculated column.

<img width="587" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/5c6faebc-0398-47e9-b4c7-69f1b9d3cde8">

Let’s use this method to create a **ZipCountry** column in the **Geography** table.

24. From the **Data** pane, select the **Geography** table. Then from the ribbon, choose **Modeling**, and then select **New Column** as shown in the figure below:

25. A formula bar now appears. Enter the following DAX expression in the formula bar:

   ``ZipCountry = Geography[Zip] & "," & Geography[Country]``

<img width="469" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/823873e1-5e6b-4076-b196-ed9118d55417">

You will see a new column, **ZipCountry**, in the **Geography** table. The final step is to set up the relationship between the two tables using the newly created **ZipCountry** columns in each of these tables.

26. Select the **Model** icon in the Navigation menu to the left of the Power BI Desktop to navigate back to the **Model** view.

27. Drag and drop the **ZipCountry** field from the **Sales** table to on top of the **ZipCountry** field in the **Geography** table.

<img width="572" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/279c4441-1962-4a87-8208-eb2e524ab1fc">


Now we have successfully created a relationship. The number “1” next to **Geography** indicates it is on the one side of the relationship and the **“*”** next to **Sales** indicates it is on the many side of the relationship.
28. Select the **Report** icon within the **Navigation** menu to the left of the Power BI Desktop to navigate back to the **Report** view.

Notice the clustered column chart that we created earlier. It shows different sales for each country or region. The USA has the most sales, followed by Australia and Japan.

<img width="585" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/1b3812d0-2d74-4a49-9e22-5356ab5d0fc0">

By default, the chart is sorted by **Revenue**. In this next section, we will begin to use the data model we have designed by exploring several data visualization components.

29. Select the **Clustered Column Chart** visual. Select the **ellipses** (…) located near the top right corner of the visual (alternatively, the ellipse may be at the bottom of the chart). Notice there is an option to 
**Sort axis** by **Country**. Do not make any changes for now. Select the background of the report to close out the options menu.

<img width="492" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/6708fa70-29ec-4f7e-9ce7-72e64f05b16a">

30. Select the **Clustered column Chart** again. Then, from the Data pane, expand the **Manufacturer** table, and then drag and drop the **Manufacturer** column to the **Legend** section under **Visualizations**.

<img width="493" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/63159945-18af-4266-b5cf-07308fdf1ab9">

31. **Resize** the visual as needed within the canvas.

Now we can see the top manufacturers by country

<img width="495" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/b6fe7c65-15fa-475c-80a9-56997ab84c5e">


Now let’s try different visuals to see which chart represents the data the best.

32. With the **Clustered column Chart** visual selected in the design space, select and change the chart to a **Stacked column chart** by choosing the visual type within the **Visualizations** pane.

<img width="482" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/501dbdc3-e88d-44ee-a7c1-4707a80becb2">


33. Sort the **legend** in **descending** order using the same method you learned in **step 29**.

<img width="490" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/320ed3d4-934a-4a3a-ae49-036a800279b9">

34. If the **Filters** pane is not yet expanded, select the **<<** at the top of the collapsed pane to expand it. 
Within the **Filters** pane, expand **Manufacturer** under the **Filters on this visual** section. A drop-down arrow will appear for you to expand when you hover your mouse over the Manufacturer.

35. Using the **Filter** type dropdown menu, select **Top N**.

36. Enter **5** in the text box next to **Top**.

37. From the **Sales** table, drag and drop the **Revenue** field into the **By value** section.

38. Select **Apply filter** at the bottom of the **Manufacturer** section within the **Filters** pane to activate the filter.

<img width="504" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/ed7ddd54-2d73-47e3-9f5f-447543812824">

Notice that the visual is filtered to display the top five manufacturers by **Sum of Revenue**. We see that the manufacturer VanArsdel has a higher percentage of sales in Australia compared to other countries or regions.

If you desire, you can now collapse the Filters pane until it is needed.

We can now add total labels to the stacked visuals. Let’s explore font formatting options.

39. Select the **paintbrush icon (Format your visual** button) at the top of the **Visualizations** pane, and then expand the **X-axis** section.

40. Select the **Bold** and **Italic** options – feel free to try different formatting options in different areas. For the purpose of this lab, we will turn on Bold and Italic


<img width="567" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/1fb18a34-0bd8-410d-a89a-aea93ea31832">

41. Navigate to the **Total labels** section within the **Visualizations** pane and switch the setting to **On**.


<img width="503" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/926348ea-a90b-44db-92dd-1180464f9044">

Notice the total labels now appearing above each of the columns within the Stacked column chart. Any of these properties can very easily be changed or turned on/off whenever you like.

Now let’s **remove** the total labels.

42. Select the **On/Off** toggle setting next to **Total labels** to switch the setting to **Off** again.

<img width="394" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/eecb8a69-c1ac-438d-a34d-37b6e2671699">

We are interested in the **top five** competitors by revenue. Let’s group them so we don’t have to add a filter to every visual. Before we do that, we’ll remove the **Top 5** visual level filter we added earlier.

43. Begin with the **Stacked column chart** selected in the canvas.

44. Hover over and select the **Clear filter** icon (eraser) next to the **Manufacturer** field in the **Filters** pane.
(You may need to expand the Filters pane if you previously collapsed it)

<img width="509" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/96fee6d4-d46a-4781-9c5e-45d75b1cbcb4">

<img width="526" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/32b17a28-574f-4139-bc7d-3fd4d2015988">

45. From the **Data** pane, expand the **Manufacturer** table and right-click on the Manufacturer field.

<img width="416" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/1247058f-f84a-40b2-a17d-bf164999eafa">

46. Select **New Group** from the options menu.

<img width="509" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/bf102e83-5f8f-4dbc-b3c9-0d29aee29028">

47. In the **Ungrouped values** section of the **Groups** dialog, using the CTRL key (to multi-select), choose **Aliqui, Currus, Natura**, and **Pirum**.

48. Select the **Group** button. Notice a new group is added in the **Groups and members** section.

49. Double-click the newly created group and rename it **Top Competitors**.

50. Select **VanArsdel** from the **Ungrouped values** section and select the **Group** button to create the **VanArsdel** group.

51. Select the checkbox **Include Other group**. This will create another **Other** group that includes all the other manufacturers.

52. Select **OK** to close the **Groups** dialog.

<img width="560" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/8d906d9b-e241-40fc-a9c6-8f34f0f4372d">

53. With the **Stacked** column chart selected in the canvas, select the **X** next to **Manufacturer** in the **Legend** section of the **Visualizations** pane. This will **remove** the Manufacturer.

    (You may need to switch to the **Add data to your visual** tab within the **Visualizations** pane)

<img width="558" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/391b915b-8d9f-4f10-b45c-225af47a0cab">

54. From the **Data** pane, drag and drop the newly created **Manufacturer (groups)** to the Legend section of the **Visualizations** pane. Now we can see that VanArsdel has nearly 50% share in Australia.

<img width="594" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/a3a1354c-f6ea-4817-9b98-69d00f7f47c7">

<img width="460" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/43c9f2bf-0e7f-4470-ba7f-5eb6fa806853">

55. Hover over one of the columns in the **Stacked Column Chart** and right-click.

56. Select **Show as a table** from the context menu. You will now be in **Focus** mode with the chart displayed on top and the data displayed below. Notice that VanArsdel has a large percent of the Australian market.

<img width="509" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/8cae407c-e922-4b9a-b93b-0d3ef5855ce5">

57. Use the **orientation icon** in the top right corner of the chart to switch to the **vertical layout**. In this layout, you view the chart on the left and the data on the right in two separate panels.

58. Switch back to the horizontal layout and select **Back to Report** to navigate back to the **Report** canvas.

<img width="507" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/15c5eb3c-54d3-4c79-ba0f-15c5c34e74e2">

<img width="560" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/912970d1-e12a-4e87-9f60-1ad4fc293799">

Now let’s create a **Revenue by Manufacturer** visual.

59. Select the white space in the canvas to **deselect** the **Stacked column chart** visual. From the **Data** pane, select the checkbox next to the **Revenue** field in the **Sales** table.

60. From the **Data** pane, select the checkbox next to the **Manufacturer** field in the **Manufacturer** table.

61. From the **Visualizations** pane, select the **Treemap** visual.

<img width="587" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/e90b2396-eac3-4b1f-9780-2ad27b8cab09">

We now have **Sum of Revenue by Manufacturer**. Let’s turn our attention to the interaction between the **Stacked Column Chart** and the Treemap visuals.

62. Within the **Treemap** visual, select **VanArsdel** and notice that the **Stacked column chart** is highlighting only the values related to **VanArsdel**. This confirms that VanArsdel has a large percentage of the 
Australian market.

<img width="510" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/76d69058-539e-4171-a543-6d83f8f0ac5c">

63. To **remove** the highlighting, select **VanArsdel** again.

This interaction between visuals is called **cross-highlighting**.

Previously, we added a **Top 5 Visual level** filter. Now let’s add a filter to the **Page level**, so we are working with the Top Competitors and VanArsdel, and so we can filter out the other manufacturers.

Page-level filters apply to all visuals on the page. Visual-level filters apply only to a visual. Ensure the **Filters** pane is expanded/open.

 64. From the **Data** pane, drag and drop **Manufacturer (groups)** from the Manufacturer table to the **Filters on this page** box in the **Filters** pane.

65. Select both **Top Competitors** and **VanArsdel**.

<img width="537" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/03c8a07a-c467-433f-9eab-cf474c31dd32">

Now, let’s add a visual that provides sales information over time

66. Begin by selecting the **white space** in the **canvas** to ensure that nothing is selected.

67. Select the checkbox next to the **Date** field in the **Sales** table. Notice that a **Date Hierarchy** is created if you have **Auto date/time** turned on.

<img width="244" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/4b02bbb5-b634-448f-98cd-d664447dc98f">

68. Select the checkbox next to the **Revenue** field in the Sales table.

69. Change the newly created visual to a **Clustered column chart**. Notice in the **X-axis** section, a date hierarchy is used. There are arrows on the visual header which are used to navigate through the 
hierarchy.

<img width="509" alt="image" src="https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/8a327e04-1dbf-4201-96e0-a032df9d4af6">








![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/68654903/dadf0d07-ca06-4fd8-9ad8-42e581cbd632)


