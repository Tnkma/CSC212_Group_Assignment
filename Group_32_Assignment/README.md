# Work Group 32 - Database Management System Assignment

## Group Members

| Name                        | Matric Number  | Email                         |
|-----------------------------|---------------|-------------------------------|
| **GODSWILL CHIMNONSO ONWUSILIKE** (Leader) | 23/CSC/221 | onwusilikenonso@gmail.com  |
| **GODWIN SUNDAY OKON**      | 23/CSC/205    | lohdgarro@gmail.com          |
| **VICTORY OGBAN ODUM**      | 23/CSC/185    | victoryogban373@gmail.com    |
| **ABUA GODWIN ULIMUFE**     | 23/CSC/008    | abuagodwin64@gmail.com       |

---

## Project Structure
The project is structured into different tasks as required in the assignment. Below is a breakdown of the files and their descriptions.

```
.
├── README.md  (This File)
├── Task_1
│   ├── Database ER diagram (crow's foot) (1).pdf
│   └── ERD_design_report.pdf
├── Task_2
│   ├── relational_algebra.pdf
│   └── relational_schema.pdf
├── Task_3
│   ├── Task_3a
│   │   ├── bookhub_data.sql
│   │   ├── bookhub.sql
│   │   └── query.sql
│   ├── Task_3b
│   │   ├── Books_Table.png
│   │   ├── Reviews_Table.png
│   │   ├── Transactions_Table.png
│   │   └── Users_Table.png
│   ├── Task_3c(i)
│   │   ├── genre(fantasy)_rating>4.png
│   │   ├── genre(Horror)_rating>4.png
│   │   ├── genre(mystery)_rating>4.png
│   │   ├── genre_rating.png
│   │   └── genre(romance)_rating_>_4.png
│   ├── Task_3c(ii)
│   │   ├── listed_by_all_user.png
│   │   ├── listed_by_each_user.png
│   │   └── user_listed_more_than_3.png
│   └── Task_3c(iii)
│       ├── Transactions_above_$50.png
│       └── transactions_above_50&20.png
├── Task_4
│   └── normalization.pdf
└── Task_5
    ├── 5_best_selling_books.png
    ├── advc_query.sql
    ├── genre_total_sale_report.png
    └── users_with_no_transaction.png
```

---

## Task Breakdown

### **Task 1: Entity-Relationship Diagram (ERD)**
- **Files:**
  - `Database ER diagram (crow's foot) (1).pdf` - A crow's foot ER diagram representation.
  - `ERD_design_report.pdf` - A report explaining the ER diagram design.

### **Task 2: Relational Algebra & Schema Design**
- **Files:**
  - `relational_algebra.pdf` - Explanation of relational algebra operations used.
  - `relational_schema.pdf` - The relational schema based on the ERD.

### **Task 3: SQL Implementation**
#### Task 3a: Database Schema and Data Population
- **Files:**
  - `bookhub.sql` - SQL script for creating the database and tables.
  - `bookhub_data.sql` - SQL script for inserting sample data.
  - `query.sql` - Queries used for fetching and manipulating data.

#### Task 3b: Table Representations
- **Files:**
  - `Books_Table.png` - Structure and sample data of the Books table.
  - `Reviews_Table.png` - Structure and sample data of the Reviews table.
  - `Transactions_Table.png` - Structure and sample data of the Transactions table.
  - `Users_Table.png` - Structure and sample data of the Users table.

#### Task 3c: Query Results
- **Task 3c(i) - Books with rating above 4 by genre:**
  - `genre(fantasy)_rating>4.png`
  - `genre(Horror)_rating>4.png`
  - `genre(mystery)_rating>4.png`
  - `genre_rating.png`
  - `genre(romance)_rating_>_4.png`
- **Task 3c(ii) - User listings summary:**
  - `listed_by_all_user.png`
  - `listed_by_each_user.png`
  - `user_listed_more_than_3.png`
- **Task 3c(iii) - Transactions above a certain amount:**
  - `Transactions_above_$50.png`
  - `transactions_above_50&20.png`

### **Task 4: Normalization**
- **File:**
  - `normalization.pdf` - Step-by-step process of normalizing the database up to 3NF.

### **Task 5: Advanced Queries**
- **Files:**
  - `5_best_selling_books.png` - A visual representation of the top 5 best-selling books.
  - `genre_total_sale_report.png` - A report on total sales per genre.
  - `users_with_no_transaction.png` - List of users with no transactions.
  - `advc_query.sql` - SQL script containing the advanced queries.

---

## How to Review the Deliverables

### **1. Review ERD and Design Report**
- Open `Task_1/Database ER diagram (crow's foot) (1).pdf` to view the ER diagram.
- Read `Task_1/ERD_design_report.pdf` for a detailed explanation of the design.

### **2. Relational Algebra and Schema**
- Open `Task_2/relational_algebra.pdf` to understand relational operations.
- Open `Task_2/relational_schema.pdf` for the relational schema design.

### **3. Run and Test the SQL Scripts**
#### **Steps to execute SQL scripts:**
1. Open MySQL and create the database using:
   ```sql
   CREATE DATABASE bookhub;
   ```
2. Load the schema:
   ```bash
   mysql -u root -p bookhub < Task_3/Task_3a/bookhub.sql
   ```
3. Insert data:
   ```bash
   mysql -u root -p bookhub < Task_3/Task_3a/bookhub_data.sql
   ```
4. Run queries:
   ```bash
   mysql -u root -p bookhub < Task_3/Task_3a/query.sql
   ```

### **4. Review Normalization Steps**
- Open `Task_4/normalization.pdf` to see how the tables were normalized up to 3NF.

### **5. Check Advanced Queries**
- Open `Task_5/advc_query.sql` to review the queries.
- Open images in `Task_5/` to see the results visually.

---

## Conclusion
This assignment covers database design, relational algebra, SQL implementation, normalization, and advanced querying techniques. All tasks have been properly structured and documented to ensure clarity and ease of understanding.

For any queries, contact the group leader, **Godswill Chimnonso Onwusilike**.