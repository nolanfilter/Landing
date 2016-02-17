using UnityEngine;
using System.Collections;

public class MotherShip : MonoBehaviour {

	// Use this for initialization
	//Vector3 goToPos;
	public GameObject alien;
	public AudioClip EndingSnip;


	void Start () {
		//goToPos = alien.transform;
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 goToPos = new Vector3(alien.transform.position.x, transform.position.y, alien.transform.position.z);
		//transform.position = new Vector3(Mathf.Lerp(transform.position.x, goToPos.x, 5),
		  //                               transform.position.y,
		    //                             Mathf.Lerp(transform.position.z, goToPos.z, 5));
		transform.position = Vector3.Lerp(transform.position, goToPos, Time.deltaTime);
		if (Vector3.Distance(goToPos,transform.position) < 1){
			alien.SendMessage("ChangeElevate");
			if(GetComponent<AudioSource>().isPlaying == false){
				GetComponent<AudioSource>().clip = EndingSnip;
				GetComponent<AudioSource>().Play();
			}
		}

	}
}
