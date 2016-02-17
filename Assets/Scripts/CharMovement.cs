using UnityEngine;
using System.Collections;

public class CharMovement : MonoBehaviour {
	
	//public float speed = 10.0F;
    public float rotationSpeed;
	public float playerXspeed;
	Vector3 pos;

	public float moveZ;
	public float moveX;

	public GameObject particlesDust;
	public GameObject alienCutout;

	public GameObject alienGizmo;
	public GameObject alienGizmoPS;
	float countdownG ;

	GameObject grass;

	public GameObject decoy;
	public GameObject decoyPart;

	bool activeClone = false;

	public float maxX;
	public float minX;
	public float maxZ;
	public float minZ;

	public AudioClip DecoyDeploymentSound;



	//this is a new comment
	
	// Use this for initialization
	void Start () {	
		countdownG = 0;
		alienGizmo.GetComponent<Renderer>().enabled = false;
		//alienGizmoPS.renderer.enabled = false;
		//alienGizmoPS.ParticleSystem.Play(false);
		//alienGizmoPS.GetComponent<ParticleSystem>().Play(false);
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
		}

		if(countdownG <= 0){
			alienGizmo.GetComponent<Renderer>().enabled = false;

			//alienGizmoPS.GetComponent<ParticleSystem>().Clear(true);
			//alienGizmoPS.SetActive(false);
		}

		if (Input.GetButtonDown("X_Button") && countdownG <= 0){
			Debug.Log("x");
			alienGizmo.GetComponent<Renderer>().enabled = true;
			countdownG = 1f * Time.deltaTime;

			alienGizmoPS.SetActive(true);
			alienGizmoPS.GetComponent<ParticleSystem>().Play(true);
			foreach (GameObject grass in GameObject.FindGameObjectsWithTag("Grass")) {
				//grass = GameObject.Find("Grass(Clone)");
				grass.SendMessage("ChangeLayer");
				//grass.tag = "Grass";
			}



		}
		
		moveZ = Input.GetAxis("LJoy Y") * playerXspeed;
		moveX = Input.GetAxis("LJoy X") * playerXspeed;
		
		moveZ *= Time.deltaTime;
		moveX *= Time.deltaTime;
		transform.Translate(moveX, 0, moveZ);
		
		float rotationY = Input.GetAxis("RJoy X") * rotationSpeed;
		rotationY *= Time.deltaTime;
		transform.Rotate (0, rotationY, 0);

		alienCutout.SendMessage("SetSpeed", moveZ, SendMessageOptions.DontRequireReceiver);
		
		//GameObject.particleEmitter.emit = true;
		//particlesystem.enableEmission = false;

		//CHECKS SPEED AND SETS DUST PARTICLES ACTIVE

		if (moveZ <= .45 && moveZ >= -.45 && moveX <= .45 && moveX >= -.45 ){
			//print("walking");
			particlesDust.GetComponent<ParticleSystem>().enableEmission = false;
		}

		if (moveZ > .45 || moveZ < -.45 || moveX > .45 || moveX < -.45){
			//print("running");
			particlesDust.GetComponent<ParticleSystem>().enableEmission = true;
		}



		////// CREATE DECOY
		if (Input.GetButtonDown("L_Bumper")){
			//Debug.Log("x");
			if (activeClone==false){
				GetComponent<AudioSource>().PlayOneShot(DecoyDeploymentSound);
				GameObject clone = Instantiate(decoy, new Vector3(transform.position.x,
			                                                transform.position.y-1,
			                                                transform.position.z),
			                    			Quaternion.identity) as GameObject;

				GameObject clonePart = Instantiate(decoyPart, new Vector3(transform.position.x,
			                                                  	transform.position.y,
			                                                  	transform.position.z),
			                               Quaternion.identity) as GameObject;
				clonePart.tag = "DustDecoy";
				//clonePart.transform.Rotate  (270,0,0);
			//clone.transform.Rotate  (270,0,0);
				activeClone = true;
			}
		}




	}

	public void ActiveClone(){
		activeClone = false;
	}


		
		//Input.GetAxis("Horizontal") * playerXSpeed * Time.deltaTime;
		
}
	
	/*public class MoveForwardBackward : MonoBehaviour {
    void Update() {
        if (Input.GetKeyDown("right"))
            print("space key was pressed");
        
    }
}
    */

 

