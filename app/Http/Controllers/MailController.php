<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Mail;
use Mail;
class MailController extends Controller
{

    public function sendMail(Request $request)
    {
       
        $name = $request->to_name;
        $to_mail = $request->to_mail;
        $subject = $request->subject;
        $fromMailIs = $request->from_mail;

        $to_name = $name; //name of Receiver fetch from DB
        $to_email = $to_mail; // to mail Reciever

        if($subject=="birthday"){
        $data = array('name'=>$name, "body" => "Birthday Wishes");
        Mail::send('emails.birthday', $data, function($message) use ($to_name, $to_email) {
        $message->to($to_email, $to_name)
        ->subject('Birthday Wishes');
        $message->from('test@gmail.com','Birthday Wishes from ABC Teams');
          });
        }elseif($subject=="work_anniversary"){

        $data = array('name'=>$name, "body" => "Work Anniversary Wishes");
        Mail::send('emails.work', $data, function($message) use ($to_name, $to_email) {
        $message->to($to_email, $to_name)
        ->subject('Work Anniversary Wishes');
        $message->from('test@gmail.com','Work Anniversary Wishes from ABC Teams');
             });
        }elseif($subject=="wedding_anniversary"){

        $data = array('name'=>$name, "body" => "Wedding Anniversary Wishes");
        Mail::send('emails.wedding', $data, function($message) use ($to_name, $to_email) {
        $message->to($to_email, $to_name)
        ->subject('Wedding Anniversary Wishes');
        $message->from('test@gmail.com','Wedding Anniversary Wishes from ABC Teams');
             });
        }




    }

}
