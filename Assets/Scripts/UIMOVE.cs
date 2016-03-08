using UnityEngine;
using System.Collections;

public class UIMOVE : MonoBehaviour {

	Color textureColor;

	bool buttonDown;

	// Use this for initialization
	void Start () {

			
		textureColor = GetComponent<GUITexture>().color;
		

	}
	
	// Update is called once per frame
	void Update () {
        /*
		buttonDown = Input.GetButton("R_Bumper");

		textureColor.a -= 1f * Time.deltaTime;
		GetComponent<GUITexture>().color = textureColor;

		if(buttonDown == true){
			textureColor.a = 1;
			GetComponent<GUITexture>().color = textureColor;
			//print("crushed anim");
		}
*/
	
	}
}
