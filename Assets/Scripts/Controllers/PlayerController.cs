using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {

    public GameObject gizmoParticleSystemPrefab;

    //public float speed = 10.0F;
    public float rotationSpeed;
    public float playerXspeed;
    Vector3 pos;

    private float moveZ;
    private float moveX;
   
    public GameObject particlesDust;
    public GameObject modelObject;

    public GameObject gizmoObject;
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

    private InputController inputController;
    private Vector2 movementVector = Vector2.zero;
    private float yRotation = 0f;

    void Awake()
    {
        inputController = GetComponent<InputController>();

        if( inputController == null )
        {
            Debug.LogError( "No input controller on " + gameObject.name );
            enabled = false;
        }
    }

    void OnEnable()
    {
        inputController.OnButtonDown += OnButtonDown;
        inputController.OnButtonHeld += OnButtonHeld;
        inputController.OnButtonUp += OnButtonUp;
    }

    void OnDisable()
    {
        inputController.OnButtonDown -= OnButtonDown;
        inputController.OnButtonHeld -= OnButtonHeld;
        inputController.OnButtonUp -= OnButtonUp;
    }

    void Start ()
    {   
        countdownG = 0;
        gizmoObject.GetComponent<Renderer>().enabled = false;
    }


    void Update ()
    {
        if( countdownG != 0 )
        {
            countdownG = Mathf.MoveTowards( countdownG, 0f, 0.1f );

            if( countdownG == 0 )
            {
                gizmoObject.GetComponent<Renderer>().enabled = false;
            }
        }

        // CHECKS SPEED AND SETS DUST PARTICLES ACTIVE
        modelObject.SendMessage("SetSpeed", movementVector.y, SendMessageOptions.DontRequireReceiver);

        if( movementVector.y <= .45 && movementVector.y >= -.45 && movementVector.y <= .45 && movementVector.y >= -.45 ){
            //print("walking");
            particlesDust.GetComponent<ParticleSystem>().enableEmission = false;
        }
        else
        {
            //print("running");
            particlesDust.GetComponent<ParticleSystem>().enableEmission = true;
        }

        if( movementVector != Vector2.zero )
        {
            transform.Translate( movementVector.x, 0, movementVector.y );
            movementVector = Vector2.zero;

            ConstrainMovement();
        }

        if( yRotation != 0f )
        {
            transform.Rotate ( 0, yRotation, 0 );
            yRotation = 0f;
        }
    }

    public void ActiveClone(){
        activeClone = false;
    }

    private void ConstrainMovement()
    {
        if (transform.position.x >= maxX-1f){
            transform.position = new Vector3(maxX-1.1f,transform.position.y,transform.position.z);
        } else if (transform.position.x < minX+1f){
            transform.position = new Vector3(minX+1.1f,transform.position.y,transform.position.z);
        } else if(transform.position.z > maxZ-1f){
            transform.position = new Vector3(transform.position.x,transform.position.y,maxZ-1.1f);
        } else if (transform.position.z < minZ+1f){
            transform.position = new Vector3(transform.position.x,transform.position.y,minZ+1.1f);
        }
    }

    private void EvaluateMovement( InputController.ButtonType button )
    {
        switch( button )
        {
        case InputController.ButtonType.Up: 
            {
                movementVector += Vector2.up * playerXspeed * Time.deltaTime;
            } break;

        case InputController.ButtonType.Down: 
            {
                movementVector -= Vector2.up * playerXspeed * Time.deltaTime;
            } break;

        case InputController.ButtonType.Left: 
            {
                movementVector -= Vector2.right * playerXspeed * Time.deltaTime;
            } break;

        case InputController.ButtonType.Right: 
            {
                movementVector += Vector2.right * playerXspeed * Time.deltaTime;
            } break;
        }
    }

    private void EvaluateView( InputController.ButtonType button )
    {
        switch( button )
        {
        case InputController.ButtonType.RLeft: 
            {
                yRotation -= 1f * rotationSpeed * Time.deltaTime;
            } break;

        case InputController.ButtonType.RRight:
            {
                yRotation += 1f * rotationSpeed * Time.deltaTime;
            } break;
        }
    }

    //event handlers
    private void OnButtonDown( InputController.ButtonType button )
    {   
        EvaluateMovement( button );
        EvaluateView( button );

        switch( button )
        {
        case InputController.ButtonType.X:
            {
                // REVEAL PROGRESS
                if( countdownG == 0f )
                {
                    gizmoObject.GetComponent<Renderer>().enabled = true;
                    //TO DO change to coroutine
                    countdownG = 1f * Time.deltaTime;

                    StartCoroutine( "DoGizmoParticleEffect" );

                    /*
                    foreach( GameObject grass in GameObject.FindGameObjectsWithTag( "Grass" ) )
                    {
                        //grass = GameObject.Find("Grass(Clone)");
                        grass.SendMessage( "ChangeLayer" );
                        //grass.tag = "Grass";
                    }
                    */
                }
            } break;

        case InputController.ButtonType.LeftShoulder:
            {
                // PLAYER SPECIFIC CODE
                if( inputController.currentPlayerNumber == InputController.PlayerNumber.Player1 )
                {
                    // CREATE DECOY
                    if( activeClone == false )
                    {
                        GetComponent<AudioSource>().PlayOneShot( DecoyDeploymentSound );
                        GameObject clone = Instantiate( decoy, new Vector3( transform.position.x,
                                               transform.position.y - 1,
                                               transform.position.z ),
                                           Quaternion.identity ) as GameObject;

                        GameObject clonePart = Instantiate( decoyPart, new Vector3( transform.position.x,
                                                   transform.position.y,
                                                   transform.position.z ),
                                               Quaternion.identity ) as GameObject;
                        clonePart.tag = "DustDecoy";
                        //clonePart.transform.Rotate  (270,0,0);
                        //clone.transform.Rotate  (270,0,0);
                        activeClone = true;
                    }
                    // END CREATE DECOY
                }
                // END PLAYER SPECIFIC CODE
            } break;
        }
    }

    private void OnButtonHeld( InputController.ButtonType button )
    {   
        EvaluateMovement( button );
        EvaluateView( button );
    }

    private void OnButtonUp( InputController.ButtonType button )
    {

    }   
    //end event handlers    

    private IEnumerator DoGizmoParticleEffect()
    {
        if( gizmoParticleSystemPrefab == null )
            yield break;

        GameObject go = Instantiate( gizmoParticleSystemPrefab, transform.position, Quaternion.AngleAxis( -90f, Vector3.right ) ) as GameObject;

        ParticleSystem particleSystem = go.GetComponent<ParticleSystem>();

        if( particleSystem )
        {
            yield return new WaitForSeconds( particleSystem.duration );
        }

        Destroy( go );
    }
}
