<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Registration;

class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login','register']]);
    }

    /**
     * Get a JWT token via given credentials.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password', 'user_type');

        if ($token = $this->guard()->attempt($credentials)) {
            return $this->respondWithToken($token);
        }

        return response()->json(['status' => 'error', 'message' => 'Email password & User Type Does Not Match. Please Try Again', 'data' => $credentials]);
    }

    public function register(Request $request)
    {
        $first_name = $request->first_name;
        $lastname = $request->lastname;
        $email = $request->email;
        $phone_no = $request->phone_no;
        $password = $request->password;
        $auth_title = $request->auth_title;
        $user_type = $request->user_type;
        $alt_email = $request->alt_email;
        $organization_name = $request->organization_name;
        $country = $request->country;

        // Check if field is not empty
        if (empty($first_name) or empty($email) or empty($password)) {
            return response()->json(['status' => 'error', 'message' => 'You must fill all the fields']);
        }
        // Check if email is valid
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            return response()->json(['status' => 'error', 'message' => 'You must enter a valid email']);
        }
        // Check if password is greater than 5 character
        if (strlen($password) < 6) {
            return response()->json(['status' => 'error', 'message' => 'Password should be min 6 character']);
        }

        $user = new User();
        $user->name = $first_name." ".$lastname;
        $user->email = $email;
        $user->password = bcrypt($password);
        $user->user_type = $user_type;
        $seve_user = $user->save();

        $registration = new Registration();
        $registration->user_id = $user->id;
        $registration->first_name = $first_name;
        $registration->lastname = $lastname;
        $registration->email = $email;
        $registration->phone_no = $phone_no;
        $registration->auth_title = $auth_title;
        $registration->userType = $user_type;
        $registration->alt_email = $alt_email;
        $registration->organization_name = $organization_name;
        $registration->country = $country;

        if ($registration->save()) {
            return response()->json(['status' => 'success', 'message' =>  "Registration Successful, Plesae Login"]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
        
    }

    /**
     * Get the authenticated User
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        return response()->json($this->guard()->user());
    }
    public function profile(Request $request)
    {
        $user = User::find($request->userId);
        return response()->json(['status' => 'success', 'message' =>  "Data Found", 'data' => $user]);
    }
    /**
     * Log the user out (Invalidate the token)
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        $this->guard()->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken($this->guard()->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => $this->guard()->factory()->getTTL() * 60,
            'user'       => auth()->user()
        ]);
    }

    /**
     * Get the guard to be used during authentication.
     *
     * @return \Illuminate\Contracts\Auth\Guard
     */
    public function guard()
    {
        return Auth::guard();
    }
}