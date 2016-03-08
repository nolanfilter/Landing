using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public class InputController : MonoBehaviour {

    public bool debug = false;

    public delegate void ButtonDownEventHandler( InputController.ButtonType button );
    public event ButtonDownEventHandler OnButtonDown;

    public delegate void ButtonHoldEventHandler( InputController.ButtonType button );
    public event ButtonHoldEventHandler OnButtonHeld;

    public delegate void ButtonUpEventHandler( InputController.ButtonType button );
    public event ButtonUpEventHandler OnButtonUp;

    public enum PlayerNumber
    {
        Player1 = 0,
        Player2 = 1,
        Invalid = 2,
    }
    public PlayerNumber currentPlayerNumber = PlayerNumber.Invalid;

    public enum ButtonType
    {
        Up = 0,
        Down = 1,
        Left = 2,
        Right = 3,
        L3 = 4,
        RUp = 5,
        RDown = 6,
        RLeft = 7,
        RRight = 8,
        R3 = 9,
        LeftShoulder = 10,
        LeftTrigger = 11,
        RightShoulder = 12,
        RightTrigger = 13,
        A = 14,
        B = 15,
        X = 16,
        Y = 17,
        Start = 18,
        Select = 19,
        Invalid = 20,
    }

    private string verticalAxisString;
    private string horizontalAxisString;
    private string rVerticalAxisString;
    private string rHorizontalAxisString;
    private string leftTriggerAxisString;
    private string rightTriggerAxisString;

    private KeyCode[] codes = new KeyCode[ Enum.GetNames( typeof( ButtonType ) ).Length - 1 ];

    private Array buttonTypes = Enum.GetValues( typeof( ButtonType ) );

    private Dictionary<ButtonType, bool> currentButtonList  = new Dictionary<ButtonType, bool>();
    private Dictionary<ButtonType, bool> oldButtonList = new Dictionary<ButtonType, bool>();

    //TO DO reevaluate string input type
    private static String KeyboardInputString = "Keyboard"; 

    private String currentInputType = "Invalid";

    void Awake()
    {
        if( currentPlayerNumber == PlayerNumber.Invalid )
        {
            Debug.LogError( "Player Number on " + gameObject.name + " not set!" );
            enabled = false;
            return;
        }

        CheckInputType();
    }

    void Update()
    {
        float verticalAxis = Input.GetAxisRaw( verticalAxisString );
        float horizontalAxis = Input.GetAxisRaw( horizontalAxisString );

        currentButtonList[ ButtonType.Up ] = verticalAxis > 0f;
        currentButtonList[ ButtonType.Right ] = horizontalAxis > 0f;
        currentButtonList[ ButtonType.Down ] = verticalAxis < 0f;
        currentButtonList[ ButtonType.Left ] = horizontalAxis < 0f;

        float rVerticalAxis = Input.GetAxisRaw( rVerticalAxisString );
        float rHorizontalAxis = Input.GetAxisRaw( rHorizontalAxisString );

        currentButtonList[ ButtonType.RUp ] = rVerticalAxis > 0f;
        currentButtonList[ ButtonType.RRight ] = rHorizontalAxis > 0f;
        currentButtonList[ ButtonType.RDown ] = rVerticalAxis < 0f;
        currentButtonList[ ButtonType.RLeft ] = rHorizontalAxis < 0f;

        currentButtonList[ ButtonType.LeftTrigger ] = ( Input.GetAxisRaw( leftTriggerAxisString ) > 0f );
        currentButtonList[ ButtonType.RightTrigger ] = ( Input.GetAxisRaw( rightTriggerAxisString ) > 0f );

        for( int i = 0; i < codes.Length; i++ )
        {
            if( i == (int)ButtonType.Up || i == (int)ButtonType.Right || i == (int)ButtonType.Down || i == (int)ButtonType.Left ||
                i == (int)ButtonType.RUp || i == (int)ButtonType.RRight || i == (int)ButtonType.RDown || i == (int)ButtonType.RLeft ||
                i == (int)ButtonType.LeftTrigger || i == (int)ButtonType.RightTrigger )
            {
                currentButtonList[ (ButtonType)i ] = currentButtonList[ (ButtonType)i ] || Input.GetKey( codes[ i ] );
            }
            else
            {
                currentButtonList[ (ButtonType)i ] = Input.GetKey( codes[ i ] );
            }
        }

        foreach( ButtonType button in buttonTypes )
        {
            if( currentButtonList[ button ] )
            {
                if( oldButtonList[ button ] )
                    SendHeldEvent( button );
                else
                    SendDownEvent( button );
            }
            else
            {
                if( oldButtonList[ button ] )
                    SendUpEvent( button );
            }

            oldButtonList[ button ] = currentButtonList[ button ];
        }

        // TO DO more check for disconnections etc
        //CheckInputType();
    }

    void OnGUI()
    {
        if( !debug )
            return;

        float xPos = 10f + Screen.width * 0.5f * (int)currentPlayerNumber;

        if( Input.GetJoystickNames().Length > 0 )
        {
            GUI.Label( new Rect( xPos, 10f, 500f, 500f ), "" + currentPlayerNumber );
        }
        else
        {
            GUI.Label( new Rect( xPos, 10f, 500f, 500f ), "No joystick found" );
        }

        GUI.Label( new Rect( xPos, 30f, 500f, 500f ), "Current input type = " + currentInputType );

        float height = 50f;

        foreach( ButtonType button in buttonTypes )
        {
            if( currentButtonList[ button ] )
            {
                GUI.Label( new Rect( xPos, height, 500f, 500f ), "" + button + " held" );

                height += 20f;
            }
        }
    }

    private void CheckInputType()
    {
        int number = (int)currentPlayerNumber;

        if( Application.platform == RuntimePlatform.OSXPlayer || Application.platform == RuntimePlatform.OSXEditor )
        {
            verticalAxisString = "Vertical Mac " + number;
            horizontalAxisString = "Horizontal Mac " + number;
            rVerticalAxisString = "RVertical Mac " + number;
            rHorizontalAxisString = "RHorizontal Mac " + number;
            leftTriggerAxisString = "Left Trigger Mac " + number;
            rightTriggerAxisString = "Right Trigger Mac " + number;
        }
        else if( Application.platform == RuntimePlatform.WindowsPlayer || Application.platform == RuntimePlatform.WindowsEditor )
        {
            verticalAxisString = "Vertical PC " + number;
            horizontalAxisString = "Horizontal PC " + number;
            rVerticalAxisString = "RVertical PC " + number;
            rHorizontalAxisString = "RHorizontal PC " + number;
            leftTriggerAxisString = "Left Trigger PC " + number;
            rightTriggerAxisString = "Right Trigger PC " + number;
        }
          
        if( ( Input.GetJoystickNames().Length > number && currentInputType != Input.GetJoystickNames()[ number ] ) ||
            ( Input.GetJoystickNames().Length == 0 && currentInputType != KeyboardInputString ) )
        {
            if( Input.GetJoystickNames().Length > number && Input.GetJoystickNames()[ number ] != "" )
            {
                switch( Input.GetJoystickNames()[ number ] )
                {
                    //PS3
                    case "Sony PLAYSTATION(R)3 Controller":
                    {

                    } break;

                    //PS4
                    case "Sony Computer Entertainment Wireless Controller":
                    {

                    } break;

                    //SNES
                    case " 2Axes 11Keys Game  Pad":
                    {

                    } break;

                    //XBOX 360 on Windows
                    case "Controller (XBOX 360 For Windows)":
                    {
                        codes[ (int)ButtonType.Up ] = (KeyCode)( (int)KeyCode.Joystick1Button19 + number * 20 );
                        codes[ (int)ButtonType.Down ] = (KeyCode)( (int)KeyCode.Joystick1Button19 + number * 20 );
                        codes[ (int)ButtonType.Left ] = (KeyCode)( (int)KeyCode.Joystick1Button19 + number * 20 );
                        codes[ (int)ButtonType.Right ] = (KeyCode)( (int)KeyCode.Joystick1Button19 + number * 20 );
                        codes[ (int)ButtonType.RUp ] = (KeyCode)( (int)KeyCode.Joystick1Button19 + number * 20 );
                        codes[ (int)ButtonType.RDown ] = (KeyCode)( (int)KeyCode.Joystick1Button19 + number * 20 );
                        codes[ (int)ButtonType.RLeft ] = (KeyCode)( (int)KeyCode.Joystick1Button19 + number * 20 );
                        codes[ (int)ButtonType.RRight ] = (KeyCode)( (int)KeyCode.Joystick1Button19 + number * 20 );
                        codes[ (int)ButtonType.L3 ] = (KeyCode)( (int)KeyCode.Joystick1Button19 + number * 20 );
                        codes[ (int)ButtonType.LeftTrigger ] = (KeyCode)( (int)KeyCode.Joystick1Button19 + number * 20 );
                        codes[ (int)ButtonType.R3 ] = (KeyCode)( (int)KeyCode.Joystick1Button9 + number * 20 );
                        codes[ (int)ButtonType.RightTrigger ] = (KeyCode)( (int)KeyCode.Joystick1Button19 + number * 20 );
                        codes[ (int)ButtonType.LeftShoulder ] = (KeyCode)( (int)KeyCode.Joystick1Button4 + number * 20 );
                        codes[ (int)ButtonType.RightShoulder ] = (KeyCode)( (int)KeyCode.Joystick1Button5 + number * 20 );

                        codes[ (int)ButtonType.Start ] = (KeyCode)( (int)KeyCode.Joystick1Button7 + number * 20 );
                        codes[ (int)ButtonType.A ] = (KeyCode)( (int)KeyCode.Joystick1Button0 + number * 20 );
                        codes[ (int)ButtonType.B ] = (KeyCode)( (int)KeyCode.Joystick1Button1 + number * 20 );
                        codes[ (int)ButtonType.X ] = (KeyCode)( (int)KeyCode.Joystick1Button2 + number * 20 );
                        codes[ (int)ButtonType.Y ] = (KeyCode)( (int)KeyCode.Joystick1Button3 + number * 20 );
                      } break;

                    //XBOX 360 on OSX
                    case "©Microsoft Corporation Controller": case "©Microsoft Corporation Xbox 360 Wired Controller":
                    {
                        codes[ (int)ButtonType.Up ] = (KeyCode)( (int)KeyCode.Joystick1Button5 + number * 20 );
                        codes[ (int)ButtonType.Down ] = (KeyCode)( (int)KeyCode.Joystick1Button6 + number * 20 );
                        codes[ (int)ButtonType.Left ] = (KeyCode)( (int)KeyCode.Joystick1Button7 + number * 20 );
                        codes[ (int)ButtonType.Right ] = (KeyCode)( (int)KeyCode.Joystick1Button8 + number * 20 );
                        codes[ (int)ButtonType.RUp ] = (KeyCode)( (int)KeyCode.Joystick1Button0 + number * 20 );
                        codes[ (int)ButtonType.RDown ] = (KeyCode)( (int)KeyCode.Joystick1Button0 + number * 20 );
                        codes[ (int)ButtonType.RLeft ] = (KeyCode)( (int)KeyCode.Joystick1Button0 + number * 20 );
                        codes[ (int)ButtonType.RRight ] = (KeyCode)( (int)KeyCode.Joystick1Button0 + number * 20 );
                        codes[ (int)ButtonType.L3 ] = (KeyCode)( (int)KeyCode.Joystick1Button11 + number * 20 );
                        codes[ (int)ButtonType.LeftTrigger ] = (KeyCode)( (int)KeyCode.Joystick1Button0 + number * 20 );
                        codes[ (int)ButtonType.R3 ] = (KeyCode)( (int)KeyCode.Joystick1Button12 + number * 20 );
                        codes[ (int)ButtonType.RightTrigger ] = (KeyCode)( (int)KeyCode.Joystick1Button0 + number * 20 );
                        codes[ (int)ButtonType.LeftShoulder ] = (KeyCode)( (int)KeyCode.Joystick1Button13 + number * 20 );
                        codes[ (int)ButtonType.RightShoulder ] = (KeyCode)( (int)KeyCode.Joystick1Button14 + number * 20 );

                        codes[ (int)ButtonType.Select ] = (KeyCode)( (int)KeyCode.Joystick1Button10 + number * 20 );
                        codes[ (int)ButtonType.Start ] = (KeyCode)( (int)KeyCode.Joystick1Button9 + number * 20 );
                        codes[ (int)ButtonType.A ] = (KeyCode)( (int)KeyCode.Joystick1Button16 + number * 20 );
                        codes[ (int)ButtonType.B ] = (KeyCode)( (int)KeyCode.Joystick1Button17 + number * 20 );
                        codes[ (int)ButtonType.X ] = (KeyCode)( (int)KeyCode.Joystick1Button18 + number * 20 );
                        codes[ (int)ButtonType.Y ] = (KeyCode)( (int)KeyCode.Joystick1Button19 + number * 20 );
                    } break;
                }

                currentInputType = Input.GetJoystickNames()[ number ];
            }
            else
            {
                codes[ (int)ButtonType.Up ] = KeyCode.W;
                codes[ (int)ButtonType.Down ] = KeyCode.S;
                codes[ (int)ButtonType.Left ] = KeyCode.A;
                codes[ (int)ButtonType.Right ] = KeyCode.D;
                codes[ (int)ButtonType.RUp ] = KeyCode.UpArrow;
                codes[ (int)ButtonType.RDown ] = KeyCode.DownArrow;
                codes[ (int)ButtonType.RLeft ] = KeyCode.LeftArrow;
                codes[ (int)ButtonType.RRight ] = KeyCode.RightArrow;
                codes[ (int)ButtonType.L3 ] = KeyCode.Space;
                codes[ (int)ButtonType.LeftTrigger ] = KeyCode.Space;
                codes[ (int)ButtonType.R3 ] = KeyCode.RightShift;
                codes[ (int)ButtonType.RightTrigger ] = KeyCode.Return;
                codes[ (int)ButtonType.LeftShoulder ] = KeyCode.LeftCommand;
                codes[ (int)ButtonType.RightShoulder ] = KeyCode.RightCommand;

                codes[ (int)ButtonType.Start ] = KeyCode.Return;
                codes[ (int)ButtonType.A ] = KeyCode.RightCommand;
                codes[ (int)ButtonType.B ] = KeyCode.Backspace;
                codes[ (int)ButtonType.X ] = KeyCode.X;
                codes[ (int)ButtonType.Y ] = KeyCode.Y;

                currentInputType = KeyboardInputString;
            }

            currentButtonList.Clear();
            oldButtonList.Clear();

            foreach( ButtonType button in buttonTypes )
            {
                currentButtonList.Add( button, false );
                oldButtonList.Add( button, false );
            }
        }
    }

    private void SendDownEvent( ButtonType button )
    {                       
        if( OnButtonDown != null )
            OnButtonDown( button );     
    }

    private void SendHeldEvent( ButtonType button )
    {
        if( OnButtonHeld != null )
            OnButtonHeld( button ); 
    }

    private void SendUpEvent( ButtonType button )
    {
        if( OnButtonUp != null )
            OnButtonUp( button );   
    }

    public Vector3 getRawAxes()
    {
        if( currentInputType == "Invalid" )
            return Vector3.zero;

        float verticalAxis = Input.GetAxisRaw( verticalAxisString );
        float horizontalAxis = Input.GetAxisRaw( horizontalAxisString );

        Vector3 rawAxes = new Vector3( horizontalAxis, verticalAxis, 0f );

        if( rawAxes == Vector3.zero )
        {
            if( currentButtonList[ ButtonType.Up ] )
                rawAxes += Vector3.up;

            if( currentButtonList[ ButtonType.Down ] )
                rawAxes += Vector3.down;

            if( currentButtonList[ ButtonType.Left ] )
                rawAxes += Vector3.left;

            if( currentButtonList[ ButtonType.Right ] )
                rawAxes += Vector3.right;
        }

        return rawAxes;
    }

    public Vector3 getRawRAxes()
    {
        float rVerticalAxis = Input.GetAxisRaw( rVerticalAxisString );
        float rHorizontalAxis = Input.GetAxisRaw( rHorizontalAxisString );

        Vector3 rawRAxes = new Vector3( rHorizontalAxis, rVerticalAxis, 0f );

        return rawRAxes;
    }
}
