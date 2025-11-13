# app.py
from fastapi import FastAPI, Request
import joblib
import pandas as pd

app = FastAPI()
model = joblib.load("random_forest_model.pkl")


@app.post("/predict")
async def predict(request: Request):
    data = await request.json()
    df = pd.DataFrame([data])
    prediction = model.predict(df)[0]
    return {"prediction": prediction}
