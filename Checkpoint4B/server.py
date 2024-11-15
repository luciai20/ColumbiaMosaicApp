from flask import Flask
from flask import render_template
from flask import Response, request, jsonify
import json

app = Flask(__name__)

def load_data_from_file():
    try:
        with open('events_data.json', 'r') as file:
            return json.load(file)
    except (FileNotFoundError, json.JSONDecodeError):
        return []

def save_data_to_file(data):
    with open('events_data.json', 'w') as file:
        json.dump(data, file, indent=4)

data = load_data_from_file()
current_id = max([event["id"] for event in data], default=0)

current_id = 0
data = []

@app.route('/')
def home():
    return 'Welcome to Columbia Mosaic Event Form!'

@app.route('/eventform')
def eventform(name=None):
    return render_template('eventform.html', data=data)

@app.route('/submit-event', methods=['POST'])
def submit_event():
    global current_id
    current_id += 1
    try: 
        event_title = request.form.get('event_title')
        event_description = request.form.get('event_description')

        if not event_title or not event_description:
            return jsonify({"error": "Missing event title or description"}), 400

        new_event = {
            "id": current_id,
            "subject": event_title,
            "body": event_description
        }
        data.append(new_event)
        save_data_to_file(data)
        print(data)
        # Redirect to announcements page or return a success message
        return jsonify({"message": "Event successfully added", "new_event": new_event})

    except Exception as e:
        # Return an error message if an exception occurs
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
   app.run(debug=True)