using UnityEngine;
using System.Collections;

public class STARTcamera : MonoBehaviour {

	public Transform target;
	// Use this for initialization
	public Vector3 finalPos;
	Vector3 iniPos;

	void Start () {
		 
	}
	
	// Update is called once per frame
	void Update () {
		transform.LookAt(target);
		Vector3 goToPos = finalPos;
		//transform.position = new Vector3(Mathf.Lerp(transform.position.x, goToPos.x, 5),
		//                               transform.position.y,
		//                             Mathf.Lerp(transform.position.z, goToPos.z, 5));
		transform.position = Vector3.Lerp(transform.position, goToPos, .05f*Time.deltaTime);
		/*if (Vector3.Distance(goToPos,transform.position) < 1){
			alien.SendMessage("ChangeElevate");
		}*/
	
	}
}
