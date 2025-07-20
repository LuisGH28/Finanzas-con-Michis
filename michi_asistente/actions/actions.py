from typing import Any, Text, Dict, List
from rasa_sdk import Action, Tracker
from rasa_sdk.executor import CollectingDispatcher
import sqlite3
from datetime import datetime

class ActionGastosMes(Action):
    def name(self) -> Text:
        return "action_gastos_mes"

    def run(self, dispatcher: CollectingDispatcher,
            tracker: Tracker,
            domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
        
        conn = sqlite3.connect("finances.db")
        cursor = conn.cursor()

        mes_actual = datetime.now().strftime("%m")
        cursor.execute("SELECT SUM(monto) FROM gastos WHERE strftime('%m', fecha) = ?", (mes_actual,))
        total = cursor.fetchone()[0] or 0.0

        mensaje = f"🐾 Este mes has gastado ${total:.2f} MXN. ¡Buen trabajo, humano responsable!"
        dispatcher.utter_message(text=mensaje)

        conn.close()
        return []
