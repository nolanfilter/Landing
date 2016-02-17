using UnityEngine;
using System.Collections;

public class GrassSpawner : MonoBehaviour {

	public int side;
	public int side2;

	float rotY = 0f;

	float zPos;
	float xPos;

	public static bool grassGenerated;

	public GameObject longGrass;
	// Use this for initialization

	void Awake(){
		grassGenerated = false;
	}

	void Start () {
		StartCoroutine(GenerateGrass());

	
	}
	IEnumerator GenerateGrass(){
		GameObject clone;
		
		for (int f=side; f>0; f-= 1){
			for(int i=side2; i>0; i -= 1){
				clone = Instantiate(longGrass, new Vector3(transform.position.x + xPos,
				                                           transform.position.y,
				                                           transform.position.z + zPos),
				                    Quaternion.identity) as GameObject;
				clone.transform.Rotate  (0,rotY,0);
				rotY += 90f;
				xPos +=2.7f;
				if (rotY >= 360){
					rotY=0f;
				}
			}
			xPos = 0f;
			zPos += 2.7f;
			yield return null;
		}
		grassGenerated = true;
	}
	
	// Update is called once per frame
	void Update () {


	
	}
}
