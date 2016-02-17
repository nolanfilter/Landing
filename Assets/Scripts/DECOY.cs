using UnityEngine;
using System.Collections;

public class DECOY : MonoBehaviour {

	GameObject alien;
	GameObject dust;

	public int moveZ;

	// Use this for initialization
	void Start () {

		StartCoroutine("Suicide");

		alien = GameObject.FindGameObjectWithTag("Alien");

	}
	
	// Update is called once per frame
	void Update () {

		transform.Translate(0, 0, moveZ*Time.deltaTime);

	}


	void OnTriggerEnter(Collider col) {
		Debug.Log ("DESTROY CLONE");
		if (col.gameObject.name == "cone1"){
			Invoke ("Kill", 0);
		}
	}


	public void Kill(){
		alien.SendMessage ("ActiveClone");
		dust = GameObject.FindGameObjectWithTag("DustDecoy");
		dust.SendMessage ("Kill");
		Destroy (gameObject);
	}

	
	IEnumerator Suicide(){
		yield return new WaitForSeconds(7f);
		alien.SendMessage ("ActiveClone");
		dust = GameObject.FindGameObjectWithTag("DustDecoy");
		dust.SendMessage ("Kill");
		Destroy (gameObject);
		}
		//Debug.Log("RETURN TO ALIEN!");
		//gizmoAlien.layer = LayerMask.NameToLayer("MapGizmosAlien");
}
		


