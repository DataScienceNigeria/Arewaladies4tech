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
      
  
  14.	Select the **Manufacturer slicer** visual within the canvas.
  15.	Within the **Visualizations** pane, switch to the **Format visual** tab. Then, expand the **Slicer settings** section, and then the **Options** section.
  16.	From the **Styles** drop-down, select **Tile**. Notice that the Manufacturer slicer visual changes to a tile style. You may need to **resize** your visual so that you can view **all** of the Manufacturers at once within the list.

     	 ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/e429accb-6de9-42f3-8d4d-6940ed4f9318)

     	![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/11b98523-962d-421e-a7d5-2664c9180d7f)
     	
  18. Select **VanArsdel** within the **Slicer** visual.

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
    	
 37.	A file browser dialog box opens. Navigate to the **Data** folder, then the **Theme** folder (AIIE/Attendee/Data/Theme).
 38.	Select the **AIIETheme2** file and then choose **Open**.

    	 ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/858ad3e0-b739-4196-9303-0be5c630da00)

    	 ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/961cc459-4f13-4c11-b2b0-694c0553f692)
    	
 40. Once the theme is imported, a success dialog box opens. Select **Got it**.

      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/76472f4e-261a-4200-b977-24eeb24c257c)
     
     Notice colors on all the visuals are updated. Your report should look like the figure at this point. This theme looks good. Now, most of the visuals are blue, so let’s add some contrast.

      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/b421fd11-5da9-4bbe-8eb0-4e5be08f8eb4)
     
42.	Select the **Gauge** visual.
43.	From the **Visualizations** pane, select the **Format your visual** tab (the **paint brush** icon).
44.	Expand the **Colors** section.
45.	Select the drop-down menu below **Target color**. Notice the color palette is different now.
46.	Select the color **black**. Notice the subtle change to the target line in the visual.
47. Collapse the **Colors** section.
    
     ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/ba254ba3-325b-47cb-8bf1-22c7ffd6a0de)
    
48.	Within the Visualizations pane, under the **Format your visual** tab, expand the **Data labels** section.
49.	Then, expand the **Values** section and change the **Font size** to **10**.

   	 ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/94b932f1-d914-460d-a295-3e1ca68427e9)
   	
51.	While still in the **Visualizations** pane, under the **Format your visual** tab, expand the **Target label** section.
52.	Within the Values section, change the **Font size** to **10**.

   	![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/8399f8f8-d52f-4020-ae58-b24cb9e2185c)
   	
54.	Select the **Matrix** visual.
55.	Using the arrows within the visual header, **Drill up** to the **Segment** level.

   	![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/509808eb-c811-4012-a6a9-871175042c5d)
   	
57.	Select the **Sum of Revenue by Country and State** visual.
58.	Using the arrows within the visual header, **Drill** up to the **Country** level and then disable Drill mode on this visual.

   	 ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/6b272898-3700-4cb7-9d79-e7e0f1e815ab)
   	
60.	While the **Sum of Revenue by Country** visual is still selected, within the **Visualizations** pane, select the **Format visual** tab (the **paint brush** icon).
61.	Expand the **Columns** section, then the **Colors** section.
62.	Using the drop-down menu, select a *light shade* of **gray** as the **Default color**.

   	 ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/1ba56487-cd9f-40ff-8b9b-6af48ce39bcb)
   	
64.	Ensure that the **Sum of Revenue by Country** visual is still selected. Within the **Visualizations** pane, under the Format your **visual** tab, turn **On** the **Data labels** and expand this section.
65.	Expand the **Values** section within the **Data labels** expansion.
66.	Change the **Display units** to **Millions**.
    
      ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/11dbd6bb-38b8-4ddd-973f-75d3c7d76020)
   	
Notice that there are lot of formatting options. For example, a visual title can be changed and formatted, or you can add a border and background to the visual. Feel free to explore the options.

Let’s move to another visual.

59.	Select the **Sum of Revenue and % Growth by Year** visual.
     
  ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/8af8a500-79c2-4de9-a707-bf95cbd92f07)
      
60.	Since there is no **Revenue** value in the year **2022**, right-click on the line above **2022** and select **Exclude**.

   	 ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/5752bf98-b640-45fc-979d-5d4b6385a0e0)
   	
62.	Next, from the **Visualizations** pane, select the **Format your visual** tab (the **paint brush** icon).
63.	Expand the **Columns** section.
64.	Expand the **Colors** section
65.	Select a light shade of **gray** as the **Default color**.

   	 ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/b9643c74-7802-4d77-9c82-d983109454bd)
     
67.	Ensure that the **Sum of Revenue and % Growth by Year** visual is still selected. Within the **Visualizations** pane, under the **Format your visual** tab, expand the **Lines** section.
68.	Then, expand the **Colors** section.
69.	Set the **% Growth** color to **black**.

   	 ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/091a408b-2c37-4dd3-8db3-054f4a9a7d48)
   	
      Now let’s add a **report title**.

71.	From the ribbon, select the **Home** tab and then choose **Text box**. Notice a text box visual is added.
72.	**Resize** and move the visuals as needed.
73.	Enter **Manufacturer Analysis** in the text box.
74.	Highlight **Manufacturer Analysis** to format the text.
75.	Select **Segoe (Bold)** as the **font**.
76.	Select **32** as the **font size**.
77.	**Resize** the text box as needed.
Notice the additional formatting options that have been added are highlighted in black (superscript, subscript, and bulleted lists)

   ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/06c757f0-27ff-405d-9405-1317f1d6fd8c)

75.	From the ribbon, select the **View** tab.
76.	Select the **checkbox** next to **Show Gridlines** and **Snap to Grid** within the **Page options** section. This will help with aligning the visuals.
    
     ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/dc7a72df-484e-4e9d-8d8b-0492fa459823)
   	
77.	Now, use the **Gridlines** and **Snap to Grid** features to **position** and **resize** your visuals to appear like, or similar to, the figure below.
78.	Uncheck the **Show Gridlines** and **Snap to Grid** options to disable these features once you have finished moving the visuals into the correct places.
    
 ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/498ba465-ec39-4760-97f4-1c4009cae909)
   
79.	Right-click the page name in the lower-left corner and then select **Rename Page** from the options menu.
80.	**Rename** the page to **Manufacturer**.
    
    ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/bfba1008-cfb4-4a31-807e-d187246423d6)

We can also use a background image to format the reports. Let’s try it.

81.	Select the white space in the canvas to deselect any possible selected visual(s).
82.	From the **Visualizations** pane, select the **Format your visual** tab (the **paint brush** icon).
83.	Expand the **Canvas Background** section.
84. Select the **Browse Image** button.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/d23c3dc3-377f-4a77-a8fc-64706991879e)


85.	A **File** browser dialog box opens. Browse to the **AIIE** folder, then the **Data** folder (AIIE/Attendee/Data).
86.	Select the **Background.jpg** file.
87.	Select the **Open** button.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/937e0dba-06e6-4b56-8957-fcfc78e2a096)

88.	Within the **Canvas background** section of the **Visualizations** pane, change and set the **Transparency** slider to **0%**.

    ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/84aed2e3-527b-4da2-aef9-93af721e3046)

Notice we have a template which has a place for **header** and **slots** for images.

89. **Resize** and **position** the visuals as shown in the figure below:

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/e2825088-64ef-4e09-ad30-cda65c0717f4)

Now let’s add a **logo**.

90. From the ribbon, select the **Insert** tab and then choose **Image**.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/b3c6df4e-d746-4038-ba32-2ac657162e21)

91.	The **File** browser dialog opens. Browse to the **AIIE** folder then the **Data** folder (AIIE/Attendee/Data).
92.	Select the **VanArsdel_Logo.png** file.
93.	Then, select **Open**.

  ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/9c39b24c-e05b-4bd9-944a-fe3bd2b153cb)

94. **Resize** and **drag** the image to the top left corner of the report.

    ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/b0e3ed7f-aa4c-47ac-be55-c1464495139c)
    ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/cc1d9cb8-5eb9-45ca-9042-6da08a30c156)


Now let’s change the font color of the report title.

95.	Highlight **Manufacturer Analysis** within the text box.
96.	Select the drop-down arrow next to the **A** to change the font color. Select the color **white**.
97. Change the **size** of the **font** to **20**.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/a43e01a1-a39b-4fd2-8e12-a708a302d6d5)

98.	Expand the **Effects** section within the **Format** pane and set the **Transparency** to **100%**.
99.	**Resize** and **move** the visuals around if needed making sure they are still in the same locations as before.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/846e4449-fb4e-43b9-a3f4-8d95aaf27c28)

Now let’s add a **smart narrative visual** to our report.

100.	First, **resize** the **Sum of Revenue and % Growth by Year** visual to make space to the left of the visual at the bottom of the report.
101.	Add a **Smart narrative visual** to the canvas. The smart narrative visualization helps you quickly summarize visuals and reports. It provides relevant innovative insights that you can customize.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/6d9d5382-efd3-4f13-9060-bccb934840ee)

Out of the box, Power BI has a large selection of visuals. However, there may be a use-case when you need a custom visual. To meet this requirement, the visualization engine is open-sourced. The Power BI community contributes visuals in the marketplace. You can add and use these visuals in your reports.

There is also an option to create your own visual or import visuals into Power BI Desktop.

Now let’s add a **custom visual**.

102.	From the **Visualizations** pane, select the **ellipses** (**…**) in the last row of visuals.
103.	Select **Get more visuals**.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/add9da1f-807b-4529-9ff2-116e6f0391ae)

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/65dd1cb3-7db1-49d9-923b-50a9296f47db)

104.	Type **play axis** in the **search box** in the top right-hand corner of the Power BI visuals dialog box and select the **Search** icon.
105.	Select the **Play Axis (Dynamic Slicer)**.

  ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/15d2c711-2576-498a-964e-4b977116c983)
  ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/faa9c503-5631-4770-b96b-8e10172b62cf)

106.	The **AppSource** dialog box will then appear. Select the **Add** button below the **Play Axis (Dynamic Slicer)** cover image.

   ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/f80948b5-e2e8-4e0b-b90f-222edaa7939d)

107.	After a few moments you should see a notification that the visual was successfully imported. Select **OK**.
     Notice a new visual is added to the list of available visuals.
108.	Select the white space in the canvas to deselect anything that may be currently selected.
109.	From the **Visualizations** pane, select the newly imported **Play Axis** visual.
110.	From the **Data** pane, select the **checkbox** next to the **Date** field in the **Date** table.
111.	From the **Visualizations** pane, select the **Format your visual** tab (the **paint brush** icon).
112.	Expand the **Colors** section.
113.	Enable the **Show all** option.
114.	**Resize** and **position** the visual as shown in the figure below.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/89ac5760-f745-4fd6-b5a5-5da14a79a5c5)

Now that we have a report ready, let’s use **Bookmarks** to tell the story we discovered. Bookmarks capture the currently configured view of a report page, including filtering and the state of visuals which helps to make it easier to present the story.

115. From the ribbon, select the **View** tab.
116. Select the **Bookmarks** button to enable Bookmarks. The **Bookmarks** pane will open.

  ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/244a4c1d-2927-4933-ad02-802927152cf5)

 117.	Select **Add** within the **Bookmarks** pane. This will add the current state of the visual to the bookmark.
 118.	Select the **ellipses** (**…**) to the right of the newly created **Bookmark 1**.
 119.	Choose **Rename** and change the name to **Initial State**.

   ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/bb1b7d1a-27ad-4b51-80cf-a620618c6c3a)

 120.	In the **Sum of Revenue by Country** visual, select the **USA** column.
 121.	Hover over the **Sum of Revenue by Country** visual and select the **ellipses** (**…**) on the top right corner.
 122.	Select **Spotlight**.

   ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/e0e84533-8989-40c3-a6dc-690760374b41)
   
 123.	In the **Bookmarks** pane, select **Add**. This will add a new bookmark with the current state of the report.
 124.	Change the bookmark name to **USA Revenue**

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/e79a8f65-10ac-48e6-a374-efdcec7dc212)

 125.	Select the canvas to ensure that nothing is currently selected.
 126.	Select **Australia** within the **Sum of Revenue by Country** visual.
 127.	In the **Bookmarks** pane, select **Add**. This will add a new bookmark with the current state of the report.
 128.	Change the bookmark name to **Australia Revenue**.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/26fecd2c-4d05-4c5e-99cf-7bc91d8e27e3)

 129.	From the **Bookmarks** pane, select **View**. You are now in Bookmarks slide show mode. You will be in the first bookmark, which 
 we called **Initial State**. Notice on the bottom of the report pane there is an option to navigate between bookmarks.
 130.	You can use the arrows to navigate between bookmarks and tell your story.

 ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/69f5f67d-7a49-4f30-8835-10c7a36d03a9)


 131. From the **Bookmarks** pane, select **Exit** to exit the Bookmarks slide show mode.

If time permits, feel free to explore other options available with Bookmarks, such as **Selected Visuals**, as you continue to build your story.
  132.	From the ribbon, select the **View** tab.
  133.	Unselect the **Bookmarks Pane** button.
  134.	Collapse the **Visualizations** and **Filters** panes by selecting the arrows to the top left corner of each pane.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/2aa97313-31df-4c16-88ff-003e54d3e15a)

Now let’s add bookmark navigator buttons to the canvas

  135.	From the ribbon, select the **Insert** ribbon. 
  136.	Select **Buttons** and choose **Navigator** > **Bookmark navigator**.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/af3b9aa8-2260-4a5a-b013-ef498a8d6423)

  137. Arrange the Bookmark navigator to fit on the page as shown below in the figure:

  ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/2677103e-e71d-4f96-8e88-fd35feab11eb)

  138.	With the buttons visual still selected, navigate to the **Format** pane, expand the **Style** section, then expand the **Fill** 
  section. Change the **Fill color** to a **light blue** and set the **Transparency** to **40%**.
 
 ![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/e55649db-4e41-4437-b190-6e6df0204b16)

   139.	While still in the Format pane, expand the **Shape** section. From the **Shape** drop-down menu, select **Rounded Rectangle**.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/e59da280-95c4-4597-b12c-3c1ae01329f8)

Feel free to test out the new functionality.

Using the Ctrl key on your keyboard, select the Australia Revenue bookmark from the visual. Notice how the data changes within the visuals in the report.


**Note**: *To utilize the new buttons you must use CTRL + Select while inside the Power BI Desktop. After publishing the report your end users will simply select the buttons without needing to hold CTRL*.

Your report should look like the figure shown below. Now let’s finish up by saving the file.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/c986ffff-022e-475d-9b12-2b7a7b543b50)
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/4cd38b34-6d36-4cac-a2bf-df21d40f2e55)


  140. From the ribbon, select the **File** tab. From the menu to the left, select **Save**.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/96244548/06220ec0-1c83-4d5d-8982-d4788c818524)

You have built your first report!

You have successfully completed the hands-on lab by creating a report to share to your team. The next lab covers creating a dashboard from this report to share with your team. You have seen an overview of the functionality in Power BI Desktop. There are many more features for you to explore with your data!


