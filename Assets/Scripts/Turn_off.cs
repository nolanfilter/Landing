using UnityEngine;
using System.Collections;

public class Turn_off : MonoBehaviour {

	public GameObject mothership;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(mothership.activeInHierarchy){
			GetComponent<AudioSource>().Stop();
		}
	
	}
}
