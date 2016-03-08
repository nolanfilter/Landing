using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {
	
	public static int plantsToCrush;

	int plantsToCrushEndPerc;
	int plantsToCrush25;
	int plantsToCrush50;
	int plantsToCrush75;
	public Texture2D wifi1, wifi2, wifi3, wifi4, callStatus2;
	public GUITexture guiWIFI;
	public GUITexture guiCALLstatus;

	bool showGrassGizmo1 = true;
	bool showGrassGizmo2 = true;
	bool showGrassGizmo3 = true;
	bool showGrassGizmo4 = true;

	bool crushPercent = false;
	//int counter = 30;
	public GameObject finish;

	public GameObject alien;
	public GameObject a51;
	public GameObject mothership;

	public GameObject mapCamera;

	public GameObject tutAlien, tutA51;

	public AudioClip PowerUp;
	void Awake(){
		plantsToCrush = 0;
	}

	void Start () {
		//plantsToCrushPerc = plantsToCrush * .2F;
		finish.SetActive(false);
		StartCoroutine ("RemoveTut",0);
		//StartCoroutine("Suicide");

	}
	void CalculatePercentages(){
		if (crushPercent == false){
			
			plantsToCrush25 = (int) (plantsToCrush*.75f);
			plantsToCrush50 = (int) (plantsToCrush*.50f);
			plantsToCrush75 = (int) (plantsToCrush *.25f);
			plantsToCrushEndPerc =(int) (plantsToCrush * .10F);
			//counter --;
			//if(counter <= 0){
				crushPercent = true;
				//Debug.Log (plantsToCrush +" plant to crush");
				//Debug.Log (plantsToCrushEndPerc +" percentage");
			//}
		}
	}

	void Update () {
		//Debug.Log ("FINISH");
		//print(plantsToCrush);
		//print (plantsToCrush);
		//Debug.Log(plantsToCrush.ToString() + " plants left");
		if(Input.GetKeyDown(KeyCode.Escape)){
			Application.Quit(); }

        /*
		if(Input.GetKeyDown(KeyCode.W)){
			mothership.SetActive(true);
			finish.SetActive(true);
			alien.SendMessage("ChangeWinner");
			a51.SendMessage ("ChangeWinner");
		}
  */      

		if (GrassSpawner.grassGenerated && crushPercent == false){
			CalculatePercentages();
		}
		if (plantsToCrush <= plantsToCrush25 && plantsToCrush > plantsToCrush50){
			//finish.SetActive(true);

			if(showGrassGizmo1){
				GetComponent<AudioSource>().Play();
				Debug.Log ("1st Img wifi");
				Debug.Log (plantsToCrush);
				guiWIFI.texture = wifi1;
				foreach (GameObject grass in GameObject.FindGameObjectsWithTag("Grass")) {
					grass.SendMessage("ChangeLayer");
				}
				showGrassGizmo1 = false;
			}
		}

		else if (plantsToCrush <= plantsToCrush50 && plantsToCrush > plantsToCrush75){
			//finish.SetActive(true);

			if(showGrassGizmo2){
				GetComponent<AudioSource>().Play();
				Debug.Log ("2nd Img wifi");
				Debug.Log (plantsToCrush);
				guiWIFI.texture = wifi2;
				foreach (GameObject grass in GameObject.FindGameObjectsWithTag("Grass")) {
					grass.SendMessage("ChangeLayer");
				}
				showGrassGizmo2 = false;
			}
		}

		else if (plantsToCrush <= plantsToCrush75 && plantsToCrush > plantsToCrushEndPerc){
			//finish.SetActive(true);
			//Debug.Log ("3nd Img wifi");
			//Debug.Log (plantsToCrush);

			if(Input.GetButtonDown("A_Button")){
				mothership.SetActive(true);
				finish.SetActive(true);
				alien.SendMessage("ChangeWinner");
				a51.SendMessage ("ChangeWinner");
			}

			if(showGrassGizmo3){
				GetComponent<AudioSource>().Play();
				Debug.Log ("3d Img wifi");
				guiWIFI.texture = wifi3;
				guiCALLstatus.texture = callStatus2;
				foreach (GameObject grass in GameObject.FindGameObjectsWithTag("Grass")) {
					grass.SendMessage("ChangeLayer");
				}
				showGrassGizmo3 = false;
			}
		} else if (plantsToCrush < plantsToCrushEndPerc){
			//Debug.Log ("4d Img wifi");
			if(Input.GetButtonDown("A_Button")){
				mothership.SetActive(true);
				finish.SetActive(true);
				alien.SendMessage("ChangeWinner");
				a51.SendMessage ("ChangeWinner");
			}
			if(showGrassGizmo4){
				GetComponent<AudioSource>().Play();
				foreach (GameObject grass in GameObject.FindGameObjectsWithTag("Grass")) {
					grass.SendMessage("ChangeLayer");
				}
				//Debug.Log ("4th img FINISH");
				//Debug.Log (plantsToCrush);
				guiWIFI.texture = wifi4;
				showGrassGizmo4 = false;
			}
		}

	}

	public void AlienGrabbed(){
		finish.SetActive(true);
	}

	void ShowAlienGizmo(){
		//showAlienGizmo = true;
	}

	IEnumerator RemoveTut(){
		yield return new WaitForSeconds(6f);
		tutAlien.SetActive(false);
		tutA51.SetActive(false);
	}



}