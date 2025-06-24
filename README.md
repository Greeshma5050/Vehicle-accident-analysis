# 🚧 Road Accident Analysis using SQL Server (SSMS)

This project involves **Exploratory Data Analysis (EDA)** on a road accident database using **Microsoft SQL Server Management Studio (SSMS)**. Through a series of well-structured SQL queries, the project answers several real-world questions about accident patterns, severity, vehicle factors, and environmental conditions.

---

## 📁 Dataset

- **Files:** 
  - `accident.csv`
  - `vehicle.csv`
 
**Description:**  
  The dataset contains detailed records of road traffic accidents including:
  - Location (urban/rural, speed limits)
  - Date & time of accidents
  - Vehicle types, age, impact points
  - Weather and lighting conditions
  - Journey purpose and severity of accidents

## 🛠️ Tools Used

- **SQL Engine:** Microsoft SQL Server 2019
- **IDE:** SQL Server Management Studio (SSMS)

---

## ❓ Questions Answered

### Q1. How many accidents have occurred in urban areas versus rural areas?
> A basic grouping by area type to compare accident frequency.

### Q2. Which day of the week has the highest number of accidents?
> Aggregated accident data based on day-wise distribution.

### Q3. What is the average age of vehicles involved in accidents based on their type?
> Used grouping by vehicle type and calculating the mean age.

### Q4. Can we identify any trends in accidents based on the age of the vehicles involved?
> Explored accident frequency across different vehicle age bands.

### Q5. Are there any specific weather conditions that contribute to severe accidents?
> Combined severity and weather conditions to identify risky environments.

### Q6. Do accidents often involve impacts on the left-hand side of vehicles?
> Looked into the 'point of impact' field to understand collision sides.

### Q7. Are there any relationships between journey purposes and the severity of accidents?
> Examined how trip reasons (e.g., commuting, leisure) relate to accident severity.

### Q8. Calculate the average age of vehicles involved in accidents, considering daylight and point of impact.
> A multi-column analysis showing how visibility and impact location affect vehicle age trends.

### Q9. How many accidents occurred at each speed limit categorized by severity level, and what is the distribution across different speed limits?
```sql
SELECT COUNT(accidentindex) AS accidents, speedlimit, severity
FROM accident  
GROUP BY speedlimit, severity
ORDER BY speedlimit DESC;
Grouped accidents by both speed limits and severity, helping understand how speed zones relate to accident outcomes.
```

🔍 Insights Extracted
Urban areas show a significantly higher number of accidents than rural areas.

-Most accidents occur on weekends, especially on Fridays.

-Older vehicles are generally involved in more severe accidents.

-Adverse weather conditions like fog and rain tend to increase severity.

-Left-hand side impacts are notably common in certain crash types.

-Leisure journeys show a different severity trend compared to commuting.

-Daylight and impact position can influence vehicle involvement patterns.

---

📌 How to Run

-Import the .csv files into SQL Server 

-Modify or extend the queries based on custom exploration needs.


🚀 Future Enhancements

-Use Power BI or Tableau to build visual dashboards.

-Perform predictive modeling using Python on top of the SQL-processed data.

-Include time-series trends or seasonal accident patterns.

---

