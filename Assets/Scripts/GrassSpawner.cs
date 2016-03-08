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

    private string[] board;

	void Awake(){
		grassGenerated = false;

        board = new string[ side ];
	}

	void Start () {
		StartCoroutine(GenerateGrass());

	
	}
	IEnumerator GenerateGrass(){
		GameObject clone;
        int layerMask = 1 << LayerMask.NameToLayer( "CropCircle" );

		for (int f=side; f>0; f-= 1){
			for(int i=side2; i>0; i -= 1){
                Vector3 position = new Vector3( transform.position.x + xPos,
                                       transform.position.y,
                                       transform.position.z + zPos );

				clone = Instantiate(longGrass, position,
				                    Quaternion.identity) as GameObject;
				clone.transform.Rotate  (0,rotY,0);

                int x = side - f;
                int y = side2 - i;

                clone.name = "corn (" + x + "," + y + ")";
				rotY += 90f;
				xPos +=2.7f;
				if (rotY >= 360){
					rotY=0f;
				}

                int numColliders = Physics.OverlapSphere( position, 1.35f, layerMask ).Length;

                board[ f - 1 ] += "" + numColliders;

                /*
                if( numColliders != 0 )
                {
                    clone.SetActive( false );
                }
                */
			}
			xPos = 0f;
			zPos += 2.7f;
			yield return null;
		}
		grassGenerated = true;


        string layout = "";
        for( int i = 0; i < board.Length; i++ )
        {
            layout += board[ i ] + "\n";
        }

        Debug.Log( layout );
	}
	
	// Update is called once per frame
	void Update () {


	
	}
}
