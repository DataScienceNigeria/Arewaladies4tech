![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/00723503-5d6d-4070-a4c7-8bee07af52e8)
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/bb5696c5-3eda-4bb2-8433-8a0e3ea743ae)
## Introduction

Today you will learn about various key features of the Power BI service. This is an introductory course intended to teach you how the author builds reports using the Power BI Desktop, create operational dashboards, and share content via the Power BI Service.

By the end of this lab, you will have learned:

•	How to load data from Microsoft Excel and Comma-Separated Values (CSV) sources

•	How to manipulate the data to prepare it for reporting

•	How to prepare the tables in Power Query and load them into the model


Learning these steps will prepare you for the modeling exercises in Lab 2. Additionally, the results of this lab will be the starting point for Lab 2.

# **Power BI Desktop**

**Power BI Desktop – Accessing Data**

In this section, you will import VanArsdel’s and its competitors’ USA sales data. You will then import and merge sales data from other countries.

**Power BI Desktop – Get Data**

Let’s start by looking at the data files. The dataset contains sales data of VanArsdel and other competitors. We have seven years of transaction data by day, product, and zip code for each manufacturer. We are going to analyze data from seven countries.

USA sales data is in a CSV file located in the Usages subfolder within the Data folder (/Data/USSales).

Sales of all other countries is in the InternationalSales subfolder within the Data folder (/Data/InternationalSales). Each country’s sales data is in a CSV file in this folder.

1.	Open the bi_dimensions.xlsx file. Notice that the first sheet has Product information. Within this sheet there is a header, and product data is in a named table. Also notice that the Category column has numerous empty cells.

The Manufacturer sheet has data laid out across the sheet, no column headers, several blank rows, and a note in row seven.

The Geo sheet has the geography information. The first few rows have data details. The actual data starts within row four.
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/62f73f5e-c9ab-4966-b25b-b0f936d8669f)

After reviewing the bi_dimensions.xlsx file, close Microsoft Excel. We will start by connecting data from these different sheets, and then perform data cleaning and transformation operations.

2.	If you don’t already have the Power BI Desktop open, launch it now.

3.	If you have not signed into the Power BI Desktop, select the Get started option.

4.	Sign in using your Power BI credentials.

5.	You will see the startup screen open. Select the X in the top right corner of the dialog box to close it.
   
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/d3ba6629-72a8-4a24-bf48-12ec7873165c)

Next, let’s set the Locale to US English to make it convenient in the rest of this lab.

6. From the ribbon, select File, then choose Options and settings. Then, select Options.
 
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/82265aef-cdd9-4717-b9d1-70c9cd1ccc14)
7.	Within the pane to the left of the Options dialog box, select Regional Settings under Current File.

8.	From the Locale drop-down, select English (United States).

9.	Then, select OK to close the dialog box.
    
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/fdb3c06e-e467-4e6c-b740-0018b0624a86)

The next step is to load data into the **Power BI Desktop**.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/88c2dfbf-5683-4d6c-9106-81e8129b4c0f)

We are using CSV and Excel data files in this lab for simplicity. If you would like a full list of data sources, please visit this link: <https://docs.microsoft.com/en-us/power-bi/connect-data/desktop-data-sources>

Start by loading USA Sales data which is in a CSV file.

10.	From the ribbon at the top of the screen, select the Home tab. Then, choose the Get Data drop-down.

11.	Select Text/CSV from the options list.
    
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/d9802d28-8c2e-48bc-a11e-19bf2b28426f)

12.	Browse to the AIIE folder (this folder may be called Attendee if you did not rename it in Lab 0), double-click Data, double-click the USSales folder, and then select the Sales.csv file.

13.	Then, select the Open button.
    
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/376f15b8-a201-432f-9e27-a4ca9373dd80)

Power BI detects the data type within each column. There are options to detect the data type based on the first 200 rows, based on the entire dataset or to not detect the data. Since our dataset is large and it will take time and resources to scan the complete dataset, we will leave the default option of selecting the dataset based on the first 200 rows.

After completing your selection, you have three options – Load, Transform Data or Cancel.

•	Load adds the data from the source into Power BI Desktop for you to start creating reports.

•	Transform Data allows you to perform data shaping operations such as merging columns, adding additional columns, changing data types of columns as well as bringing in additional data.

•	Cancel returns you back to the main canvas.
14.	Within the Sales.csv dialog window, select the Transform Data button.
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/827cd78a-470f-478e-8611-13a1cd2c2904)

You should be in the Query Editor window as shown in the screenshot below. The Query Editor is used to perform data shaping operations. Notice that the sales file you connected shows as a query in the pane to the left of the screen. You can see a preview of the data in the center pane. Power BI predicts the data type of each field (based on the first 200 rows) as indicated by the icons to the right of each column header. Within the pane to the right of the screen, steps that the Query Editor performs are recorded within the APPLIED STEPS section.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/a218d086-44fd-4f87-b0dc-b97e3bc3444b)

15.	Notice that Power BI has set the Zip field to the data type Whole Number. To ensure that the leading zero is not dropped from Zip codes that start with zero, we will format them as Text. To do this, select the Zip column. Then, from the ribbon, select the Home tab. From the menu at the top of the screen, within the Transform group, select the Data Type drop-down and choose the Text option.
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/52b60a36-3e2a-4e25-9822-dde64f74db7b)

16.	The Change Column Type notification box opens. Select the Replace current button which overwrites Power BI’s predicted data type.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/8cccc147-b5f2-4a6b-94ac-2f2ad05d9384)

Now, let’s get the data that is in the Excel source file called bi_dimensions.xlsx.

17.	From the ribbon at the top of the screen, select the Home tab, choose the New Source drop-down, and then select Excel Workbook.
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/72f352f9-b034-46c7-81e4-27ef8c4f81d0)

18.	Browse to the AIIE folder, double-click Data, double-click the USSales folder, and then select bi_dimensions.xlsx.
19. Then, select the Open button. The Navigator dialog box will appear.
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/b83748a1-60b8-4ee0-81cd-8f0b053e2682)

20.	The Navigator dialog box lists three sheets that are within the Excel workbook. It also lists the Product_Table which is a pre-defined Excel table.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/b176e2ef-dc15-471c-8da6-15bf768d4873)

21.	From the pane to the left, select the box to the left of geo. In the preview pane, notice that the first few rows are headers and are not part of the data. We will remove them shortly.
22.	From the left pane, select the box to the left of manufacturer. In the preview pane, notice that the last couple of rows are footers and are not part of the data. We will remove them shortly.
23.	From the left pane, select the box to the left of Product_Table. Notice the different icon indicates that this data is stored in an Excel table.
24.	Make sure that Product_Table, geo and manufacturer are selected within the pane to the left, and then select OK. Notice that three sheets are added as queries in the Query Editor

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/a2a3549a-ace2-49f8-99cf-91a70824d56f)

**Power BI Desktop – Adding additional data**

In this scenario, the international subsidiaries have agreed to provide their sales data so that the company’s sales can be analyzed together. You’ve created a folder where they each put their data.

To analyze all the data together, you need to import the new data from each of the subsidiaries and combine it with the US Sales you loaded earlier.

You can load the files one at a time, like you loaded the US Sales data, but Power BI provides an easier way to load all the files in a folder together at once.

25.	From the Home tab of the Query Editor, select the New Source drop-down menu.
26.	Select More… from the options list. The Get Data dialog box will appear.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/2b1d2e52-f86a-4cf9-a081-de38f490c47c)

27.	Within the Get Data dialog box, select Folder from the All list.
28.	Then, select the Connect button and the Folder dialog box will open.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/4978f3c5-50f6-47f9-9535-a3f2e0dbb05e)

29.	Within the Folder dialog box, select the Browse… button.
30.	In the Browse For Folder dialog box, navigate to the location where you unzipped the class files.
31.	Open the AIIE folder.
32.	Open the Data folder.
33.	Select the InternationalSales folder.
34.	Select OK to close the Browse for Folder dialog box.
35.	Select OK to close the Folder dialog box.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/9869236e-e065-465c-8729-c280fafc46b4)

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/2ef2aaa9-b950-4c5d-a9f7-ffc978acc993)

The selected folder dialog box will display the list of files within the folder.

36. Select the Combine & Transform Data button at the bottom of the dialog box.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/90f769f0-c2fe-41f2-bb22-c5f34f01e234)

The Combine Files dialog box will open. By default, Power BI will again detect the data type based on the first 200 rows. Notice there is an option to select various file Delimiters. The file we are working with is Comma delimited, so let’s leave the default Delimiter option as Comma.

There is also an option to select each individual file in the folder (using Example File drop-down) to validate the format of the files.

37. Select the OK button located at the bottom of the dialog window.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/02859809-0c8b-4d06-8113-c6252159491a)

You will now be in the Power Query Editor window with a new query named InternationalSales.

38.	If you do not see the Queries pane to the left of the screen, select the > (greater than) icon to expand and now view the Queries pane.
39.	If you do not see the Query Settings pane on the right of the screen, select the View tab in the ribbon and choose Query Settings to view the pane.
40.	Select the InternationalSales from the query pane on the left.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/19c7f04c-4d40-4130-8157-d91c803bfb7c)

Notice that the Zip column is of the Whole Number type. Based on the first 200 rows, Power BI thinks the Zip column consists of whole numbers. But zip code could be alpha numeric in some countries or regions or contain leading zeros. If we do not change the data type, we will receive an error when we load the data shortly. So, let’s change the Zip column to data type Text.

41.	Select the Zip column within the InternationalSales query, and then change the Data Type to Text using the drop-down under the Home tab.
42.	The Change Column Type dialog box will open. Select the Replace Current button when prompted.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/82bdd21c-e2d0-4b6b-bb1d-34b8c63a7ded)

Within the Queries pane, notice that a Transform File from the InternationalSales folder is created. This contains the function used to load each of the files from the folder.

If you compare the InternationalSales and the Sales table, you will see the InternationalSales table contains two new columns: Source.Name and Country.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/3abbd049-0e6d-4829-9bc6-66362241487a)

43.	We do not need the Source.Name column within the InternationalSales query. Select the Source.Name column and from the ribbon, select the Home tab. Choose the Remove Columns drop-down, and then select Remove Columns again.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/9cd64286-43bc-4ff3-9e5c-428876070cdd)

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/1da8f591-23b2-4bca-9e63-3c459facac46)

## Power BI Desktop – Data Preparation

In this section, we will explore methods to transform data. Transforming the data by renaming tables, updating data types, and appending tables together ensures that the data is ready to be used for reporting. In some instances, this means cleaning the data up so that similar sets of data can be combined. In other instances, groups of data are renamed so that they are more easily recognized by end users and report writing is simplified.

**Power BI Desktop – Renaming tables**

The Query Editor window should appear as shown below.

•	If formula bar is disabled, you can turn on the formula bar from the View ribbon. This enables you to see the “M” code generated by each click within the ribbons.
•	Select the options available within the ribbon - Home, Transform, Add Column, and View - to review the various features available.

44.	Within the Queries pane, minimize the folder called Transform Files from InternationalSales.
45.	Select each query name in the Other Queries section as you rename them in the next step.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/0f13ef0c-cf99-474b-8548-8b8bc8561a89)

46.	Navigate to Query Settings pane to the right of the screen, and then the Properties section to rename the queries. Rename each query listed within the Queries pane to the left of the screen using the new names listed below. You will type the new name within the Name property of the Query Settings pane and then hit Enter on your keyboard. Notice that once the query has been named, it will also change within the Queries pane to the left of the screen.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/860f8d49-1bbb-47c2-bbef-37524b39ab62)

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/93c59c46-1b42-4621-983b-97e1352f5a70)

**Power BI Desktop – Filling empty values**

In our scenario, some of the data is not in the right format. Power BI provides extensive transformation capabilities to clean and prepare data to meet your needs. Let’s start by selecting the Product query from the Queries pane.

Notice that the Category column has a lot of null values. Hover over the green/gray bar (known as the quality bar) below the column header. This allows you to easily identify errors and empty values in your data previews. It looks like there are values in the Category column only when the value changes. We need to provide data in this column so there are values in each row.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/1aef8a2f-ed00-4442-90d4-69c81435ae43)

47. With the Product query selected from the Queries pane, select the Category column.
48.	From the ribbon, select the Transform tab, choose the Fill drop-down, and then select the Down option.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/d2c0cf67-fd5e-49cc-9dd5-970910ba8bd7)

Power BI Desktop – Splitting columns

In the Product query, notice the Product column. It looks like the product name and product segment are concatenated into one field with a pipe (|) separator. Let’s split them into two columns. This will be useful when we build visuals so we can analyze based on both fields.

49.	From the Queries pane to the left, ensure that the Product query is selected.

50.	Select the Product column.

51.	From the ribbon, select the Transform tab, choose Split Column, and then select By Delimiter. The Split Column by Delimiter dialog box opens.
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/717503c1-072e-4096-9e89-ebd66a10f8ba)

52.	Within the dialog box, ensure that Custom is selected in the Select or enter delimiter drop-down menu.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/46cf7ab9-035a-487e-81b8-8e842bf60d47)

53.	Notice that within the text box, there is a hyphen (-). Power BI assumes we want to split by hyphen. Remove the hyphen symbol and enter the pipe symbol (|).

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/541ccc95-2732-4057-8b9b-331fefbfed2b)

54. Then, select OK.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/d407fc57-8a85-48a7-9404-bdd447a26c2f)

**Power BI Desktop – Renaming columns**

Let’s rename the columns now to something more user friendly.

55.	Select the Product.1 column, and then right-click next to the column name.
56.	Choose Rename… from the options menu.
57.	Rename the field to Product.
58. Using the same process as in steps 55-56, also rename Product.2 to Segment.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/e22cc25d-29e2-471a-a32b-5426a1607c43)

**Power BI Desktop – Using Column From Examples to split columns**

In the Product query, notice that the Price column has price and currency concatenated into one field. To do any calculations we only need the numeric value. Therefore, we need to split this field into two columns. We can use the split feature like earlier or we can use Column From Examples. Column From Examples is handy in scenarios where the pattern is more complex than simply a delimiter.

59.	From the Queries pane to the left of the screen, ensure that the Product query is selected.
60.	From the ribbon at the top of the screen, select the Add Column tab, choose the Column From Examples drop-down, and then select From All Columns.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/6fd665ca-0b80-4783-9d3f-c05b1a2f16b3)

61.	Within the first row of the newly added Column1, enter the first Price value, 412.13, and hit Enter on your keyboard.

Notice after you hit Enter, Power BI knows that you want to split the Price column. The formula Power BI uses is displayed as well.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/6b2d5937-2939-4bc4-b88e-d7f953371ca6)

62.	Double-click the column header Text After Delimiter to rename it.
63.	Rename the column to MSRP and select OK to apply the changes.

![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/63a799ff-70d8-45d2-8340-fe4f6db82751)

Notice that the MSRP field has a Data Type of Text. The Data Type that it needs to be is Decimal. Let’s change it.

64.	Select the ABC icon to the left of the MSRP column header.
65.	From the menu, select Fixed Decimal Number. Notice that all the steps we performed on the Product query are being recorded under APPLIED STEPS in the right panel.
![image](https://github.com/DataScienceNigeria/Arewaladies4tech/assets/69847840/1852fe97-55cf-4cf7-b5c3-418bbb50d3c1)










