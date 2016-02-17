using UnityEngine;
using System.Collections;

public class CharMovementA51 : MonoBehaviour {
	
	//public float speed = 10.0F;
    public float rotationSpeed;
	public float playerXspeed;
	Vector3 pos;

	public GameObject particlesDust;
	public GameObject a51Cutout;

	public GameObject a51Gizmo;
	public GameObject a51GizmoPS;
	float countdownG ;

	float moveX;
	float moveZ;

	public float maxX;
	public float minX;
	public float maxZ;
	public float minZ;


	
	
	// Use this for initialization
	void Start () {
		//gameObject.collider.enabled = true;
		countdownG = 0;
		a51Gizmo.GetComponent<Renderer>().enabled = false;
		
	}
	
	// Update is called once per frame
	void Update () {

		if (transform.position.x >= maxX-1f){
			transform.position = new Vector3(maxX-1.1f,transform.position.y,transform.position.z);
		} else if (transform.position.x < minX+1f){
			transform.position = new Vector3(minX+1.1f,transform.position.y,transform.position.z);
		} else if(transform.position.z > maxZ-1f){
			transform.position = new Vector3(transform.position.x,transform.position.y,maxZ-1.1f);
		} else if (transform.position.z < minZ+1f){
			transform.position = new Vector3(transform.position.x,transform.position.y,minZ+1.1f);
		}

		if(countdownG > 0){
			countdownG -= .1f;
			//Debug.Log(countdownG);
			//alienGizmoPS.ParticleSystem.Play(false);
			//alienGizmoPS.GetComponent<ParticleSystem>().Play(false);
		}
		
		if(countdownG <= 0){
			a51Gizmo.GetComponent<Renderer>().enabled = false;
			//alienGizmoPS.renderer.enabled = false;
			
			//alienGizmoPS.ParticleSystem.Clear(true);
			
			//alienGizmoPS.GetComponent<ParticleSystem>().Clear(true);
			//alienGizmoPS.SetActive(false);
		}
		
		if (Input.GetKeyDown(KeyCode.R)/*Input.GetButtonDown("X_Button2")*/ && countdownG <= 0){
			//Debug.Log("x");
			a51Gizmo.GetComponent<Renderer>().enabled = true;
			countdownG = 1f * Time.deltaTime;
			
			//alienGizmoPS.renderer.enabled = true;
			a51GizmoPS.SetActive(true);
			a51GizmoPS.GetComponent<ParticleSystem>().Play(true);
			//alienGizmoPS.ParticleSystem.Play(true);
		}
		

		float moveZ = Input.GetAxis("Vertical") * playerXspeed;
		float moveX = Input.GetAxis("Horizontal") * playerXspeed;
		
		moveZ *= Time.deltaTime;
		moveX *= Time.deltaTime;
		
		transform.Translate(moveX, 0, moveZ);
		
		float rotationY = Input.GetAxis("Horizontal") * rotationSpeed;
		
		rotationY *= Time.deltaTime;
		
		transform.Rotate (0, rotationY, 0);

		a51Cutout.SendMessage("SetSpeed", moveZ, SendMessageOptions.DontRequireReceiver);




		////////////////////
		/// 
		/// 
		/// 
		/*
		moveZ = Input.GetAxis("LJoy Y2") * playerXspeed;
		moveX = Input.GetAxis("LJoy X2") * playerXspeed;
		
		moveZ *= Time.deltaTime;
		moveX *= Time.deltaTime;
		transform.Translate(moveX, 0, moveZ);
		
		float rotationY = Input.GetAxis("RJoy X2") * rotationSpeed;
		rotationY *= Time.deltaTime;
		transform.Rotate (0, rotationY, 0);
		
		a51Cutout.SendMessage("SetSpeed", moveZ, SendMessageOptions.DontRequireReceiver);
		*/
		/// ///////////////////////////
		/// 
		/// 

		//CHECKS SPEED AND SETS DUST PARTICLES ACTIVE
		
		if (moveZ <= .45 && moveZ >= -.45 && moveX <= .45 && moveX >= -.45 ){
			//print("walking");
			particlesDust.GetComponent<ParticleSystem>().enableEmission = false;
		}
		
		if (moveZ > .45 || moveZ < -.45 || moveX > .45 || moveX < -.45){
			//print("running");
			particlesDust.GetComponent<ParticleSystem>().enableEmission = true;
		}
		
		//pos = transform.localPosition;
		//pos = transform.position;
		
		/*
		if(Input.GetAxis(KeyCode.D)){
			pos.x += playerXSpeed*Time.deltaTime;
			transform.localPosition = pos;	
			
				}
		
		if(Input.GetKey(KeyCode.A)){
			pos.x -= playerXSpeed*Time.deltaTime;
			transform.localPosition = pos;	
				}
		
		if(Input.GetKey(KeyCode.W)){
			pos.z += playerXSpeed*Time.deltaTime;
			transform.localPosition = pos;	
				}
		
		if(Input.GetKey(KeyCode.S)){
			pos.z -= playerXSpeed*Time.deltaTime;
			transform.localPosition = pos;	
				}
		
		if(Input.GetKey(KeyCode.Z)){
			print ("you pressed the z key!!!");	
				}*/
	
			}
	/*	
	void OnCollisionEnter(Collision col) {
		Debug.Log("Any Collision A51");
		/*if (col.gameObject.name == "Grass(Clone)"){
			GameObject obj = col.gameObject; 
			//print("cube");
			//Sends message to Plant's script Plant_Crush to activate function Crushed
			
			if (buttonDown == true){
				//crush = Input.GetAxis("A_Button");
				
				
				if (obj.GetComponent<Plant_Crush>() != null){
					obj.GetComponent<Plant_Crush>().Crushed();
				}
			}
			
		}*/
		
	//}
		
		
	}
	
	/*public class MoveForwardBackward : MonoBehaviour {
    void Update() {
        if (Input.GetKeyDown("right"))
            print("space key was pressed");
        
    }
}
    */

 

