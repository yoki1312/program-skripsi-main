<?php
  
namespace App\Http\Controllers;
  
use App\Http\Controllers\Controller;
use Socialite;
use Auth;
use Exception;
use App\Models\User;
  
class GoogleController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }
      
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function handleGoogleCallback()
    {
        try {
    
            $user = Socialite::driver('google')->user();
     
            $finduser = User::where('google_id', $user->id)->first();
     
            if($finduser){
     
                Auth::login($finduser);
    
                return redirect('/index');
     
            }else{
                $newUser = User::create([
                    'name' => $user->name,
                    'email' => $user->email,
                    'google_id'=> $user->id,
                    'password' => encrypt('123456dummy')
                ]);
                $sendMaiil = [
                    'title' => 'Pemberitahuan Pendaftaran Plantshop.id',
                    'body' => 'Email anda berhasil terdaftar !!'
                ];
                \Mail::to($user->email)->send(new \App\Mail\SendMail($sendMaiil));
                Auth::login($newUser);
     
                return redirect('/index');
            }
    
        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }
}