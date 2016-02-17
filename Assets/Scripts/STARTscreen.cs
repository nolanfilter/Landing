using UnityEngine;
using System.Collections;

public class STARTscreen : MonoBehaviour {

	public string levelToLoad = "GAME";

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetButtonDown("A_Button")){
			Application.LoadLevel (levelToLoad);
		}
		if(Input.GetKeyDown(KeyCode.Escape)){
			Application.Quit();
		}
	}
}
