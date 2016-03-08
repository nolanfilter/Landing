using UnityEngine;
using System.Collections;

public class Char_Crush_Plants : MonoBehaviour {

	//public float crush;
	public bool buttonDown = false;
	public GameObject alienCutout;

	public AudioClip CuttingGrass;
	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
        /*
		buttonDown = Input.GetButton("R_Bumper");
		if(buttonDown == true){
			GetComponent<AudioSource>().clip = CuttingGrass;
			if(GetComponent<AudioSource>().isPlaying == false){
			GetComponent<AudioSource>().Play();
			}
			alienCutout.SendMessage("PlayCrush", null, SendMessageOptions.DontRequireReceiver);
			//print("crushed anim");
		}
		//if(buttonDown = false){
		//	audio.Stop();
		//}
  */      
	}

	void OnCollisionStay(Collision col) {
		if (col.gameObject.name == "Grass(Clone)"){
			GameObject obj = col.gameObject; 
			//print("cube");
			//Sends message to Plant's script Plant_Crush to activate function Crushed

			if (buttonDown == true){
				//crush = Input.GetAxis("A_Button");


				if (obj.GetComponent<Plant_Crush>() != null){
					obj.GetComponent<Plant_Crush>().Crushed();
				}
			}

		}

	}




	
}

			//Input.GetButtonDown(KeyCode.Joystick1Button0);

