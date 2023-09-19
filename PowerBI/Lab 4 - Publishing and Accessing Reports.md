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

_Note: Dashboard Tiles are not interactive like report visuals we’ve learned about so far. You also cannot pin things like Slicers to a dashboard since the main purpose of the Slicer is to be interactive_





























