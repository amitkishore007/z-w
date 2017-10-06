<?php 


/**
* 
*/
require APPPATH.DIRECTORY_SEPARATOR.'third_party'.DIRECTORY_SEPARATOR.'easybitcoin.php';

class SignupModel extends CI_Model
{

	// var $wallets = array('BTC','LTC','DOGE','DASH','ETH','BDC');

	// var $token = '3a3983b264f14785b119e903e66eaec2';
	var $sms_api = '171789AYBkainQ59a1540e';

	var $rpc_user     ='zedexcoinrpc';
	var $rpc_password ='kishoreamit56400215';
	var $rpc_url      ='165.227.100.74';
	var $rpc_port     ='12738';


	
	public function create_user() {

		$this->load->library('form_validation');

		$output = array('status'=>'false','username'=>'','email'=>'','phone'=>'','password'=>'','retype'=>'');

		if ($this->form_validation->run('user_registration_form_validation')==FALSE) {

			 	$this->form_validation->set_error_delimiters('', '');
				$output['username'] = form_error('username');
				$output['email']    = form_error('email');
				$output['phone']    = form_error('phone');
				$output['password'] = form_error('password');
				$output['retype']   = form_error('retype-password');
				


		} else {

			
			unset($_POST['retype-password']);

			$info = $this->input->post();
			
			$valid = $this->validate_password($info['password']);

			if ($valid) {
				
				$info['password'] = md5($info['password']);
						
					
				$blackdiamond = new Bitcoin($this->rpc_user,$this->rpc_password,$this->rpc_url,$this->rpc_port);
				
				$address = $blackdiamond->getnewaddress();

				if (!empty($address)) {
					// $set_acc = $user->id.$user->email; 
					
					$otp_code = rand(1,999999);
					$response = $this->send_message($otp_code,$info['phone']);
					$rslt = json_decode($response);
					
					if ($rslt->type=='success') {
							
							$output['status'] = "success";
							$data = array(

								
								'email'          => $info['email'],
								'username'       => $info['username'],
								'phone'          => $info['phone'],
								'wallet_address' => $address,
								'password'       => $info['password'],
								'otp'            => 1
								
						    );

						$this->session->set_userdata($data);
					}

					
				}	


			} else {

				$output['password'] = 'Password length should be 8 character and should contain atleast one Uppercase, one lowercase, one digit and one special character';

			}

			
		}

		return $output;

	}

	private function validate_password($password) {

		   $r1='/[A-Z]/';  //Uppercase
		   $r2='/[a-z]/';  //lowercase
		   $r3='/[!@#$%^&*()\-_=+{};:,<.>]/';  // whatever you mean by 'special char'
		   $r4='/[0-9]/';  //numbers

		   if(preg_match_all($r1,$password, $o)<1) return FALSE;

		   if(preg_match_all($r2,$password, $o)<1) return FALSE;

		   if(preg_match_all($r3,$password, $o)<1) return FALSE;

		   if(preg_match_all($r4,$password, $o)<1) return FALSE;

		   if(strlen($password)<8) return FALSE;

		   return TRUE;
	}


	private function send_message($otp_code,$number) {

			$auth_key = $this->sms_api;
			$url = 'https://control.msg91.com/api/sendotp.php?authkey='.$auth_key.'&mobile='.$number.'&message=Your%20otp%20is%20'.$otp_code.'&sender=OTPSMS&otp='.$otp_code;
			 if(!function_exists("curl_init")) return "cURL extension is not installed";
			    if (trim($url) == "") die("@ERROR@");
			    $curl = curl_init($url);
			    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); 
			    curl_setopt($curl, CURLOPT_POST, 1);                        
			    // curl_setopt($curl, CURLOPT_USERPWD, 'username:password');
			    curl_setopt($curl, CURLOPT_HTTPAUTH, CURLAUTH_ANY);                    
			    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);                          
			    curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);                       
			    $response = curl_exec($curl);                                          
			    $resultStatus = curl_getinfo($curl);                                   
			   	
			    if($resultStatus['http_code'] == 200) {
			       
			        // All Ok
			    
			    } else {

			        return json_encode($resultStatus);                            
				}

			    $curl = null;
			    return utf8_encode($response);

	}

	public function user_signup() {

		$user_info = array(

			'username'       =>$this->session->userdata('username'),
			'email'          =>$this->session->userdata('email'),
			'phone'          =>$this->session->userdata('phone'),
			'password'       =>$this->session->userdata('password'),
			'wallet_address' =>$this->session->userdata('wallet_address'),
			
			);

		$output = 'error';



		$this->db->insert('users',$user_info);

		if ($this->db->affected_rows()==1) {
			
			$user_id = $this->db->insert_id();

			$blackdiamond = new Bitcoin($this->rpc_user,$this->rpc_password,$this->rpc_url,$this->rpc_port);
								
			 $address = $user_info['wallet_address'];
			$set_acc = $user_id.$this->session->userdata('email').$this->session->userdata('username'); 
			$blackdiamond->setaccount($address,md5($set_acc));

			$user_login = array(
				'user_id'	   =>$user_id,
				'user_name'    =>$this->session->userdata('username'),
				'user_email'   =>$this->session->userdata('email'),
				'is_logged_in'=>1
			);

			$this->session->set_userdata($user_login);

			$this->session->unset_userdata($user_info);
			$output = 'success';

		}

		return $output;
	}
	

}