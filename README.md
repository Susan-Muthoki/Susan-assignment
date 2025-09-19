# Susan-Muthoki-s-Assignment
Report: Netflix Personalized Movie Recommender System

**1. Project overview**

This project builds a personalized movie recommender system for Netflix users.
The goal is to suggest movies to a user based on their past ratings and preferences, using techniques like:

Collaborative Filtering (finding users with similar tastes).

Matrix Factorization (SVD) to capture hidden patterns in ratings.

**2. Libraries used**

The project imports essential Python libraries such as:

pandas, numpy → for handling datasets.

matplotlib, seaborn → for visualizations.

scikit-learn → for model evaluation.

surprise → for building recommender systems with SVD (Singular Value Decomposition).

**3. Dataset & preprocessing**

The dataset contains:

Users (identified by IDs).

Movies (with titles).

Ratings (usually 1–5 stars).

Steps taken:

Checked for missing data.

Explored the dataset to understand patterns.

Reduced dataset size for efficiency (focused on top movies/users to avoid memory issues).

**4. Exploratory Data Analysis (EDA)**

The project visualized:

Ratings Distribution → Showed how users tend to rate movies (e.g., many gave 4 stars).

Top 10 Most Rated Movies → Popular titles with lots of user ratings.

Most Active Users → Some users contributed many ratings.

Highest Rated Movies (with enough votes) → Helps avoid skewed averages.

**5. User-Based Recommendations**

Built a user–movie matrix (rows = users, columns = movies, values = ratings).

Found similar users based on rating patterns.

Recommended movies liked by similar users to the target user.

This is called User-Based Collaborative Filtering.

**6. Item-Based Recommendations**

Constructed a movie similarity matrix.

If a user likes Movie A, the system suggests other movies that are statistically similar.

This is called Item-Based Collaborative Filtering.

**7. Matrix Factorization (SVD)**

Used Singular Value Decomposition (SVD) from the Surprise library.

Idea: compress the huge user–movie matrix into smaller “latent features” (like hidden genres or themes).

Helps discover deeper patterns (e.g., a user who likes romantic comedies might also like musicals).

The model was:

Trained on part of the dataset.

Evaluated using cross-validation (splitting data into training/testing).

**8. Model Performance**

Measured accuracy using RMSE (Root Mean Squared Error) → shows how close predictions are to real ratings.

Lower RMSE = better recommendations.

The results showed that SVD performed well, better than basic methods.

**9. Conclusion**

The project successfully built a personalized recommender system.

It combined:

Exploratory insights (popular movies, active users).

Collaborative filtering (user-based + item-based).

Matrix factorization (SVD).

Such a system can be scaled to suggest relevant movies to users on a streaming platform like Netflix.
