from fastapi import FastAPI
from pydantic import BaseModel
import joblib
import numpy as np

app = FastAPI()

# Load the trained model
model = joblib.load("random_forest_model.pkl")

# Define the input schema
class SalesInput(BaseModel):
    store: int
    temperature: float
    fuel_price: float
    year: int
    month: int
    week: int
    dayofweek: int
    is_weekend: int
    weekly_sales_lag1: float
    temp_fuel_interaction: float

# Root endpoint for health check
@app.get("/")
def read_root():
    return {"message": "Walmart Sales Forecasting API is live"}

# Prediction endpoint
@app.post("/predict")
def predict(input: SalesInput):
    try:
        data = np.array([[input.store, input.temperature, input.fuel_price, input.year,
                          input.month, input.week, input.dayofweek, input.is_weekend,
                          input.weekly_sales_lag1, input.temp_fuel_interaction]])
        prediction = model.predict(data)
        return {"weekly_sales": float(prediction[0])}
    except Exception as e:
        return {"error": str(e)}
