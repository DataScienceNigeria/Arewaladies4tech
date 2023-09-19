# Content
1. Introduction
2. Power BI Desktop
3. Power BI Desktop - Data Visualization

---
## Introduction
This document is lab three out of five total labs.

Please continue to use your file after completing Lab 2. If you are joining the Arewaladies4tech at this point or were unable to complete previous labs, please start this lab with the provided **Lab 2 solution.pbix** file found in the Reports folder.

At the end of this lab, you will have completed a full report that is ready to be published to the Power BI Service. In the report, you will have learned how to do conditional formatting, add a logo to the manufacturer filter, import a custom visual, and apply a custom theme to the report. By the end of this lab, you will have learned how to add bookmarks to tell a story about the report.

The flow of this document includes screenshots to provide a visual aid for the users and a text description of the steps the user needs to follow. In the screenshots, sections are highlighted with red or orange boxes to indicate the action or area on which a user needs to focus.

---
# Power BI Desktop
## Power BI Desktop - Data Visualization
Now that we've completed data exploration and visualization in Labs 1 and 2, you have good insights to share with your team. In this section, you will build a report like the one shown in the figure below.
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/5498cbe7-08b5-4735-9f0e-87a323c55feb)

---
Now let's get started. We will pick up where we left off at the end of **Lab 2**.
  1. With the **Matrix** visual selected, navigate to the values section in the **Visualizations** pane and select the arrow to the right of % **Growth**.
  2. Select **Conditional Formatting** and then choose **Background Color**. The **Background color** dialog box opens. This dialog provides options to format the report background color using either rules or diverging colors.
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/ad5d4556-8012-40f8-b5e7-42b057b80d3d)
     
  
  3. Within the **Background color -% Growth** dialog box, select the **Add a middle color** checkbox.
  4. Then, select **OK**.
     ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/c70a6042-6613-41f7-9478-5e3a33057285)
     ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/aaf32780-93c2-4cba-99e0-040a331a4723)
     
 In lab 1 we added a filter to only load **three years** of data. Let's load the **entire** data now.
  5. From the ribbon at the top of the screen, select the **Home** tab and then choose **Transform Data**.
       The **Power Query Editor** window opens.
  6. Change the **Sales** table by selecting the filter button on the **Date** Column.
  7. Choose **Clear filter** to remove the 4-year filter.
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/8d27e33f-462b-453d-bf08-62a3e27a119b)
     
  8. Select the **Home** tab from the ribbon and then choose **Close & Apply** to load the data.
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/1b6403ab-edc8-4b24-924c-d52f5622db33)
      
  This time all the data will be loaded. It might take a couple of minutes as we are loading approximately seven million rows.
     Once the data is loaded, notice the **Sum of Revenue by Year** visual. You will see Columns for years 2014 through 2021.
     Make sure the report is filtered by **VanArsdel** using the **Manufacturer slicer. Remove all other filters.
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/baa97ed7-f84a-450b-aa7b-340ea6f66dbc)
      
  9. Enable **drill down** mode on the **Sum of Revenue by Country** visual by selecting the **down arrow** within the header of the visual (this may alternatively be located at the bottom of the visual based on how you have the visual placed within the canvas).
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/000fc228-e8bd-4950-97da-a1993b56b8f3)
      
  10. Within the visual, select the **Australia** column to drill down to the **State** level.
  11. **Disable** the drill down mode on the **Revenue by Country and State** visual.
  12. Ensure you still have the year **2021** selected in the **Sum of Revenue by Year** visual. If you do not, hold down the **Ctrl** key on your keyboard and select the **2021** column.
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/d52361e5-d8b3-4e07-a645-1f0d06f0cf39)
      

       At this point, your canvas and visuals should look similar to those in the figure below:

      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/6d350420-15a2-409b-8512-b53c80fa5bb5)
      
  
  13.	Select the **Manufacturer slicer** visual within the canvas.
  14.	Within the **Visualizations** pane, switch to the **Format visual** tab. Then, expand the **Slicer settings** section, and then the **Options** section.
  15.	From the **Styles** drop-down, select **Tile**. Notice that the Manufacturer slicer visual changes to a tile style. You may need to **resize** your visual so that you can view **all** of the Manufacturers at once within the list.
       ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/e429accb-6de9-42f3-8d4d-6940ed4f9318)
      	![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/11b98523-962d-421e-a7d5-2664c9180d7f)
     	
  16. Select **VanArsdel** within the **Slicer** visual.
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/2df9fe22-5767-4a45-bfb3-ff1a29b9e1b9)
      
  
  Now it would be nice to add logos of the manufacturer to the slicer instead of just text. Let’s do it.

  
  17.	Ensure that the Manufacturer slicer visual is still selected. From the **Data** pane, select the **Logo** field from the **Manufacturer** table. (Do not select the checkbox next to the Logo field; only select the name of the field.)
  18.	From the ribbon, select the **Column tools** tab, choose the **Data Category** drop down and then select **Image URL**. Setting the data category property to Image URL helps Power BI understand that the data in this field is a URL so it can render the image in the report.
       ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/dd8614cc-0af4-4452-a67e-429ded93184d)
     	
  
  19.	From the **Data** pane, drag and drop the **Logo** field from the **Manufacturer** table to below the Manufacturer column within the **Field** box in the **Visualizations** pane.
  20.	Select the **X** to the right of the **Manufacturer** field in the box so that the Logo field has replaced it.
  21.	**Resize** and move the visuals as needed.
  22.	Select the **VanArsdel** logo within the **Manufacturer** slicer visual to filter all the other visuals.
         ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/910ce71e-daf0-4b07-87d3-8ee08f405621)
     	
 
  23.	Select the **Sum of Revenue by Year** visual.
  24.	From the **Visualizations** pane, select the **Line and clustered column chart** to change the visual type.
  25.	From the **Data** pane, drag and drop the % **Growth** field from the **Sales** table to the **Line y-axis** box.
        ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/0bb2e26f-f803-49f9-bf55-b6f9bbc76b29)
     	
This provides a representation of the revenue and growth over time.

Now let’s select the **Sum of Revenue** card visual so we can change it to a Gauge visual.
  26.	From the **Visualizations** pane, select the **Gauge** visual.
  27.	From the **Data** pane, drag and drop the **PY Sales** field from the **Sales** table to the **Target value** in the Visualizations pane.
        ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/ba19b6c8-5c47-41da-847b-0f7b28bd896c)
        
  28.	**Resize** and **move** the visuals as needed. Now we can compare **Revenue** with the target. Now let’s take time to select the colors for the visuals.
  29.	Select the **Gauge** visual.
  30.	From the **Visualizations** pane, select the **Format visual** tab (the **paint brush** icon).
  31.	Expand the **Colors** section.
  32.	Select the drop-down for **Fill** color.
  33.	Notice you can pick a color from the default color palette or pick **More colors**. No need to make a change here because the next steps will standardize all the report colors used.
         ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/14208ab0-8f3f-4bfc-a661-61ca8b719195)
 Let’s check out some of the **themes** available.
  34.	Ensure that the **Gauge** visual is still selected. From the ribbon, select the **View** tab, choose the drop-down arrow within the **Themes** menu, and then select the **Temperature** theme.
        ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/194f7e1c-3b01-47e7-b83a-65ba8e5616c5)

  Notice that the colors on all the visuals are updated. Feel free to try the other **out-of-the-box themes**.

  In our scenario, the Marketing department has provided standard color themes to be used across reports. We can use the **Report Theme** feature in Power BI by uploading a theme. The **Report Theme** requires a **JSON file** where the data colors, background, foreground, and a table of accent colors are defined. The JSON file can be used across all the reports.
 
 35.	From the ribbon, select the **View** tab, choose the drop-down within the **Themes** menu, and then select **Browse for themes**.
         ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/06655708-ad66-476d-9f53-69f8bc1d26e7)
    	
 36.	A file browser dialog box opens. Navigate to the **Data** folder, then the **Theme** folder (AIIE/Attendee/Data/Theme).
 37.	Select the **AIIETheme2** file and then choose **Open**.
       ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/858ad3e0-b739-4196-9303-0be5c630da00)
       ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/961cc459-4f13-4c11-b2b0-694c0553f692)
    	
 38. Once the theme is imported, a success dialog box opens. Select **Got it**.
       ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/76472f4e-261a-4200-b977-24eeb24c257c)
     
     Notice colors on all the visuals are updated. Your report should look like the figure at this point. This theme looks good. Now, most of the visuals are blue, so let’s add some contrast.
        ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/b421fd11-5da9-4bbe-8eb0-4e5be08f8eb4)
     
39.	Select the **Gauge** visual.
40.	From the **Visualizations** pane, select the **Format your visual** tab (the **paint brush** icon).
41.	Expand the **Colors** section.
42.	Select the drop-down menu below **Target color**. Notice the color palette is different now.
43.	Select the color **black**. Notice the subtle change to the target line in the visual.
44. Collapse the **Colors** section.
     ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/ba254ba3-325b-47cb-8bf1-22c7ffd6a0de)
    
45.	Within the Visualizations pane, under the **Format your visual** tab, expand the **Data labels** section.
46.	Then, expand the **Values** section and change the **Font size** to **10**.
     ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/94b932f1-d914-460d-a295-3e1ca68427e9)
   	
47.	While still in the **Visualizations** pane, under the **Format your visual** tab, expand the **Target label** section.
48.	Within the Values section, change the **Font size** to **10**.
     ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/8399f8f8-d52f-4020-ae58-b24cb9e2185c)
   	
49.	Select the **Matrix** visual.
50.	Using the arrows within the visual header, **Drill up** to the **Segment** level.
     ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/509808eb-c811-4012-a6a9-871175042c5d)
   	
51.	Select the **Sum of Revenue by Country and State** visual.
52.	Using the arrows within the visual header, **Drill** up to the **Country** level and then disable Drill mode on this visual.
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/6b272898-3700-4cb7-9d79-e7e0f1e815ab)
   	
53.	While the **Sum of Revenue by Country** visual is still selected, within the **Visualizations** pane, select the **Format visual** tab (the **paint brush** icon).
54.	Expand the **Columns** section, then the **Colors** section.
55.	Using the drop-down menu, select a *light shade* of **gray** as the **Default color**.
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/1ba56487-cd9f-40ff-8b9b-6af48ce39bcb)
   	
56.	Ensure that the **Sum of Revenue by Country** visual is still selected. Within the **Visualizations** pane, under the Format your **visual** tab, turn **On** the **Data labels** and expand this section.
57.	Expand the **Values** section within the **Data labels** expansion.
58.	Change the **Display units** to **Millions**.
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/11dbd6bb-38b8-4ddd-973f-75d3c7d76020)
   	
Notice that there are lot of formatting options. For example, a visual title can be changed and formatted, or you can add a border and background to the visual. Feel free to explore the options.

Let’s move to another visual.
59.	Select the **Sum of Revenue and % Growth by Year** visual.
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/8af8a500-79c2-4de9-a707-bf95cbd92f07)
      
60.	Since there is no **Revenue** value in the year **2022**, right-click on the line above **2022** and select **Exclude**.
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/5752bf98-b640-45fc-979d-5d4b6385a0e0)
   	
61.	Next, from the **Visualizations** pane, select the **Format your visual** tab (the **paint brush** icon).
62.	Expand the **Columns** section.
63.	Expand the **Colors** section
64.	Select a light shade of **gray** as the **Default color**.
     ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/b9643c74-7802-4d77-9c82-d983109454bd)
     
65.	Ensure that the **Sum of Revenue and % Growth by Year** visual is still selected. Within the **Visualizations** pane, under the **Format your visual** tab, expand the **Lines** section.
66.	Then, expand the **Colors** section.
67.	Set the **% Growth** color to **black**.
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/091a408b-2c37-4dd3-8db3-054f4a9a7d48)
   	
      Now let’s add a **report title**.

68.	From the ribbon, select the **Home** tab and then choose **Text box**. Notice a text box visual is added.
69.	**Resize** and move the visuals as needed.
70.	Enter **Manufacturer Analysis** in the text box.
71.	Highlight **Manufacturer Analysis** to format the text.
72.	Select **Segoe (Bold)** as the **font**.
73.	Select **32** as the **font size**.
74.	**Resize** the text box as needed.
  Notice the additional formatting options that have been added are highlighted in black (superscript, subscript, and bulleted lists)
   ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/06c757f0-27ff-405d-9405-1317f1d6fd8c)

75.	From the ribbon, select the **View** tab.
76.	Select the **checkbox** next to **Show Gridlines** and **Snap to Grid** within the **Page options** section. This will help with aligning the visuals.
     ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/dc7a72df-484e-4e9d-8d8b-0492fa459823)
   	
77.	Now, use the **Gridlines** and **Snap to Grid** features to **position** and **resize** your visuals to appear like, or similar to, the figure below.

