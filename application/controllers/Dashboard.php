<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
require APPPATH.DIRECTORY_SEPARATOR.'third_party'.DIRECTORY_SEPARATOR.'easybitcoin.php';

class Dashboard extends CI_Controller
{
	// var $token = '3a3983b264f14785b119e903e66eaec2';
	// var $actual_currency = 'USD';
	// var $wallet = array('BTC','LTC','DOGE','DASH','ETH','BDC');
	var $data  = array();
	var $current_wallet = 'ZedexCoin';
	var $rpc_user     ='zedexcoinrpc';
	var $rpc_password ='kishoreamit56400215';
	var $rpc_url      ='165.227.100.74';
	var $rpc_port     ='12738';


	public function __construct() {

		parent::__construct();

		if (!$this->session->userdata('is_logged_in')) {
			
			return redirect('wallet');
		}
		$this->load->model('dashboardModel');
	}


	private function wallet_init() {

		

		$blackdiamond = new Bitcoin($this->rpc_user,$this->rpc_password,$this->rpc_url,$this->rpc_port);

			// $balance = $blackdiamond->getbalance($this->data['current_wallet']->wallet_address);
			$set_acc = $this->session->userdata('user_id').$this->session->userdata('email').$this->session->userdata('username');
			$balance = $blackdiamond->getbalance(md5($set_acc));
			$this->data['current_price'] = (object)array('USD'=>'0.0153');

			$this->data['balance'] = $balance  ? (object)array('balance'=>$balance) : (object)array('balance'=>'');
			$this->data['current_wallet'] = $this->dashboardModel->get_myinfo();
	
		
	}

	public function index() {

		$this->data['main_content'] = 'public/dashboard/index';


		$this->wallet_init();


		$this->load->view('includes/wallet_template',$this->data);

	}




	public function transactions() {

		$this->data['main_content'] = 'public/dashboard/transactions';
		
		$this->wallet_init();

		$this->load->view('includes/wallet_template',$this->data);
	}

	// public function wallet() {

	// 	$this->data['main_content'] = 'public/dashboard/wallet';

	// 	$this->wallet_init();

			 

	// 		$blackdiamond = new Bitcoin($this->rpc_user,$this->rpc_password,$this->rpc_url,$this->rpc_port);

	// 		// $balance = $blackdiamond->getbalance($this->data['current_wallet']->wallet_address);
	// 		$balance = $blackdiamond->getbalance(md5($this->session->userdata('user_email')));
	// 		$amount  = $balance  ? $balance : '0';
	// 		$all_wallet_balance[] = (object)array('wallet_type'=>'ZEDX','balance'=>$amount);

		


	
	// 	$this->data['wallets'] = $this->dashboardModel->get_wallets();

	// 	$this->load->view('includes/wallet_template',$this->data);
	// }

	

	public function settings() {

		$this->data['main_content'] = 'public/dashboard/settings';

		$this->wallet_init();

		$this->load->view('includes/wallet_template',$this->data);
	}

	public function faq() {

		$this->data['main_content'] = 'public/dashboard/faq';

		$this->wallet_init();
		
		$this->load->view('includes/wallet_template',$this->data);

	}

	public function profile() {

		$this->data['main_content'] = 'public/dashboard/profile';

		$this->wallet_init();
		
		$this->data['my_profile'] =  $this->dashboardModel->get_myinfo();

		$this->load->view('includes/wallet_template',$this->data);

	}



	public function logout(){

	
		$this->session->sess_destroy();
		return redirect('wallet');
	}

	public function checkaddress() {

		if ($this->input->post()) {
			 // else {

				$blackdiamond = new Bitcoin($this->rpc_user,$this->rpc_password,$this->rpc_url,$this->rpc_port);

				$balance = $blackdiamond->getaccount($this->input->post('address'));
				
				if ( is_bool($balance) && $balance==false) {
					# code...
						$output = array('status'=>'false');
				} else {

						$output = array('status'=>'success');

				}

				echo json_encode($output);
			
			// }
			
			
		} else {
			return redirect('wallet');
		}
	}

	
	public function do_transaction() {

		if ($this->input->post()) {
			# code...
			$pass    = md5($this->input->post('pass'));
			$amount  = trim($this->input->post('amount'));
			$address = trim($this->input->post('address'));
			$wallet  = trim($this->input->post('wallet'));
			 // print_r($this->input->post());
			// $username  = $this->input->post('username');
			// $email  = $this->input->post('email');

			$output = $this->dashboardModel->checkUser($pass);
			$response = array('status'=>'false','error'=>'','result'=>'');
			// echo json_encode($output);
			if (isset($output)) {
				
				// perform the transaction
				 // else{

					$amt = number_format((float)$amount, 8, '.', '');
					settype($amt,'double');
					
					$blackdiamond = new Bitcoin($this->rpc_user,$this->rpc_password,$this->rpc_url,$this->rpc_port);
					$w = $blackdiamond->sendfrom(md5($this->session->userdata('user_email')),$address,$amt);
					// print_r($blackdiamond);
					if ($w) {
						$response['status']='success';
					}
				// }

			} else {

				$response['status']='error';
			}

			echo json_encode($response);
		} else {

			return redirect('wallet');
		}
	}

	private function doing_transaction($address_from,$address_to,$crypto,$amount) {

		// $request = '{"inputs":[{"addresses": ["'.$address_from.'"]}],"outputs":[{"addresses": ["'.$address_to.'"], "value": '.$amount.'}]}';

		
		$chain = ($crypto == 'btc')  ? 'test3' : 'test';

		$url ='https://api.blockcypher.com/v1/'.$crypto.'/'.$chain.'/txs/new';
		$output = array('status'=>'false','result'=>'');
		
		$inputs = array('addresses'=>array($address_from));
		$outputs = array('addresses'=>array($address_to),'value'=>$amount);

		$data_string = array('inputs'=>array($inputs),'outputs'=>array($outputs));

		$data = json_encode($data_string);

		// return $data;
		// $data_string = array('address'=>$address,'amount'=>1000);
		// $data = json_encode($data_string);
	    if(!function_exists("curl_init")) return "cURL extension is not installed";
		    if (trim($url) == "") die("@ERROR@");
		    $curl = curl_init($url);
		    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
		    curl_setopt($curl, CURLOPT_POST, 1);            
		    curl_setopt($curl, CURLOPT_POSTFIELDS, $data);                
		    // curl_setopt($curl, CURLOPT_USERPWD, 'username:password');
		    curl_setopt($curl, CURLOPT_HTTPAUTH, CURLAUTH_ANY);                    
		    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);                          
		    curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);                       
		    $response = curl_exec($curl);                                          
		    $resultStatus = curl_getinfo($curl);                                   
		    if($resultStatus['http_code'] == 201) {
		       
		        $output['status'] = 'success';
		        $output['result'] = utf8_encode($response);
		    
		    } else {

		        $output['result'] = $resultStatus;

		                                
			}

		    $curl = null;
		    return $output;   
	}


	public function session_check() {

		if ($this->session->userdata('is_logged_in')) {
				
				echo 'success';
		} else {

			echo 'false';
		}
	}


	public function send_otp(){

		if ($this->input->post()) {
			
			$output = json_decode($this->dashboardModel->send_otp());

			echo $output->type;

		} else {

			return redirect('dashboard');
		}

	}

	public function check_sent_otp(){

		if ($this->input->post()) {
				
			$otp = $this->input->post('otp');
			$phone = $this->session->userdata('otp_phone');

			$output = json_decode($this->dashboardModel->check_sent_otp($otp,$phone));

			if ($output->type=='success') {
				echo 'success';
			} else {
				echo $output->type;
			}

			} else {

				return redirect('dashboard');

			} 	
	}

	

	public function change_password() {

		if ($this->input->post()) {
				
			$output = $this->dashboardModel->change_password();

			echo $output;

		} else {

			return redirect('dashboard');
		}
	}

}
