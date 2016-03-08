using UnityEngine;
using System.Collections;

public class CharA51Stunned : MonoBehaviour {

	Vector3 currPos;
	
	public float freezeSeconds;
	public float freezeCountDown;

	public GameObject a51Stunned,a51CutOut;
	
	float counter = 0;

	public bool button;

	public GameObject camera;

	public AudioClip Area51Stunned;


	// Use this for initialization
	void Start () {
		a51Stunned.SetActive(false);
	
	}
	
	// Update is called once per frame
	void Update () {

		if (counter > 0){
			counter -= freezeCountDown * Time.deltaTime;
			transform.position = currPos;
			button = false;
			//print (counter+" segundos");
		}  else {
			a51Stunned.SetActive(false);
			a51CutOut.SetActive(true);
		}
	
	}

	public void ButtonDown(bool _down){
		button = _down;
		//Debug.Log("button");
		//Debug.Log("button down");
	}

	void OnCollisionStay(Collision col) {
		if (col.gameObject.name == "Player_Alien_1" && button == true){
			
			if (counter <= 0){
				GetComponent<AudioSource>().PlayOneShot(Area51Stunned);
				currPos = transform.position;
				counter = freezeSeconds;
				a51Stunned.SetActive(true);
				a51CutOut.SetActive(false);
				camera.SendMessage("ShakeMe");
				//counter = 0;
				//print("cone");
			}

			
		}
	}



	void OnCollisionEnter(Collision col) {
		if (col.gameObject.name == "Grass(Clone)"){
			GameObject plant = col.transform.gameObject;
			//Debug.Log ("turn gizmo on");
			plant.SendMessage("TurnGizmo");
			
		}
	}

}
