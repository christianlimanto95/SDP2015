<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Portalmahasiswa extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		$this->load->helper('cookie');
		$this->load->helper('url');
		$this->load->helper('form');
		$this->load->library('table');
		$this->load->library('upload');  
		$this->load->library('image_lib');
		$this->load->database();
		$this->load->model('mahasiswa_model');
		$this->load->model('kota_model');
		$this->load->model('provinsi_model');
		
	}
	
	public function index()
	{
		redirect('portalmahasiswa/home');
	}
	
	/*
		home
	*/
	public function home()
	{
		$nrp = "";
		$nomor_registrasi = "";
		$data = "";
		$kategori = 0;
		$login = false;
		$mahasiswa = false;
		$ijazah = "";
		$skhun = "";
		$param["ijazah"] = "";
		$param["skhun"] = "";
		
		/* --PENGECEKAN AWAL--
		
			cek apakah ada session email (session email dibuat ketika calon mahasiswa login dari halaman login calon mahasiswa).
			Jika ada, 
				maka akan dicek di database table calon_mahasiswa, apakah sudah ada jurusannya (jurusan didapat jika sudah melakukan pendaftaran),
				dicek juga apakah calon mahasiswa tsb sudah menjadi mahasiswa (status = 0 berarti mahasiswa),
				jika ya,
					dicek apakah ada session user_role (session tsb didapat setelah berhasil login dari halaman login utama)
					jika ya,
						jika bukan user_role nya bukan mahasiswa, redirect ke halaman login utama					
				
			cek apakah session user_role ada dan isinya adalah "mahasiswa",
				jika ya, berarti memang mahasiswa
				jika tidak, redirect ke halaman login utama
		*/
		
		if($this->session->userdata('user_role') == 'mahasiswa'){
            $data = $this->mahasiswa_model->getDataMahasiswaByNRP($this->session->userdata('username'));
			
			$nrp = $data[0]->nrp;
			$nomor_registrasi = $data[0]->nomor_registrasi_id;
			
			$mahasiswa = true;
			$login = true;
        }
		else
		{
			if ($this->session->userdata('email'))
			{
				$data = $this->mahasiswa_model->getDataCalonMahasiswaByEmail($this->session->userdata('email'));
				if ($data[0]->informasi_kurikulum_id == "")
				{
					redirect("/pendaftaran", "refresh");
				}
				else
				{
					$nomor_registrasi = $data[0]->nomor_registrasi_id;
					
					$login = true;
					if ($data[0]->status == "0")
					{
						if($this->session->userdata('user_role') != 'mahasiswa'){
							redirect('/');
						}
					}
				}
			}
			else
			{
				redirect('/');
			}
		}
		
		if ($login)
		{
			$param["upload_success"] = "";
			$param["upload_error"] = "";
			$param["upload_success_skhun"] = "";
			$param["upload_error_skhun"] = "";
			$param["semester"] = "";
			$param["pembayaran"] = "";
			$param["tagihan"] = "";
			$param["currentSemester"] = 1;
			$progress = 0;
			$ctrBelum = 0;
			
			if ($data[0]->kategori == "0")
			{
				$paramHeader['countNewNotif'] = "";
				$this->load->view('nav/navbar', $paramHeader);
				$this->load->view('pmb/portalmahasiswa_pending');
			}
			else
			{	
				$param["nomor_registrasi_id"] = $nomor_registrasi;
				
				if (!empty($_FILES["ijazah"]["name"]))
				{
					$config = array(
						'upload_path' => "./uploads/",
						'allowed_types' => "jpg|JPG|JPEG|jpeg",
						'file_name' => $nomor_registrasi . "-ijazah",
						'overwrite' => true
					);
					$this->upload->initialize($config);
					
					if (!$this->upload->do_upload("ijazah"))
					{
						$param["upload_error"] = $this->upload->display_errors();
					}
					else
					{
						$path = $_FILES['ijazah']['name'];
						$ext = pathinfo($path, PATHINFO_EXTENSION);
						$config['image_library']   = 'gd2';
						$config['source_image']    = './uploads/'. $nomor_registrasi . "-ijazah." . $ext;
						$config['create_thumb']    = FALSE;
						$config['maintain_ratio']  = TRUE;
						$config['master_dim']	   = 'width';
						$config['width']           = 600;
						$config['height']           = 600;
						$this->image_lib->initialize($config);
						$this->image_lib->resize();
						$this->image_lib->clear();
						
						$file_name = $this->upload->data()["file_name"];
						$data["nomor_registrasi_id"] = $nomor_registrasi;
						$data["ijazah"] = $file_name;
						$this->mahasiswa_model->upload_ijazah($data);
						
						$param["upload_success"] = "File ijazah anda telah berhasil diupload";
					}
				}
				
				if (!empty($_FILES["skhun"]["name"]))
				{
					$config = array(
						'upload_path' => "./uploads/",
						'allowed_types' => "jpg|JPG|JPEG|jpeg",
						'file_name' => $nomor_registrasi . "-skhun",
						'overwrite' => true
					);
					$this->upload->initialize($config);
					
					if (!$this->upload->do_upload("skhun"))
					{
						$param["upload_error_skhun"] .= $this->upload->display_errors();
					}
					else
					{
						$path = $_FILES['skhun']['name'];
						$ext = pathinfo($path, PATHINFO_EXTENSION);
						$config['image_library']   = 'gd2';
						$config['source_image']    = './uploads/'. $nomor_registrasi . "-skhun." . $ext;
						$config['create_thumb']    = FALSE;
						$config['maintain_ratio']  = TRUE;
						$config['master_dim']	   = 'width';
						$config['width']           = 600;
						$config['height']           = 600;
						$this->image_lib->initialize($config);
						$this->image_lib->resize();
						$this->image_lib->clear();
						
						$file_name = $this->upload->data()["file_name"];
						$data["nomor_registrasi_id"] = $nomor_registrasi;
						$data["skhun"] = $file_name;
						$this->mahasiswa_model->upload_skhun($data);
						
						$param["upload_success_skhun"] .= "File SKHUN anda telah berhasil diupload";
					}
				}
				
				$dataCalon = $this->mahasiswa_model->getDataCalonMahasiswaByNomorRegistrasi($data[0]->nomor_registrasi_id);
				
				$ijazah = $dataCalon[0]->ijazah;
				$param["ijazah"] = $ijazah;
				$skhun = $dataCalon[0]->skhun;
				$param["skhun"] = $skhun;
				
				$param["sudah_notification"] = "Anda telah menyelesaikan :";
				$param["belum_notification"] = "Anda belum menyelesaikan :";
				
				$progress++;				
				$param["sudah_notification"] .= "<br>" . $progress . ". Pendaftaran";
				
				if ($ijazah == "")
				{
					$ctrBelum++;
					$param["belum_notification"] .= "<br>" . $ctrBelum . ". Upload ijazah";
				}
				else
				{
					$progress++;
					$param["sudah_notification"] .= "<br>" . $progress . ". Upload ijazah";
				}
				
				if ($skhun == "")
				{
					$ctrBelum++;
					$param["belum_notification"] .= "<br>" . $ctrBelum . ". Upload skhun";
				}
				else
				{
					$progress++;
					$param["sudah_notification"] .= "<br>" . $progress . ". Upload skhun";
				}
				
				$param["sks"] = "-";
				$tagihan = "";
				if ($nrp == "")
				{
					
				}
				else
				{
					$param['semester'] = $this->input->post('semesterKe');
					if($this->input->post('semester'))
					{
						$param['pembayaran'] = $this->mahasiswa_model->getAllPembayaran($nrp,$this->input->post('semesterKe'));
					}
					else
					{
						$param['pembayaran'] = $this->mahasiswa_model->getAllPembayaran($nrp,1);
					}
					
					$param['currentSemester'] = $data[0]->semester;
					$param['tagihan'] = $this->mahasiswa_model->getTagihan($nrp,$param['currentSemester']);
				}
				
				$param['nrp'] = $nrp;
				$param['nama'] = ucwords($data[0]->nama);
				$param['jurusan'] = $data[0]->jurusan;
				$param['kategori'] = $data[0]->kategori;
				$param['usp'] = "Rp " . number_format($data[0]->harga_usp, 2, ',', '.');
				if ($mahasiswa)
				{
					$param['sks'] = $data[0]->sks;
				}
				$param['persen'] = ($progress * 20) . "%";
				
				$paramHeader['countNewNotif'] = "";
				$this->load->view('nav/navbar', $paramHeader);
				$this->load->view('pmb/portalmahasiswa_home', $param);
			}
		}
		
	}
	
	
	public function profile()
	{
		$nrp = "";
		$nomor_registrasi = "";
		$data = "";
		$login = false;
		$mahasiswa = false;
		
		/*
			--PENGECEKAN AWAL--
			sama seperti pada function home
		*/
		if($this->session->userdata('user_role') == 'mahasiswa'){
            $data = $this->mahasiswa_model->getFullDataMahasiswaByNRP($this->session->userdata('username'));
			$nrp = $data[0]->nrp;
			$nomor_registrasi = $data[0]->nomor_registrasi_id;
			$mahasiswa = true;
			$login = true;
        }
		else
		{
			if ($this->session->userdata('email'))
			{
				$data = $this->mahasiswa_model->getFullDataCalonMahasiswaByEmail($this->session->userdata('email'));
				if ($data[0]->informasi_kurikulum_id == "")
				{
					redirect("/pendaftaran", "refresh");
				}
				else
				{
					$nomor_registrasi = $data[0]->nomor_registrasi_id;
					$login = true;
					if ($data[0]->status == "0")
					{
						if($this->session->userdata('user_role') != 'mahasiswa'){
							redirect('/');
						}
					}
				}
			}
			else
			{
				redirect("/");
			}
		}
			
		
		
		if ($login)
		{
			$param["queryKota"] = $this->kota_model->selectKota();
			$param["queryProvinsi"] = $this->provinsi_model->selectProvinsi();
			
			//jika button save ditekan, akan masuk ke sini
			if ($this->input->post() == true)
			{
				$data = "";
				
				$id = $this->getVerificationId();
				$data["id"] = $id;
				$data['nrp'] = $nrp;
				$data['nomor_registrasi_id'] = $nomor_registrasi;
				$data["calon_mahasiswa"] = "1";
				$data['nama'] = $this->input->post('nama');
				$data['kewarganegaraan'] = $this->input->post('kewarganegaraan');
				$data['status_sosial'] = $this->input->post('status_sosial');
				$data['agama'] = $this->input->post('agama');
				$data['alamat'] = $this->input->post('alamat');
				
				$provinsi = $this->input->post('provinsi');
				$namaProvinsi = explode("-", $provinsi);
				$data['provinsi'] = "";
				if (count($namaProvinsi) > 1)
				{
					$data['provinsi'] = $namaProvinsi[1];
				}
				
				$data['kota'] = $this->input->post('kota');
				$data['kodepos'] = $this->input->post('kodepos');
				$data['nomor_hp'] = $this->input->post('nomor_hp');
				$data['email'] = $this->input->post('email');
				$data['nama_wali'] = $this->input->post('nama_wali');
				$data['alamat_wali'] = $this->input->post('alamat_wali');
				
				$provinsi_wali = $this->input->post('provinsi_wali');
				$namaProvinsi_wali = explode("-", $provinsi_wali);
				$data['provinsi_wali'] = "";
				if (count($namaProvinsi_wali) > 1)
				{
					$data['provinsi_wali'] = $namaProvinsi_wali[1];
				}
				
				$data['kota_wali'] = $this->input->post('kota_wali');
				$data['nomor_telp_wali'] = $this->input->post('nomor_telp_wali');
				$data['pekerjaan_wali'] = $this->input->post('pekerjaan_wali');
				
				//$nrp kosong berarti bukan mahasiswa, berarti yg diupdate adalah table calon_mahasiswa
				//$nrp ada isinya berarti mahasiswa, berarti yg diupdate adalah table mahasiswa
				
				if ($nrp != "")
				{
					$data["calon_mahasiswa"] = "0";
				}
				$this->mahasiswa_model->insertBiodata_verifikasi($data);
				
				if ($nrp == "")
				{
					$data = $this->mahasiswa_model->getFullDataCalonMahasiswaByEmail($this->session->userdata('email'));
				}
				else
				{
					$data = $this->mahasiswa_model->getFullDataMahasiswaByNRP($nrp);
				}
				
				$data[0]->verification = $id;
				$this->sendEmail($data);
			}
			
			$param["nomor_registrasi_id"] = $nomor_registrasi;
			$param['kategori'] = $data[0]->kategori;
			$param['nama'] = ucwords($data[0]->nama);
			$param['jurusan'] = $data[0]->jurusan;
			$param['jenis_kelamin'] = $data[0]->jenis_kelamin;
			if (strtolower($param['jenis_kelamin']) == 'p')
			{
				$param['jenis_kelamin'] = "Perempuan";
			}
			else
			{
				$param['jenis_kelamin'] = "Laki-laki";
			}
			
			$param['tempat_lahir'] = $data[0]->tempat_lahir;
			$param['tanggal_lahir'] = $data[0]->tanggal_lahir;
			$param['kewarganegaraan'] = $data[0]->kewarganegaraan;
			$param['status_sosial'] = $data[0]->status_sosial;
			$param['agama'] = $data[0]->agama;
			$param['alamat'] = $data[0]->alamat;
			$param['provinsi'] = $data[0]->provinsi;
			$provinsi_id = $this->provinsi_model->getProvinsiIdByNama($param['provinsi']);
			$param['provinsi_id'] = "";
			if (count($provinsi_id) > 0 )
			{
				$param['provinsi_id'] = $provinsi_id[0]->id;
			}
			$param['kota'] = $data[0]->kota;
			$param['kodepos'] = $data[0]->kodepos;
			$param['nomor_hp'] = $data[0]->nomor_hp;
			$param['email'] = $data[0]->email;
			
			$param['nama_wali'] = $data[0]->nama_wali;
			$param['alamat_wali'] = $data[0]->alamat_wali;
			$param['provinsi_wali'] = $data[0]->provinsi_wali;
			$provinsi_wali_id = $this->provinsi_model->getProvinsiIdByNama($param['provinsi_wali']);
			$param['provinsi_wali_id'] = "";
			if (count($provinsi_wali_id) > 0 )
			{
				$param['provinsi_wali_id'] = $provinsi_wali_id[0]->id;
			}
			$param['kota_wali'] = $data[0]->kota_wali;
			$param['nomor_telp_wali'] = $data[0]->nomor_telp_wali;
			$param['pekerjaan_wali'] = $data[0]->pekerjaan_wali;
			
			$paramHeader['countNewNotif'] = "";
			$this->load->view('nav/navbar', $paramHeader);
			$this->load->view('pmb/portalmahasiswa_profile', $param);
		}
	}
	
	public function getVerificationId()
	{
		$chars = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890123456789";
		$id = substr(str_shuffle($chars),0,20);
		return $id;
	}
	
	public function sendEmail($data)
	{
		$config= Array(
			'protocol' => 'smtp',
			'smtp_host' => 'ssl://smtp.googlemail.com',
			'smtp_port' => 465,
			'smtp_user' => 'pmbstts@gmail.com',
			'smtp_pass' => 'sdps1infor2015'
		);
		
		$this->load->library('email',$config);
		$this->email->set_newline("\r\n");
		
		$this->email->from('pmbstts@gmail.com', 'PMB-STTS');
		$this->email->to($data[0]->email);
		$this->email->subject('Biodata Change Confirmation');
		$message = "Hi, " . $data[0]->nama;
		$message .= "\nIt seems that you have changed your biodata recently";
		$message .= "\nIf you have done so, please click the link below to confirm your changes";
		$message .= "\n" . base_url() . "portalmahasiswa/confirmation/" . $data[0]->verification;
		$this->email->message($message);
		if($this->email->send()){	
			
			echo "<script>alert('Kode verifikasi telah dikirim ke " . $data[0]->email . ", Silahkan periksa email anda.');</script>";
		}
		else{
			show_error($this->email->print_debugger());
		}
	}
	
	public function confirmation()
	{
		$id = $this->uri->segment(3);
		$data = $this->mahasiswa_model->getBiodata_verifikasiById($id);
		if (count($data) > 0)
		{
			$calon_mahasiswa = $data[0]->calon_mahasiswa;
			$updateData = $data[0];
			if ($calon_mahasiswa == "1")
			{
				$this->mahasiswa_model->updateCalonMahasiswa($updateData);
			}
			else
			{
				$this->mahasiswa_model->updateMahasiswaByNomorRegistrasi($updateData);
			}
			$this->mahasiswa_model->deleteBiodata_verifikasi($data[0]->nomor_registrasi_id);
			echo "Your Biodata has been updated. You will be redirected to home page in <span id='timer'>10</span> seconds or " . anchor(base_url(), "click here");
			$this->load->view("pmb/verifikasi_biodata");
		}
		else
		{
			redirect(base_url());
		}
	}
	
	public function logout()
	{
		$this->session->unset_userdata("email");
		$this->session->unset_userdata("user_role");
		$this->session->unset_userdata("username");
		delete_cookie("sdp_username");
		delete_cookie("sdp_user_role");
		redirect("/");
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */