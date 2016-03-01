using UnityEngine;
using System.Collections;

public class P_DustCreate : MonoBehaviour {

	bool start = true;
	bool kill;

	int moveZ = 3;
	bool move=true;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		if(move){
			transform.Translate(0, 0, moveZ*Time.deltaTime);
		}

		if(start){
			StartCoroutine("StopParticles");
			start = false;
		}
	}
	

	IEnumerator StopParticles(){
		//Debug.Log ("STOP PARTICLES");
		yield return new WaitForSeconds(.8f);
		gameObject.GetComponent<ParticleSystem>().enableEmission=false;
		if (kill){
			StartCoroutine("KillKill");
		}
		//Debug.Log("RETURN TO ALIEN!");
		//gizmoAlien.layer = LayerMask.NameToLayer("MapGizmosAlien");
	}

	public void Kill(){
		gameObject.GetComponent<ParticleSystem>().enableEmission=true;
		kill = true;
		move=false;
		StartCoroutine("StopParticles");
	}

	IEnumerator KillKill(){
		yield return new WaitForSeconds(1f);
		Destroy (gameObject);
	}

}
