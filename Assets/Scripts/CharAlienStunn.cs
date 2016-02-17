using UnityEngine;
using System.Collections;

public class CharAlienStunn : MonoBehaviour {

	bool buttonDown;

	public GameObject camera;
	public GameObject alienCutout;

	//public GameObject alienStunned,alienCutOut;

	// Use this for initialization
	void Start () {
		buttonDown = false;

	}
	
	// Update is called once per frame
	void Update () {

		if (Input.GetAxis("R_Trigger")>.5f){
			//Debug.Log("x");
			buttonDown = true;
			alienCutout.SendMessage("Hit", SendMessageOptions.DontRequireReceiver);
		} 
	
	}

	void OnCollisionStay(Collision col){



		if (col.gameObject.name == "Player_A51_1"){
			GameObject human = col.gameObject;
			Debug.Log("alien collision with a51");


			if (buttonDown == true){
				buttonDown = false;
				human.SendMessage("ButtonDown", true, SendMessageOptions.DontRequireReceiver);
				//Invoke(FreezePos);
				camera.SendMessage("ShakeMe");
			}

		} else { buttonDown = false; }


	}

	void OnCollisionExit(Collision col){
		if (col.gameObject.name == "Player_A51_1"){
			GameObject human = col.gameObject;
			//print("alien exit collision a51");

			human.SendMessage("ButtonDown", false, SendMessageOptions.DontRequireReceiver);
		}
	}


}
