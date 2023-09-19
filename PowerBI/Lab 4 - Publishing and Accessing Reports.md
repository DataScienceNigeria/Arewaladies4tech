# Contents
Introduction ................................................................................................................................. 3

Power BI Desktop – Creating a mobile view .................................................................................................... 4

    Power BI Service ......................................................................................................................... 9
    Power BI Service – Publishing Report...................................................................................................... 9
    
Power BI – Building a Dashboard ............................................................................................................. 16

# Introduction
This document is lab four out of five total labs.
Please start this lab with the provided **AIIE Final Report.pbix** file located in the **Reports** folder.
The flow of this document includes screenshots to provide a visual aid for you and text descriptions of the 
steps you need to follow. In the screenshots, sections are highlighted with red or orange boxes to indicate 
the action or area on which you need to focus


# Power BI Desktop – Creating a mobile view

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/f5d89ac6-ecd9-42cb-8679-d65a532c6c29)

1. Navigate to the AIIE folder and then to the Reports folder (AIIE/Attendee/Reports) folder.
2. Open the AIIE Final Report.pbix file.

This file uses the same dataset that you used for the lab. We have added more visuals and performed 
additional formatting in the report. Feel free to explore the report.

3. Highlight the Market Analysis title and change the text color to black.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/af20bd5b-07e4-460e-b65b-554350dfe209)

4. Select the View tab from the ribbon and then select Mobile layout.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/00b2e7ec-d51a-4b9f-8e64-bf8cea8d8e40)

_Note: A small pop-up window may open introducing you to the mobile-only formatting. Select Got it to continue and close out the pop-up window_

5. From the Page visuals pane, drag the Market Analysis title to the top of the phone layout. Resize and 
move the title to look similar to the one in the figure below. If there are any other visuals on the mobile 
layout remove them.`

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/07aa9583-7880-4c23-a87b-e97ff7b6bc9b)

6. Select the View tab, then uncheck the checkboxes next to Gridlines and Snap to Grid to turn them off. 
Also, ensure that the Selection pane is turned off

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/e45a8180-68d1-4a8c-9c8e-46b0e98472d6)

7. Drag the VanArsdel Market Share card from the Page visuals pane to below the Market Analysis title 
on the mobile layout. Then, resize the Market Share card to look similar to the one shown in the figure 
below.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/7e9c9774-586e-4fdf-8621-86d42bf091c5)

8. Drag the % Growth by Manufacturer column chart from the Page visuals pane to be placed below the 
VanArsdel Market Share card on the mobile layout. Resize the chart to look similar to the one shown in 
the figure below

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/f2794484-9d1d-482a-92d7-a8b37a090466)

9. Drag the Revenue by Year and Manufacturer line chart from the Page visuals pane to below the % 
Growth by Manufacturer column chart on the mobile layout. Resize the Revenue by Year and 
Manufacturer line chart to stretch across the phone layout to look similar to the one shown in the figure 
below

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/2f8f23ea-ccad-4bd2-9f43-63bfa6d61aa5)

10. Drag the Revenue by Country map from the Page visuals pane to below the Revenue by Year and 
Manufacturer line chart on the mobile layout. Resize the Revenue by Country map to look similar to the 
one shown in the figure below.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/38b0d6e7-06c3-4459-8283-1d31cbf01df9)

11. Select the File tab from the ribbon. From the menu of options, select Save so that you workbook 
saves.
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/a95e935b-9609-42f4-a536-8492b0abd0ee)

# Power BI Service
You will now leverage a report authored using Power BI Desktop to create a dashboard for the VanArsdel 
data analysis team and CMO. A Power BI Desktop file with additional reports and visuals is provided.
Please use this file for the next section of the lab.

## Power BI Service – Publishing Report

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/62591685-607c-487b-9171-d0bc7be8137b)

12. If you have not signed up for a Power BI account, go to http://aka.ms/pbiAIIEtraining and sign up for 
Power BI with a business email address.

13. If you have not already opened the app.powerbi.com page, please open a browser and navigate to 
[PowerBI](http://app.powerbi.com)

14. Sign-in to Power BI using your user account. Once logged in, you will be taken to the Home screen.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/3f1c297a-f58a-42b0-9252-e7de11ac95f3)

_Note: If you have previously signed into Power BI, then your Home screen will list your Favorites, as well 
as recent reports and dashboards_

15. Notice the navigation pane on the left. Let’s review the items here:

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/9c8b0c9e-dbb5-412c-84eb-c42b6a0d2b98)

The following options are listed in the navigation pane:
• Home: This is a one-stop-shop for all your content. It lists your favorite and recent content such as reports, dashboards, and apps. It also shows the most recent content that was shared with you.
• Create: Allows you to add data manually or use an already existing dataset.
• Browse: Allows you to browse all of your recently viewed Power BI collateral.
• Data hub: Allows you to easily navigate to all dataset that you have either created or that have been shared with you.
• Metrics: Allows you to curate metrics and track them against key business objectives, in a single pane.
• Apps: Lists all the Power BI apps you have installed.
• Learn: Allows the user to have access to started content, samples, and links to videos.
• Workspaces: Lists all the workspaces you are assigned. By default, you are assigned to My Workspace.
• My workspace: Your personal repository for Power BI collateral that can only be viewed by you.

Select My Workspace. Notice the workspace is waiting for you to add content like Dashboards, Reports, Workbooks, and Datasets sections. Let’s import a Power BI Desktop file and create dashboards.

My Workspace is your personal workspace. We need to create a workspace where we can collaborate with team members and distribute content to end-users. To do this we’ll create a new workspace.

16. In the pane to the left, select Workspaces and then choose + New workspace. The Create a
workspace dialog box opens.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/7bf4411e-7b22-4afa-b170-b51ca9643c9a)

_Note: Creating a workspace is a Pro feature. If you do not have a Pro license, please choose the trial option._

17. In the Create a workspace dialog box, select Upload to upload a Workspace image.
18. A file browser dialog box opens. Browse to the AIIE folder and then the Data folder (AIIE/Data). Select the VanArsdel_Logo.png file and then select Open.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/82ac7f9b-e8fe-42ee-8a86-990ca8ef6de7)

19. In the Name your workspace text box, type AIIE_<youremailaddress>.
20. In the Description text box, type This is AIIE workspace.
21. Select Save to create the workspace.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/a58753ca-c192-43ba-91ec-589e8110bfcf)

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/a6aff163-d6ba-4d46-b5c0-8457dde9c637)

Notice that you have navigated from My Workspace to the workspace just created. You are in the Welcome screen with options to discover or create content.

Add content has options to connect to Files, Databases, and Dataflows.

There are two options to publish the Power BI Desktop report we created:
• Upload option within the Workspace.
• Publish from Power BI Desktop.

We are going to use the Publish from Power BI Desktop option.

Let’s publish the report to Power BI Service and then we will come back to the browser.

22. Navigate back to the AIIE Final Report in the Power BI Desktop that you saved earlier.
23. Ensure Mobile View is off.
24. From the Home tab, select Publish.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/8bc8dc47-f556-4a22-a3ff-727eb1827412)

25. If you have not already logged into Power BI, a Sign in dialog box opens. Please sign in.
26. Once you are signed in, the Publish to Power BI dialog box opens. Select AIIE_<youremailaddress> in the dialog box.
27. Choose the Select button in the bottom right corner.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/cc51132e-64cd-419b-867c-cf7892f4722a)
The Publishing to Power BI dialog box opens. Once the process is complete, a success message displays.

28. Select Got it to close the dialog box.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/e8257260-da9d-4bf8-9ab2-56473c1ea2c1)

Now that we have published the report to the Power BI service, let’s navigate back to the browser and start exploring.

29. Once you are in the browser, navigate to the AIIE_<youremailaddress> workspace, notice that the
AIIE Final Report dataset and report appear.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/c641f2de-af5d-49f1-b0e3-af9d07c336be)

# Power BI – Building a Dashboard
In this section, we will create a dashboard that combines data from the Market Share report.

By the end of this section, we will have created a dashboard that looks like the figure below.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/f28e9bcd-9e76-43a5-8e94-808c29cb6b59)

30. From the newly created workspace select the report called AIIE Final Report. You will then be taken to the Market Share page of the AIIE Final Report.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/4e286202-daf8-4c0d-87cf-edbecace475e)

31. Within the map visual, enable drill-down by hovering over the visual and selecting the down-arrow(s) from the visual header.
32. Once you have selected the arrows, choose Australia to drill-down to the State level.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/d930f48f-304e-4244-af9a-2333025a526c)

Now let’s pin visuals to the dashboard.

33. Hover over the VanArsdel Market Share card visual.
34. Select the pin icon within the header of the visual. The Pin to dashboard dialog box opens.
35. We do not have a dashboard yet. Let’s create one. With New dashboard selected, enter VanArsdel in the Dashboard name text box.
36. Then, select Pin.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/c54cceb3-930a-4890-b935-0367d80f315a)

Notice that alert messages are displayed stating the dashboard is ready to view.

37. Navigate back to your workspace and select the VanArsdel Dashboard.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/e2a94010-d9db-4c77-a62f-1385b05ce0b1)

Notice the VanArsdel Market Share tile is pinned to the dashboard.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/e1e8de84-8bf5-4dfa-8fb9-b4af2272dca7)

38. Select the VanArsdel Market Share tile. Notice that you are navigated to the AIIE Final Report.

_Note: Dashboard Tiles are not interactive like report visuals we’ve learned about so far. You also cannot pin things like Slicers to a dashboard since the main purpose of the Slicer is to be interactive._

39. Within the navigation pane to the left of the screen, select the AIIE Final Report again to find more items to pin to your dashboard.
40. Hover over the % Growth by Manufacturer column chart visual.
41. Select the pin icon within the header of the visual. The Pin to dashboard dialog box opens.
42. Make sure that Existing dashboard and VanArsdel are selected.
43. Select Pin.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/d832492d-ff6c-4ed9-9d36-8a8664d0d732)

44. Close out the alert notification boxes in the top right corner of the screen.
45. Hover over the Revenue by Year and Manufacturer visual.
46. Select the pin icon from the header of the visual. The Pin to dashboard dialog box opens.
47. Ensure that Existing dashboard and VanArsdel are selected.
48. Select Pin.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/0507e814-eb7e-4099-8ac8-981db16dd3c4)

49. Close out the alert notification boxes in the top right corner of the screen.
50. Navigate to the By Manufacturer page using the Pages menu/pane to the left of the screen.
51. Using the same steps as we have previously, pin the Revenue and PY Sales gauge visual to the VanArsdel dashboard.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/a8faacc1-967c-44f9-b510-b2d50489dab1)

52. Pin the Revenue by Country bar chart visual to the VanArsdel dashboard.
53. Close out the alert notification boxes in the top right.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/eda6096f-42dc-4a8d-acd6-21729bbe96d4)

54. Navigate back to the workspace entitled AIIE_<youremailaddress>, and then choose VanArsdel
Dashboard again. Notice that all the visuals are pinned as tiles to the dashboard.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/3bb73af3-cf76-4515-80ce-996dafb276a8)

You will see the visuals on the dashboard like in the figure above. Each visual on the dashboard is called a tile. The tiles represent the data chosen and are kept up to date as the data in the data model updates. Tiles are not interactive.

Let’s organize the dashboard.

55. Resize and move the gauge tile as shown in the figure below. To resize the visual, select the bottom
right-hand corner and drag to the desired size.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/30d7400f-eb46-4b3d-b9e3-3b66e47f0bab)

Tiles can be of various sizes (1x1 to 5x5).. As you are dragging, note the gray shadow which indicates the size of the tile when you stop dragging.

56. Select the Edit dropdown from the ribbon at the top of the screen and choose Add tile. The Add tile dialog box opens.
57. Select Image as the source.
58. Choose Next.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/bb49b173-cad6-4898-a34d-1ff981eff597)

59. In the URL text box of the Add image tile dialog, type the following URL: https://raw.githubusercontent.com/CharlesSterling/AIIEManu/master/Vanarsdel.png

_Note: The URL is case sensitive._

60. Then, select Apply at the bottom of the dialog.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/9158cafa-1d13-452e-a431-7e4c1c183af6)

Notice that a new tile with the VanArsdel logo is added to the dashboard.

61. Resize and rearrange the tiles as shown in the figure below.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/220fb13c-6572-4f28-a1d3-a0ee836ff1b1)

The Revenue by Country tile shows data for Revenue by Country for VanArsdel. Let’s rename it.

62. Hover over the Revenue by Country tile.
63. Select the ellipse in the top right corner of the tile.
64. Select Edit Details. The Tile Details dialog box opens.
65. Change the Title to VanArsdel Revenue.
66. Select Apply

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/abbc7b06-f4d7-4fb6-bedf-47908d8e662a)

Now let’s create a visual that represents Market Share by country.

Notice on the top of the visual, there is an option to Ask a question about your data. This is like Ask a
question in the desktop.

67. Select the Ask a question about your data text box at the top of the page. You will then be taken to a Q&A page; start typing VanArsdel market share in the text box at the top of the page. Notice that a card visual is created.
68. Continue typing VanArsdel market share by country. Notice that a bar chart is created.
69. Continue typing VanArsdel market share by country as treemap. Notice that a treemap visual is created.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/9ca670ac-3977-461f-bbc7-afb01491d8f3)

_Note: Remember that we renamed our tables. One of the reasons we did this was to make them user friendly for Q&A._

70. In the top right corner of the screen, select Pin Visual.
71. The Pin to dashboard dialog box opens. Ensure that Existing dashboard is selected, then select Pin to pin the visual to the VanArsdel dashboard.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/71477375-f7b6-4575-acd3-b8c1a7b7826c)

72. Close the alert dialog boxes.
73. Select Exit Q&A in the top left corner of the page to navigate back to the dashboard.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/fe805ff7-2902-4335-9680-6b32c72cc0c1)

Notice that the treemap visual is added as tile to the dashboard. Selecting the treemap visual will navigate you back to the Q&A section.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/a7e7891e-a57e-4706-9e90-f0325ff502fa)

Power BI quickly searches different subsets of your dataset while applying a set of sophisticated algorithms to discover potentially interesting insights. You can run insights against a dataset or a dashboard tile.

Let’s generate insights on a dashboard tile. When we run insights on a dashboard tile, instead of searching for insights against an entire dataset, the search is narrowed to the data used to create a single dashboard tile. This is often referred to as scoped insights.

74. Hover over the Revenue by Manufacturer line chart on the dashboard.
75. Select the ellipse on the top right corner of the line chart.

76. Choose View Insights.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/08bc481f-76ff-4256-a412-3c3bc3cfe807)

You will be navigated to Focus mode for the line chart.

77. Scroll on the Insights pane to the right of the screen to review the various insights Power BI can generate. Notice that there is an option to pin insight visuals to the dashboard.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/0b0f5fe7-24a8-4a42-8435-4dd45416044a)

78. Select Exit Focus mode in the top left corner of the page to navigate back to the dashboard.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/2271e46b-4d0e-4b7e-8d20-e9078c94159d)

We want to be notified when VanArsdel’s Market Share goes above or below a threshold. We can set up alerts to achieve this.

79. Hover over the VanArsdel Market Share card tile.
80. Select on the ellipse in the top right corner of the tile.
81. Choose Manage alerts. The Manage alerts dialog box opens.
82. Select Add alert rule.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/40a3a2d1-fcb1-4a5f-bb67-44fa047c79da)

Notice that you can add Above or Below threshold. You can also set the notification frequency. This is just an introduction to managing alerts. Complete functionality is not covered in this lab.

83. Select Cancel to close the dialog box.
84. From the Unsaved changes alert dialog box, select Don’t Save.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/45ccde0f-ee1a-4c88-b9fe-b5e8eb43b191)

85. Select the VanArsdel Market Share card visual tile to navigate to the report.
86. Within the Revenue by Country and State map visual, ensure it is at the Country level (you may need to drill up from the State level to the Country level). Right-click on the Australia bubble within the map, then choose Drill through, and then select By Manufacturer.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/3c60d21e-7cc6-4b1c-bf71-6a31b449f160)

You will then navigate to the By Manufacturer page of the report with the Australia filter applied to the report page.
87. Hover over the matrix visual.
88. Select the focus mode icon on the top right corner of the visual.
89. Select the double-down arrow to drill down.
90. Then, select the Back to report button in the top left hand corner of the page.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/b89e89a6-ad08-4d8c-b9aa-eb4d8ed897a6)

91. From the menu in the top right corner of the screen, select Bookmarks and then choose Show more
bookmarks. The Bookmark pane opens on the right. There are two options: Personal bookmarks and
Report bookmarks.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/34d57973-39e9-4fa7-b2e2-b0bbb3067a4f)

• Personal bookmarks on the report are ones which the consumer can create on their own.
• Report bookmarks are the bookmarks the report author created (we did this in Power BI Desktop).

92. Select View under the Report bookmarks section of the bookmarks pane.
Notice that you can view and navigate through the bookmarks using the arrow at the bottom of the
screen. This behavior is like in Power BI Desktop.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/2e4be1cd-5b87-43ad-80a9-ea13f6367b4b)

93. Select Exit under the Report bookmarks section of the pane to close it.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/08472de3-6fc4-4070-ba36-4d9644928947)

Power BI provides an option to get quick insights into the complete dataset.

94. Navigate back to the Workspace you created earlier in the lab using the menu to the left of the screen.
95. Once in the workspace find the Dataset called AIIE Final Report and select the ellipse.
96. From the menu, select Get quick Insights.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/1def7177-ca30-45b2-b5fc-bd34fd172cb6)

It might take a few minutes for the insights to be created. Once insights are ready, a message appears in the top right corner.
97. From the Insights are ready alert dialog box, select View insights.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/9fcf0d9f-685a-4430-9e3e-e8e4365ae29d)

A quick insights report is displayed based on the dataset. This provides insights into data you may have missed and helps to get a quick start on creating dashboards. Hovering over each report provides an option to Pin it to a dashboard.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/1bde23d1-f051-49b0-8afb-85a15d5ab43e)


You’ve now completed Lab four!

Throughout this lab, you have learned how to apply conditional formatting, add a logo to the
manufacturer filter, import a custom visual, and apply a custom theme to the report. You also learned
how to add bookmarks to tell a story about the report.

# References
AI in Every City introduces you to some of the key functions available in Power BI. In the ribbon of the
Power BI Desktop, the Help section has links to some great resources.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/97315843/4fcd6a90-04f7-4fe9-b9d0-cd6b63541384)

• DSN Telegram group: https://t.me/+YvF8TQvmYmRhNjdk
• Become a DSN Member: https://www.datasciencenigeria.org/aimembership/
• Website: www.datasciencenigeria.org
• Twitter: dsn_ai_network
• Instagram: dsn_ai_network
• Facebook: DSN- Data Scientists Network/Data Science Nigeria
• YouTube: @dsnai
• Annual Report: https://bit.ly/dsn_2021annualreport
• DSN Tik Tok - https://www.tiktok.com/@dsn_ai_network
• LinkedIn Page: https://www.linkedin.com/company/18638027/
• Mastodon - https://techhub.social/@dsnai

Here are a few more resources that will help you with your next steps with Power BI.
• Getting started: http://powerbi.com
• Power BI Desktop: https://powerbi.microsoft.com/desktop
• Power BI Mobile: https://powerbi.microsoft.com/mobile
• Community site https://community.powerbi.com/
• Power BI Getting started support page: https://support.powerbi.com/knowledgebase/articles/430814-get-started-with-power-bi
• Support site https://support.powerbi.com/
• Feature requests https://ideas.powerbi.com/forums/265200-power-bi-ideas
• New ideas for using Power BI https://aka.ms/PBI_Comm_Ideas
• Power BI Courses http://aka.ms/pbi-create-reports
• Power Platform https://powerplatform.microsoft.com/en-us/instructor-led-training/
• Power Apps Business Apps | Microsoft Power Apps
• Power Automate Power Automate | Microsoft Power Platform
• Dataverse What is Microsoft Dataverse? - Power Apps | Microsoft Docs








































