using UnityEngine;
using System.Collections;

public class Char_A51_flashlight : MonoBehaviour {

	//public GameObject light;

	public GameObject flashlight;
	public float maxAngle;

	public float flDownRate;
	public float angleDownRate;

	public float coolDownRate;
	public float coolDownSeconds;
	float coolDown;

	public GameObject cone;

	float colliderActiv;
	public float colliderCountDown;
	bool looser = false;
	Vector3 currPos;

	public GameObject cameraA51;

	public GameObject alien;

	public AudioClip FlashRecharge;

	void Start () {
		////// DONT FORGET TO ENABLE (ERROR)
		cone.SetActive(false);
		coolDown = coolDownRate;
	}
	

	void Update () {
		//print(coolDown);
		currPos = transform.position;
		flashlight.SetActive(true);


		// DISABLES COLIDER IF LIGHT IS NOT FLASHED
		if(colliderActiv <= 0 ){

			///DONT FORGET TO ENABLE (ERROR)
			cone.SetActive(false);
		}

		/// LIMITS THE AMMOUNT OF FLASHES PER SECONDS YOU CAN MAKE
		if(Input.GetKeyDown(KeyCode.F)/*Input.GetButtonDown("R_Bumper2")*/ && coolDown <= 0){
			//Debug.Log("FLASHLIGHT");
			GetComponent<AudioSource>().PlayOneShot(FlashRecharge);
			flashlight.GetComponent<Light>().intensity = 8;
			flashlight.GetComponent<Light>().spotAngle = maxAngle;
			coolDown = coolDownSeconds;
			cone.SetActive (true);
			colliderActiv = .5f;
			cameraA51.SendMessage("Activate_Bloom");
		}

		if(colliderActiv != 0){
			colliderActiv -= colliderCountDown * Time.deltaTime;
		}


		if(coolDown > 0 ){
			coolDown -= coolDownRate * Time.deltaTime;
		}

		////  REDUCES INTENSITY
		if(flashlight.GetComponent<Light>().intensity > 2 /*&& Input.GetKey(KeyCode.F) == false*/){
			flashlight.GetComponent<Light>().intensity -= flDownRate * Time.deltaTime;

			if(flashlight.GetComponent<Light>().intensity < 2){
				flashlight.GetComponent<Light>().intensity = 2;
			}
		}


		//// CHECKS IF FLASHLIGHTS BUTTON IS NOT PRESSED AND REDUCES ANGLE
		if(flashlight.GetComponent<Light>().spotAngle > 60 /*&& Input.GetKey(KeyCode.F) == false*/){
			
			flashlight.GetComponent<Light>().spotAngle -= angleDownRate * Time.deltaTime;
			
			
			if(flashlight.GetComponent<Light>().intensity < 60){
				flashlight.GetComponent<Light>().intensity = 60;
			}
			
		}

		if(Input.GetKeyDown(KeyCode.C)/*Input.GetButtonDown("A_Button2")*/){
			//Debug.Log("C");
			alien.SendMessage("Grabbed",true);
		}

		if(looser){
			Invoke ("StickToPosition",0);
			cameraA51.SendMessage ("LookAtMothership");
			//if(elevate){ Invoke ("Elevate",0); }
		}



	
	}

	public void ChangeWinner(){
		//Debug.Log ("changed winner");
		looser = true;
	}
	
	void StickToPosition(){
		transform.position = new Vector3 (currPos.x, transform.position.y, currPos.z);
	}

}
