using UnityEngine;
using System.Collections;

public class Plant_Transparency : MonoBehaviour {

	//public Color alphaValue;
	//Color alphaTotal;
	//public GameObject longGrass;
	public GameObject longGrass;

	// Use this for initialization
	void Start () {
		//alphaTotal = renderer.material.color;
		//alphaValue = renderer.material.color;
		//alphaValue.a = .5f;
	}

	void Update () {
	}

	//CHANGE PLANT TO INVISIBLE LAYER
	void OnTriggerEnter(Collider col) {

		if (col.gameObject.name == "plant_Transp_A51"){

			longGrass.layer = LayerMask.NameToLayer("HumanQuad");


			/*foreach (Transform child in transform) {
				//child.renderer.enabled = false;
				child.gameObject.layer = LayerMask.NameToLayer( "HumanQuad" );
			}	*/
		} else if (col.gameObject.name == "plant_Transp_Alien"){

			longGrass.layer = LayerMask.NameToLayer("AlienQuad");

			/*foreach (Transform child in transform) {
				//child.renderer.enabled = false;
				child.gameObject.layer = LayerMask.NameToLayer( "AlienQuad" );
			}*/
		} /*else if (col.gameObject.name == "Player_A51_1" || col.gameObject.name == "Player_Alien_1" ){
			
			longGrass.SendMessage("PlayMove"); 
		} */
		
	}

	//CHANGE PLANT BACK TO VISIBLE LAYER
	void OnTriggerExit(Collider colExit) {
			if (colExit.gameObject.name == "plant_Transp_A51" ||
		        colExit.gameObject.name == "plant_Transp_Alien" ){
				//print ("colision exit");
				longGrass.layer = LayerMask.NameToLayer("Plants");
				/*foreach (Transform child in transform) {
					//child.renderer.enabled = true;
					child.gameObject.layer = LayerMask.NameToLayer( "Plants" );
				}*/
			}
	}


	/*void OnTriggerEnter(Collider col) {
		
		if (col.gameObject.name == "Player_A51_1" || col.gameObject.name == "Player_Alien_1" ){
			
			longGrass.SendMessage("PlayMove"); 
		} 
		
	}*/

}
