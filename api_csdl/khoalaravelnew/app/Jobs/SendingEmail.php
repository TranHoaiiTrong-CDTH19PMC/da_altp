<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMailable;
use Illuminate\Support\Facades\Session;
use App\Models\nguoi_choi;

class SendingEmail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        // Mail::to('dangquangvinh310@gmail.com')->send(new SendMailable());
        Mail::send('mailfb', array('name'=>"quang vinh",'email'=>"dangquangvinh"), function($message){
	        $message->to('dangquangvinh310@gmail.com', 'Mail')->subject('Troi oi cai gi day!');
	    });
        // Session::flash('flash_message', 'Send message successfully!');

    }
}
