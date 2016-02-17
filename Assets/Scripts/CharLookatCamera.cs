using UnityEngine;
using System.Collections;

public class CharLookatCamera : MonoBehaviour {

	public GameObject alienCamera;
	Transform target;
	float angle;

	// Use this for initialization
	void Start () {

		alienCamera = GameObject.Find("Camera_Alien_1");
		target = GetComponent<Camera>().transform; 

	}


	
	// Update is called once per frame
	void Update () {

		angle = transform.rotation.x;

		transform.LookAt(target);
		transform.Rotate(angle + 90, 0, 0);
	
	}


}
