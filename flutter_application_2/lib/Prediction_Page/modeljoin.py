from ctypes import _NamedFuncPointer
from logging import _nameToLevel
from flask import Flask, request, jsonify
import joblib
import pandas as pd

app = Flask(_NamedFuncPointer)

# Load the trained AI model
model = joblib.load('cervical_cancer_risk_prediction_model.joblib')

# Define the Flask API endpoint for predicting the risk of cervical cancer
@app.route('/predict', methods=['POST'])
def predict():
    data = request.get_json(force=True)

    # Extract the input data from the request
    age = int(data['age'])
    num_sexual_partners = int(data['num_sexual_partners'])
    first_sexual_intercourse = int(data['first_sexual_intercourse'])
    smokes = int(data['smokes'])
    smokes_per_year = int(data['smokes_per_year'])
    hormones = int(data['hormones'])
    contraceptives = int(data['contraceptives'])
    uid = data['uid']

    # Create a Pandas DataFrame from the input data
    input_data = pd.DataFrame({
        'age': [age],
        'num_sexual_partners': [num_sexual_partners],
        'first_sexual_intercourse': [first_sexual_intercourse],
        'smokes': [smokes],
        'smokes_per_year': [smokes_per_year],
        'hormones': [hormones],
        'contraceptives': [contraceptives],
        'uid': [uid]
    })

    # Make a prediction using the trained AI model
    prediction = model.predict(input_data)[0]

    # Return the prediction as a JSON response
    return jsonify({'prediction': prediction})

if _nameToLevel == '_main_':
    app.run(debug=True) 