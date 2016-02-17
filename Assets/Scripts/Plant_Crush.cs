using UnityEngine;
using System.Collections;

public class Plant_Crush : MonoBehaviour {

	public int state;
	//public Texture2D crushedText;
	//public Texture2D normalText;
	public GameObject fullGrass, cutGrass;

	public GameObject gizmoAlien, gizmoA52;

	public GameObject LongGrassBites;
	public GameObject LongGrassMain;

	public GameObject light;

	bool activGizmo = false;
	//public GameObject particlesCrush;



	int lg_main = 0;
	public bool crushed = false;
	//Vector3 rot(90,0,0);

	bool crushPoint;

	// Use this for initialization
	void Start () {
		cutGrass.SetActive(false);
		gizmoAlien.SetActive(false);
		gizmoA52.SetActive(false);
		light.SetActive(false);
		//particlesCrush.particleSystem.enableEmission = false;
		//particlesCrush.SetActive(false);

	}

	// Update is called once per frame
	void Update () {
		//renderer.material.mainTexture = normalText;

	
	}

	public void SetCrushPoint(bool _crushable){
		crushPoint = _crushable;
		//particlesCrush.particleSystem.enableEmission = true;
	}


	public void Crushed (){
		//crushPoint = this.GetComponent<Plant_CropCircle>().crushable;
		//sprint ("point " + crushPoint);
		crushed = true;
		//collider.enabled = false;

		// INSTANCIATE PARTICLES
		if (lg_main == 0){
			GameObject clone;
			clone = Instantiate(LongGrassMain, new Vector3(transform.position.x,
		                                               transform.position.y+2,
		                                               transform.position.z),
		                    				Quaternion.identity) as GameObject;
			clone.transform.Rotate  (270,0,0);


			GameObject clone2;
			clone2 = Instantiate(LongGrassBites, new Vector3(transform.position.x,
			                                               transform.position.y+2,
			                                               transform.position.z),
			                    			Quaternion.identity) as GameObject;
			clone2.transform.Rotate(270,0,0);
			//Debug.Log (GameManager.plantsToCrush);

			/// SUBSTRACTS A NUMBER FROM PLANTS TO CRUSH
			if(crushPoint == true){
				//print(GameManager.plantsToCrush);
				GameManager.plantsToCrush--;
				gameObject.tag = "Grass";
			}


			lg_main = 1;
		// DESTROY PARTICLES
			//yield return new WaitForSeconds(2f); 
			//Destroy(clone);
			Invoke("TurnOff",.5f);


		}

		
		//clone.velocity = transform.TransformDirection(Vector3.forward * 10);
			//renderer.material.mainTexture = crushedText;
		//}
	}
	void TurnOff(){
		if (cutGrass == null || fullGrass == null){
			return;
		}
		if(crushPoint==true){
			gizmoAlien.SetActive(true);
			activGizmo = true;
			//light.SetActive(true);
		}
		cutGrass.SetActive(true);
		fullGrass.SetActive(false);
	}

	void TurnGizmo(){
		if(activGizmo == true){
			gizmoA52.SetActive(true);
			Debug.Log("Gizmo A52 true");
		}
	}
}
