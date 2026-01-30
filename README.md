## Project Title

EV Charging Infrastructure Analysis – Delaware Rebate Program

## Aim of the Project

To analyze the growth, distribution, and efficiency of electric vehicle (EV) charging infrastructure in Delaware using rebate program data, and to derive data-driven insights that support infrastructure planning, policy decisions, and future expansion strategies.

## Objectives

1. Analyze year-wise growth of EV charging stations
2. Identify urban vs rural distribution of charging infrastructure
3. Detect region-wise gaps and inefficiencies
4. Evaluate rebate utilization and cost effectiveness
5. Build interactive dashboards for decision-making
6. Present insights using Python, SQL, and Power BI

## Dataset Description

- Source: Kaggle – Delaware Electric Vehicle Charging Station Rebate Dataset
- Description: Contains records of EV charging stations installed under Delaware’s rebate program, including location, installation cost, rebate amount, and time period.
- Columns:Award Number, Month, Year, City, Zip, Charging Station Brand, County, Cost of Charging Station, Rebate Amount

## Tools and Technologies Used

- Python (Pandas, NumPy, Matplotlib, Seaborn) – Data cleaning & EDA
- PostgreSQL – SQL-based business analysis
- pgAdmin – Database management
- Power BI Desktop – Interactive dashboards & visualization
- Jupyter Notebook – Python analysis
- GitHub – Project documentation & version control

## Project Workflow

1. Dataset collection from Kaggle
2. Data cleaning and preprocessing using Python
3. Exploratory Data Analysis (EDA)
4. SQL-based analytical queries using PostgreSQL
5. Dashboard creation in Power BI
6. Business insights and recommendations
7. Documentation and GitHub deployment

## Data Cleaning and Preprocessing

1. Handled missing values in categorical and numerical columns
2. Removed duplicate records
3. Converted month and year into usable time attributes
4. Engineered features such as Urban vs Rural classification
5. Ensured consistent data types for analysis and visualization

## EDA Using Python

- Year-wise growth analysis of EV charging stations
- Urban vs rural distribution analysis
- County-wise station density comparison
- Cost vs rebate relationship analysis
- Identification of data quality gaps across regions

## Key Insights from Python Analysis

1. EV charging infrastructure has shown consistent year-on-year growth
2. Majority of stations are concentrated in urban regions
3. Certain counties dominate EV infrastructure deployment
4. Rebate amounts generally increase with installation cost
5. Some regions show missing or inconsistent data, affecting reporting accuracy

## SQL-Based Business Analysis

1. Identified top cities with highest EV infrastructure growth
2. Detected counties with high investment but low charger count
3. Analyzed peak installation periods by year and month
4. Ranked counties based on rebate efficiency
5. Compared average cost and rebate across charging station brands

## Key Insights from SQL Analysis

1. EV infrastructure growth is city-centric
2. Some regions show inefficient cost-to-installation ratios
3. Installation activity peaks align with policy or budget cycles
4. Rebate efficiency varies significantly across counties
5. Brand-level analysis highlights cost differences among vendors

## Power BI Dashboard Development

Page 1: EV Infrastructure Overview- Map visual showing geographic distribution of stations, KPI cards for total stations, total rebate, average cost and the Year-wise growth trend

Page 2: Region-wise Gaps & Opportunities- County-wise station distribution, Urban vs rural comparison, Cost vs rebate analysis to detect underserved regions

Page 3: Future Expansion Recommendations- Rebate efficiency ranking by county, Expansion priority identification, Data-driven recommendations for infrastructure planning

## Key Insights from Power BI Dashboard

- EV infrastructure is unevenly distributed across counties
- Rural regions remain underdeveloped
- Some counties deliver better ROI on rebate spending
- Clear opportunities exist for optimized future expansion

## Business Recommendations

- Prioritize EV infrastructure expansion in underserved rural areas
- Optimize spending in high-cost, low-installation regions
- Use rebate efficiency metrics to guide future funding
- Encourage balanced regional development for statewide EV adoption

## Conclusion

This project demonstrates how raw EV rebate data can be transformed into meaningful insights using Python, SQL, and Power BI. The analysis highlights infrastructure growth trends, regional gaps, and cost efficiency, enabling data-driven decision-making for sustainable EV infrastructure development.

## Future Enhancements

- Integrate population data for accurate station density analysis
- Add real-time data refresh using live database connections
- Include EV adoption statistics for deeper correlation analysis
- Build predictive models for future infrastructure demand
