using UnityEngine;
using System.Collections;

public class CharAlienFlashlight : MonoBehaviour {
	Vector3 currPos;

	public GameObject alienStunned,alienCutOut,alienGrabbed;
	public Texture2D lives2, lives1, lives0;

	public float freezeSeconds;
	public float freezeCountDown;
	int freezeEffect=1;

	public GameObject cameraAlien;

	float counter = 0;

	bool loser = false;
	bool grabbed = false;
	bool winner = false;
	bool elevate =false;
	float moveY;

	Vector3 startPoint;
	int lives = 2;
	bool invoke = true;

	public GameObject gameManager;
	public GameObject alienTrapped;

	public GUITexture alienFinish, a51Finish, uiLives;
	Color textureColorWin;
	Color textureColorLose;

	public string levelToLoad = "START";

	public AudioClip StunnedSound;
	public AudioClip TrappedSound;


	// Use this for initialization
	void Start () {
		alienStunned.SetActive(false);
		startPoint = transform.position;

		textureColorWin = alienFinish.color;
		textureColorLose = a51Finish.color;

		textureColorWin.a = 0f;
		textureColorLose.a = 0f;
		alienFinish.color = textureColorWin;
		a51Finish.color = textureColorLose;
	}
	
	// Update is called once per frame
	void Update () {


		//Debug.Log (textureColorWin.a);

		if (counter > 0){
			counter -= freezeCountDown * Time.deltaTime;
			transform.position = currPos;

			if(grabbed){
				GetComponent<AudioSource>().clip = TrappedSound;
				GetComponent<AudioSource>().Play();
				Debug.Log("ALIEN GRABBED");
				currPos = transform.position;
				if(invoke){
					GameObject clone = Instantiate(alienTrapped, new Vector3(transform.position.x,
					                                           transform.position.y,
					                                           transform.position.z),
					                    Quaternion.identity) as GameObject;
					alienStunned.SetActive (false);
					if(lives == 0){
						loser = true;
					} else {
						StartCoroutine("Spawn");
						//StartCoroutine ("Ungrab");
					}
					invoke = false;
					cameraAlien.SendMessage("ShakeMe");
					counter = 3;
				}

				//grabbed = false;
			}
			//print (counter);
		} else {
			grabbed = false;
			alienStunned.SetActive(false);
			alienCutOut.SetActive(true);
		}

		if(loser){
//			Debug.Log("ALIEN STAY IN POS");
			Invoke ("StickToPosition",0);
			alienStunned.SetActive(true);
			alienCutOut.SetActive(false);
			gameManager.SendMessage("AlienGrabbed");
			textureColorLose.a += .3f * Time.deltaTime;
			a51Finish.color = textureColorLose;
			if (lives == -1){uiLives.texture = lives0;}
			if(Input.GetButtonDown("Start_Button")){
				Application.LoadLevel (levelToLoad);
			}
		}

        /*
		if(Input.GetKeyDown(KeyCode.W)){winner = true;}
		if(winner){
			Invoke ("StickToPosition",0);
			cameraAlien.SendMessage ("LookAtMothership");
			if(elevate){ Invoke ("Elevate",0); }
			if(Input.GetButtonDown("Start_Button")){
				Application.LoadLevel (levelToLoad);
			}
		}
  */      

		cameraAlien.SendMessage("Activate_Bloom", counter);
	}
	void OnTriggerEnter(Collider col) {
		if (col.gameObject.name == "cone1"){
			 
			if (counter <= 0){
				GetComponent<AudioSource>().PlayOneShot(StunnedSound);
				currPos = transform.position;
				counter = freezeSeconds * freezeEffect;
				alienStunned.SetActive(true);
				alienCutOut.SetActive(false);
				cameraAlien.SendMessage("ShakeMe");
				freezeEffect ++;


				//counter = 0;
				//print("cone");
			}

			
		}
		
	}

	void Grabbed(bool _grab){
		grabbed = _grab;
	}

	public void ChangeElevate(){
		elevate = true;
	}

	public void ChangeWinner(){
		Debug.Log ("changed winner");
		winner = true;
	}

	void StickToPosition(){
		transform.position = new Vector3 (currPos.x, transform.position.y, currPos.z);
	}

	void Elevate(){
		moveY += .001f;
		if(transform.position.y < 50){
			transform.position = new Vector3 (currPos.x, transform.position.y + moveY, currPos.z);
		}
//		alienFinish.SetActive(true);
		textureColorWin.a += .09f * Time.deltaTime;
		alienFinish.color = textureColorWin;
	}

	IEnumerator Spawn(){
		yield return new WaitForSeconds(3f);
		//tutAlien.SetActive(false);
		Debug.Log(uiLives);
		freezeEffect =1;
		invoke = true;
		lives --;
		counter = 0;
		grabbed = false;

		if(lives == 1){uiLives.texture = lives2;}
		else if (lives == 0){uiLives.texture = lives1;}


		transform.position = startPoint;

	}
}
