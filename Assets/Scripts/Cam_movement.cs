using UnityEngine;
using System.Collections;

public class Cam_movement : MonoBehaviour {

	Animator anim;

	public float smooth = 2.0F;
	public float tiltAngle = 10.0F;
	//public float nearCullForPlants = 4f;
	Quaternion currentAngle;
	//int direction;

	//float counter=0;
	float shakeSpeed = 0.5f;
	float shakeTime = 0.5f;
	Vector3 originalPosition;
	// Use this for initialization

	bool mothershipView = false;
	public Transform mothership;

	void Start () {
		currentAngle = transform.localRotation;
		anim = this.GetComponent<Animator>();
		originalPosition = transform.localPosition;
	}
	
	// Update is called once per frame
	void Update () {
		//anim.ResetTrigger("counter");
        /*
		float tiltAroundX = Input.GetAxis("RJoy Y") * tiltAngle;
		//tiltAroundX *= Time.deltaTime;

		if (Input.GetAxis("RJoy Y") != 0){
			if(transform.localEulerAngles.x <= 25 || transform.localEulerAngles.x >= -25){
				Quaternion target = Quaternion.Euler(tiltAroundX, 0, 0);
				transform.localRotation = Quaternion.Slerp(transform.localRotation, target, Time.deltaTime * smooth);
			}
		}

		if(Input.GetAxis("RJoy Y") == 0){
			transform.localRotation = Quaternion.Slerp(transform.localRotation, currentAngle, Time.deltaTime * smooth);
			//transform.Rotate;
		}
		//anim.SetBool("counter", false);


		if(mothershipView){
			transform.LookAt(mothership);
		}

*/
	}
	public void ShakeMe(){
		iTween.ShakePosition(gameObject, Vector3.one * shakeSpeed, shakeTime);
		StartCoroutine("ReturnCameraToOriginalPosition");
	}
	IEnumerator ReturnCameraToOriginalPosition(){
		yield return new WaitForSeconds(1f);
		transform.localPosition = originalPosition;
	}
	public void Activate_Bloom(float _counter){
		anim.SetFloat("counter", _counter);
	}

	public void LookAtMothership(){
		mothershipView = true;
	}
}

		/*

		void Update() {
			float tiltAroundZ = Input.GetAxis("Horizontal") * tiltAngle;
			float tiltAroundX = Input.GetAxis("Vertical") * tiltAngle;
			Quaternion target = Quaternion.Euler(tiltAroundX, 0, tiltAroundZ);
			transform.rotation = Quaternion.Slerp(transform.rotation, target, Time.deltaTime * smooth);
		}  */