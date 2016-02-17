using UnityEngine;
using System.Collections;

public class Cam_Movement_A51 : MonoBehaviour {

	Animator anim;
	
	public float smooth = 2.0F;
	public float tiltAngle = 10.0F;
	//public float nearCullForPlants = 4f;
	Quaternion currentAngle;
	//int direction;
	
	//float counter= 0f;

	float shakeSpeed = 1f;
	float shakeTime = 1.5f;
	Vector3 originalPosition;

	bool mothershipView = false;
	public Transform mothership;

	// Use this for initialization
	void Start () {
		currentAngle = transform.localRotation;
		anim = this.GetComponent<Animator>();
		originalPosition = transform.localPosition;
	}
	
	// Update is called once per frame
	void Update () {
		//anim.ResetTrigger("counter");
		
		
		float tiltAroundX = Input.GetAxis("RJoy Y2") * tiltAngle;
		//tiltAroundX *= Time.deltaTime;
		
		if (Input.GetAxis("RJoy Y2") != 0){
			if(transform.localEulerAngles.x <= 25 || transform.localEulerAngles.x >= -25){
				Quaternion target = Quaternion.Euler(tiltAroundX, 0, 0);
				transform.localRotation = Quaternion.Slerp(transform.localRotation, target, Time.deltaTime * smooth);
				
				/*if(Input.GetAxis("RJoy Y2") > 0){ direction = 1;}
				else { direction = -1;}*/
			}
		}
		
		if(Input.GetAxis("RJoy Y2") == 0){
			transform.localRotation = Quaternion.Slerp(transform.localRotation, currentAngle, Time.deltaTime * smooth);
			//transform.Rotate;
		}
		//anim.SetBool("counter", false);

		if(mothershipView){
			transform.LookAt(mothership);
		}


	}
	public void ShakeMe(){
		iTween.ShakePosition(gameObject, Vector3.one * shakeSpeed, shakeTime);
		StartCoroutine("ReturnCameraToOriginalPosition");
	}
	IEnumerator ReturnCameraToOriginalPosition(){
		yield return new WaitForSeconds(2f);
		transform.localPosition = originalPosition;
	}
	public void Activate_Bloom(/*float _counter*/){
		anim.SetTrigger("trig");
		//anim.ResetTrigger("trig");
	}

	public void LookAtMothership(){
		mothershipView = true;
	}
}
