using UnityEngine;
using System.Collections;

public class LongGrassAnim : MonoBehaviour {

	Animator anim;

	// Use this for initialization
	void Start () {
		anim = this.GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {


	
	}

	public void PlayMove(){
		anim.SetTrigger("Move");
		//anim.speed = 1.5f;
	}
}
