
from logging import _nameToLevel
from flask import Flask, request, jsonify
from sklearn.ensemble import RandomForestClassifier
import tensorflow as tf
import joblib

app = Flask(__name__)

# Load the AI model
model = joblib.load('cervical_cancer_risk_prediction_model.joblib')

# Define a function to preprocess the input data
def preprocess_input(age, num_sexual_partners, first_sexual_intercourse, smokes, smokes_per_year, hormones, contraceptives, uid):
    # Perform any necessary data cleaning, normalization, or encoding
    preprocessed_input = [age, num_sexual_partners, first_sexual_intercourse, smokes, smokes_per_year, hormones, contraceptives, uid]
    return preprocessed_input

# Define a function to make a prediction using the AI model
def make_prediction(input_data):
    # Make a prediction using the AI model
    prediction = model.predict([input_data])[0]
    return prediction

@app.route('/predict', methods=['POST'])
def predict():
    # Get the input data from the request
    age = request.json['age']
    num_sexual_partners = request.json['num_sexual_partners']
    first_sexual_intercourse = request.json['first_sexual_intercourse']
    smokes = request.json['smokes']
    smokes_per_year = request.json['smokes_per_year']
    hormones = request.json['hormones']
    contraceptives = request.json['contraceptives']
    uid = request.json['uid']
    
    # Preprocess the input data
    preprocessed_input = preprocess_input(age, num_sexual_partners, first_sexual_intercourse, smokes, smokes_per_year, hormones, contraceptives, uid)
    RandomForestClassifier
    # Make a prediction using the AI model
    prediction = make_prediction(preprocessed_input)
    
    # Return the prediction as a response
    return jsonify({'prediction': prediction})

app.run() 
