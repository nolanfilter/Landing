using UnityEngine;
using System.Collections;

public class AlienAnim : MonoBehaviour {

	Animator anim;
	float moveZ;
	bool fullSpeed;

	// Use this for initialization
	void Start () {
		anim = this.GetComponent<Animator>();
		fullSpeed = true;
	}
	
	// Update is called once per frame
	void Update () {

		anim.SetFloat("WalkSpeed", moveZ);

		if (fullSpeed) anim.speed = 1.5f;
		else anim.speed = moveZ + .2f; //crush is not playing
	}

	public void SetSpeed(float _moveZ){
		moveZ = _moveZ;
		//print (moveZ);

		if (moveZ < 0){
			moveZ *= -1;
		}
	}

	public void PlayCrush(){
		anim.SetTrigger("Crush");
		anim.speed = 1.5f;
	}

	public void SetFullSpeed(){
		fullSpeed = true;
	}

	public void SetVariableSpeed(){
		fullSpeed = false;
	}

	public void Hit(){
		anim.SetTrigger ("Hit");
		anim.speed = .1f;
	}
}
