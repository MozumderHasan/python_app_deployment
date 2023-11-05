
from typing import Optional

from fastapi import FastAPI, FastAPI, Query
from pydantic import BaseModel

import databasemysql

class Movie(BaseModel):
    id: int
    title: str

app = FastAPI()

# Connect to the MySQL database
connection = databasemysql.connect(host='localhost', user='root', password='H12345', database='my_database')

# Create a SQLAlchemy database engine
engine = databasemysql.create_engine(connection)

# Create a SQLAlchemy model for the Movie table
class Movie(Base):
    id = Column(Integer, primary_key=True)
    title = Column(String(255))

    def __repr__(self):
        return f"<Movie {self.id}: {self.title}>"

# Define a FastAPI endpoint to get all movies
@app.get("/movies")
async def get_all_movies(title: Optional[str] = Query(None)):
    # Create a SQLAlchemy session
    session = Session(engine)

    # Get all movies from the database
    if title is None:
        movies = session.query(Movie).all()
    else:
        movies = session.query(Movie).filter(Movie.title.like(f"%{title}%")).all()

    # Close the SQLAlchemy session
    session.close()

    return movies

# Define a FastAPI endpoint to create a new movie
@app.post("/movies")
async def create_movie(movie: Movie):
    # Create a SQLAlchemy session
    session = Session(engine)

    # Create a new Movie object and save it to the database
    session.add(movie)
    session.commit()

    # Close the SQLAlchemy session
    session.close()

    return movie

# Start the FastAPI application
if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
# import mysql.connector


# db_config = {
#     "host": "parrot",
#     "port": 3306,
#     "user": "root",
#     "password": "H12345",
#     "database": "testDB",
# }


# def test_connection(db_config):
#     try:
#         connection = mysql.connector.connect(**db_config)
#         connection.close()
#         print("Connection successful!")
#     except mysql.connector.errors.Error as e:
#         print("Connection failed:", e)

# if __name__ == "__main__":
#     test_connection(db_config)


# import pymysql

# connection = pymysql.connect(host='parrot', port=3306, user='root', password='H12345', database='movieDB')

# # Execute a SQL query
# cursor = connection.cursor()
# cursor.execute('SELECT * FROM movies')

# # Get the results of the query
# results = cursor.fetchall()

# # Close the connection
# connection.close()