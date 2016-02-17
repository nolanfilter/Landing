using UnityEngine;
using System.Collections;

public class Plant_CropCircle : MonoBehaviour {

	public bool crushable;
	bool emit;
	public GameObject particlesCrush;
	GameObject clone;

	GameObject longGrass;

	public GameObject gizmoAlien;
	//int counter;

	//global targetPlants;

	// Use this for initialization
	void Start () {
		crushable = false;
		//counter = 30;
		//particlesCrush.particleSystem.enableEmission = false;
		gizmoAlien = transform.FindChild("Gizmo_Alien").gameObject;

	}
	
	// Update is called once per frame
	void Update () {

	}



	void OnTriggerEnter(Collider col) {
		//Debug.Log(col.name);
		if (col.gameObject.name == "Crop Circle"){

			gameObject.SendMessage("SetCrushPoint",true);

			//print(crushable);
			GameManager.plantsToCrush++;
			crushable = true;
			SendMessage("Instantiate", crushable);
			
		}
	}



	void Instantiate(bool inst){
		emit = inst;
		if (emit){
			//Debug.Log("Instantiate");

			clone = Instantiate(particlesCrush, new Vector3(transform.position.x,
			                                                transform.position.y+1,
			                                                transform.position.z),
			                    Quaternion.identity) as GameObject;
			clone.transform.Rotate  (270,0,0);

			//PARENT THE PARTICLES TO THE LONG GRASS AND THEY SHOULD DISAPPEAR ALONE

			longGrass = transform.Find("Long Grass").gameObject;
			//longGrass = currentObjContainer.transform.GetChild(0); // gets the first child
			//GOone.parent = GOtwo;
			clone.transform.parent = longGrass.transform;
		}
	}

	public void Destroy(){
		//Debug.Log ("destroy particle");
		/*emit = inst;
		if (emit){
			Debug.Log("Instantiate");
			GameObject clone;
			clone = Instantiate(particlesCrush, new Vector3(transform.position.x,
			                                                transform.position.y+1,
			                                                transform.position.z),
			                    Quaternion.identity) as GameObject;   }*/
		clone.GetComponent<ParticleSystem>().enableEmission = false;
		clone.SetActive(false);


	}

	public void ChangeLayer(){
		//Debug.Log ("CHANGE GIZMO");

		gizmoAlien.layer = LayerMask.NameToLayer("MapGizmosA51");
//		Debug.Log(LayerMask.LayerToName(gizmoAlien.layer));
		//StartCoroutine("ReturnGizmoToOriginalPosition");
	}

	IEnumerator ReturnGizmoToOriginalPosition(){
		yield return new WaitForSeconds(2f);
		//Debug.Log("RETURN TO ALIEN!");
		gizmoAlien.layer = LayerMask.NameToLayer("MapGizmosAlien");
	}




}
