<?php
	class Perwalian extends CI_Controller
	{
		public function __construct()
		{
			parent::__construct();
		}
		
		//Function index digunakan untuk mengecek apakah user telah login
		public function index()
		{
			//mengecek apakah user telah login
			//jika ada data2 tersebut maka tampilkan halaman sesuai keterangan
			//untuk dosen keluarkan halaman dosen, dan mahasiswa tampilkan halaman mahasiswa
			if(!$this->session->userdata('username') && !get_cookie('username')){
				redirect('home/login');
			}
		}
		
		//Function mahasiswa digunakan untuk mengatur aktifitas mahasiswa selama login
		public function mahasiswa()
		{
			//Mengecek apakah user pernah login atau belum
			//jika sudah masuk kedalam if disini
			if($this->session->userdata('username') or get_cookie('username'))
			{
				//mengecek apakah user yang login merupakan mahasiswa STTS atau tidak
				//jika benar maka masuk kedalam if ini
				if($this->Mahasiswa_Model->isStudent($this->session->userdata('username')) or $this->Mahasiswa_Model->isStudent($this->input->cookie('username')))
				{
					//Mengambil semua notifkasi yang terdapat dalam database
					
					/*
					//mengecek apakah ada session currentPage
					if(!$this->session->userdata('currentPage'))
					{
						//jika tidak ada maka membuat session currentpge dengan default home
						$this->session->set_userdata('currentPage','home');	
					}
					//mengecek apakah currentPage itu di halaman home
					if($this->session->userdata('currentPage') == 'home')
					{
						//jika iya, maka tampilkan navbar mahasiswa
						//$this->load->view('nav/navbar');
						//dan tampilkan view content home
						
					}
					//mengecek apakah currentPage itu di halaman frs
					else if($this->session->userdata('currentPage') == 'frs')
					{
						//redirect('Perwalian/frs');
						echo "lewat ini";
					}
					else if($this->session->userdata('currentPage') == 'jadwal')
					{
						$this->jadwal();
					}*/
					
				}
				else if($this->Dosen_Model->isLecture($this->session->userdata('username')) or $this->Dosen_Model->isLecture($this->input->cookie('username')))
				{
					redirect('');
				}
			}
			else{
				redirect('home/login');
			}
		}
		
		public function home()
		{
			$data['notifikasi'] = $this->Notifikasi_Model->getNotification();
			$data['countNewNotif'] = $this->Notifikasi_Model->getCountNotification();
			//Mengset judul web lewat variable data['title'] dengan isi
			//Sistem informasi mahasiswa stts
			$data['title'] = 'Sistem Informasi Mahasiswa STTS';
			//mendapatkan nama mahasiswa, dan menyimpan kedalam variable
			//data['nameStudent']
			$data['nameStudent'] = $this->Mahasiswa_Model->getNameStudent($this->session->userdata('username'));
			//mendapatkan semester atau tahun ajaran yang berjalan sekarang
			$data['nowSemester'] = $this->Data_Umum_Model->getSemester();
			//meload view header dan memasukan title kedalam view;
			$this->load->view('includes/header',$data);
			$this->load->view('contentdefault');
			
			$this->load->view('includes/footer');
		}
		
		public function frs()
		{
			//Mengambil semua notifkasi yang terdapat dalam database
			$data['notifikasi'] = $this->Notifikasi_Model->getNotification();
			$data['countNewNotif'] = $this->Notifikasi_Model->getCountNotification();
			//Mengset judul web lewat variable data['title'] dengan isi
			//Sistem informasi mahasiswa stts
			$data['title'] = 'Sistem Informasi Mahasiswa STTS';
			//mendapatkan nama mahasiswa, dan menyimpan kedalam variable
			//data['nameStudent']
			$data['nameStudent'] = $this->Mahasiswa_Model->getNameStudent($this->session->userdata('username'));
			//mendapatkan semester atau tahun ajaran yang berjalan sekarang
			$data['nowSemester'] = $this->Data_Umum_Model->getSemester();
			//meload view header dan memasukan title kedalam view;
			$this->load->view('includes/header',$data);
			//jika menu submit saat perwalian diklik
			if($this->input->post('submit'))
			{
				//mengecek apakah count SKS sudah melebihi batas minimum persemester
				if($this->session->userdata('countSKS') > 16)
				{
					//membuat tabel jadwal kuliah
					$this->setClass();
					$data['nameStudent'] = $this->Mahasiswa_Model->getNameStudent($this->session->userdata('username'));
					$data['nowSemester'] = $this->Data_Umum_Model->getSemester();
					$data['title'] = 'Sistem Informasi Mahasiswa STTS';
					$data['table']=$this->getSchedule();
					$this->Notifikasi_Model->sendNotif();
					$this->Mahasiswa_Model->setAfterStudyPlan();
					$data['nowSemester'] = $this->Data_Umum_Model->getSemester();
					$this->load->view('perwalian/jadwal',$data);
				}else
				{
					//jika belum maka menampilkan error sksnya kurang dari minimum
					$this->session->set_flashdata('error','Jumlah SKS yang diambil kurang dari standart minimum');
					//diredirectkan ke mahasiswa di contoller perwalian
					redirect('perwalian/frs');
				}
			}
			else if($this->Mahasiswa_Model->getStatusConfirm())
			{
				//jika menekan menu perwalian maka
				//set posisi menu sekarang di frs
				$this->session->set_userdata('currentPage','frs');
				//menampilkan menu mahasiswa
				//$this->load->view('nav/navbar');
				$data['countSKS']=0;
				//set data countSKS = 0
				//jika terdapat session countSKS maka
				if($this->session->userdata('countSKS'))
				{
					//set data countSKS dengan data dari session
					$data['countSKS'] = $this->session->userdata('countSKS');
				}
				//membuat variable array yang nanti dugnakan untuk menampung
				//data matakuliah yang dibuka dan diambil hanya semester saja
				$arr= array();
				//melakukan perulangan untuk mendapatkan matakuliah yang dibuka
				foreach($this->Matakuliah_Model->getClassSemesterOpen() as $row)
				{
					//memasukan data semester ke dalam variable arr
					array_push($arr,$row->semester);
				}
				//mengisi data combobox dengan variable arr yang berisi semester semester saja
				$data['dataCombobox']=$arr;
				//mengeset variable user dengan '' (kosong)
				$user = '';
				//mengecek apakah username terdapat disession
				//jika ya set variable user dengan data yang ada disession
				if($this->session->userdata('username')){$user = $this->session->userdata('username');}
				//mengecek apakah username terdapat di cookie
				//jika ya set variable user dengan data yang ada di cookie
				if($this->input->cookie('username')){$user = get_cookie('username');}
				//membuat variable mahasiswa didalam variable data
				//mengset value variable tersebut dengan mengambil dari model
				//Mahasiswa_model dan mendapatkan detail dari mahasiswa
				$data['mahasiswa'] = $this->Mahasiswa_Model->getDetailStudent($user);
				//membuat variable smtr di dalam variable data
				//kemudian memanggil function getSemesterStudent untuk mendapatkan semester sekarang
				$data['smtr'] = $this->getSemesterStudent($data['mahasiswa']->nrp);
				//membuat variable table yang nanti ditampilkan diform perwalian
				$data['table'] = array();
				//melakukan perulangan berdasarkan semester kelas yang dibuka pada tahun ajaran ini
				for($i=0;$i<count($arr);$i++){
					//mengisi array variable table dengan tabel
					//memanggil fungsi createTableCourse, memasukan input semester dan menghasilkan tabel semester tersebut
					array_push($data['table'],$this->createTableCourse($arr[$i]));
				}
				//mengload view perwalian
				$this->load->view('perwalian/perwalian',$data);
			}else
			{
				redirect('perwalian/jadwal');
			}
		}
		
		public function jadwal()
		{
			//Mengambil semua notifkasi yang terdapat dalam database
			$data['notifikasi'] = $this->Notifikasi_Model->getNotification();
			$data['countNewNotif'] = $this->Notifikasi_Model->getCountNotification();
			//Mengset judul web lewat variable data['title'] dengan isi
			//Sistem informasi mahasiswa stts
			$data['title'] = 'Sistem Informasi Mahasiswa STTS';
			//mendapatkan nama mahasiswa, dan menyimpan kedalam variable
			//data['nameStudent']
			$data['nameStudent'] = $this->Mahasiswa_Model->getNameStudent($this->session->userdata('username'));
			//mendapatkan semester atau tahun ajaran yang berjalan sekarang
			$data['nowSemester'] = $this->Data_Umum_Model->getSemester();
			//Mengecek apakah user pernah login atau belum
			//jika sudah masuk kedalam if disini
			if($this->session->userdata('username') or get_cookie('username'))
			{
				$data['nameStudent'] = $this->Mahasiswa_Model->getNameStudent($this->session->userdata('username'));
				$data['nowSemester'] = $this->Data_Umum_Model->getSemester();
				$data['title'] = 'Sistem Informasi Mahasiswa STTS';
					
				$data['table']=$this->getSchedule();
				$data['nowSemester'] = $this->Data_Umum_Model->getSemester();
				$this->load->view('includes/header',$data );
				$this->session->userdata('currentPage','jadwal');
				//$this->load->view('nav/navbar',$data);
				$this->load->view('perwalian/jadwal',$data);
				$this->load->view('includes/footer');
			}
			//jika belum login tampilkan halaman login
			else
			{
				redirect('home/login');
			}
		}
		
		
		//FUNCTION INI DIGUNAKAN OLEH AJAX 
		//UNTUK MENDAPATKAN SKS SUATU MATA KULIAH
		public function getTotalSks(){
			$query = $this->Matakuliah_Model->getSKS($this->input->post('name'));
			if($this->session->userdata('getCourseNow'))
			{
				$array = $this->session->userdata('getCourseNow');
				if($this->input->post('status') == 'true')
				{
					if($this->Matakuliah_Model->isEmpty($this->input->post('name')))
					{
						$count = (+$this->input->post('countSKS')) + (+$query->jumlah_sks);
						$this->session->set_userdata('countSKS',$count);
						array_push($array,$this->input->post('name'));
						$this->session->set_userdata('getCourseNow',$array);
						print $query->jumlah_sks;
					}else{
						print "1";
					}
				}
				else
				{
					$count = (+$this->input->post('countSKS')) - (+$query->jumlah_sks);
					$this->session->set_userdata('countSKS',$count);
					if(($key = array_search($this->input->post('name'),$array)) !== false){
						unset($array[$key]);
					}
					$this->session->set_userdata('getCourseNow',$array);
					print $query->jumlah_sks;
				}
			}else{
				$array = array($this->input->post('name'));
				$this->session->set_userdata('getCourseNow',$array);
				$this->session->set_userdata('countSKS',$query->jumlah_sks);
				print $query->jumlah_sks;
			}
			
		}
		
		//FUNCTION INI UNTUK MEMBUAT SEBUAH DIV
		function divOpen($class = NULL, $id = NULL)
		{
			$code   = '<div ';
			$code   .= ( $class != NULL )   ? 'class="'. $class .'" '   : '';
			$code   .= ( $id != NULL )      ? 'id="'. $id .'" '         : '';
			$code   .= '>';
			return $code;
		}

		function createTableCourse($semester){
			$matkul = $this->Matakuliah_Model->createFRS($this->session->userdata('username'));
			$tmpl = array ( 'table_open'  => '<table class="table table-condensed" >');
			$this->table->set_template($tmpl);
			$this->table->set_heading('Nama Matkul','SKS','Grade','Ambil');
			$semesterNow = $this->Data_Umum_Model->getSemester();
			foreach($matkul as $row)
			{
				$hari='-';
				if($row->semester == $semester && $row->hari <> '' && $row->status == '1' && $row->tahun_ajaran == $semesterNow)
				{
					$class='info';
					if($row->hari == "1")
					{
						$hari='Senin';
					}
					else if($row->hari == "2")
					{
						$hari='Selasa';
					}
					else if($row->hari == "3")
					{
						$hari='Rabu';
					}
					else if($row->hari == "4")
					{
						$hari='Kamis';
					}
					else if($row->hari == "5")
					{
						$hari="Jum'at";
					}
					else
					{
						$class='';
					}
					$checkbox = form_checkbox(array('class'=>'checkbox','value'=>$row->nama,'name'=>'cbx'));
					
					if($this->session->userdata('getCourseNow'))
					{
						$array = $this->session->userdata('getCourseNow');
						if(in_array($row->nama,$array))
						{
							$checkbox = form_checkbox(array('class'=>'checkbox','value'=>$row->nama,'name'=>'cbx', 'checked'=>'true'));
						}
					}
					
					if($row->nilai_grade=='A' || $this->isPass($row->id) == 'false')
					{
						$class='active';
						$checkbox = '<fieldset disabled>' .  form_checkbox(array('class'=>'checkbox','value'=>$row->nama,'name'=>'cbx')) .  '</fieldset>';
					}
					$rowData = array('<a class="hovertabel" href="#" title="Informasi" data-trigger="hover" data-html="true" data-toggle="popover" data-content="Hari: '.$hari.'<br />Jam: '.substr($row->jam_mulai,0,5) .'">'.$row->nama .'</a>',$row->jumlah_sks,$row->nilai_grade, $checkbox);
					if($row->berpraktikum == 1)
					{
						
						$rowData = array('<b><a class="hovertabel" href="#" title="Informasi" data-trigger="hover" data-html="true" data-toggle="popover" data-content="Hari: '.$hari.'<br />Jam: '.substr($row->jam_mulai,0,5) .'">'.$row->nama .'</a></b>' , '<b>'.$row->jumlah_sks .'</b>', '<b>'. $row->nilai_grade .'</b>', $checkbox);	
					}
					$this->table->add_row(array('data'=>$rowData,'class'=>$class,'data-toogle'=>'popover','data-trigger'=>'hover', 'title'=>$hari, 'data-content'=>'some' ));
				}
			}
			return $this->table->generate();
		}
		
		public function getSemesterStudent($nrp)
		{			
			$sql = $this->db->get_where('data_umum',array('index'=>'tahun_ajaran_sekarang'));
			$now = $sql->row();
			$addTahun = 0;
			$tahun = substr($now->value,8,2);
			if(substr($now->value,0,5) == "GASAL"){
				$addTahun = 1;
			}else{
				$addTahun=2;
			}
			$smtr = (($tahun - substr($nrp,1,2)) * 2) + $addTahun;
			return $smtr;
		}
		
		public function isPass($courseID)
		{
			$passed = 'true';
			$requirementCourse = $this->Syarat_Matakuliah_Model->getRequirement($courseID);
			foreach($requirementCourse as $row)
			{
				if($this->Kelas_Mahasiswa_Model->search($row->id_syarat_matakuliah) == 'false')
				{
					$passed = 'false';
					break;
				}
			}
			return $passed;
		}
		
		public function setClass()
		{
			$listClass = $this->session->userdata('getCourseNow');
			for($i=0; $i<count($listClass); $i++)
			{
				$class = $this->Class_Model->getClass($listClass[$i]);
				if(count($class) >1){
					$totalStudent = $this->Class_Model->getStudent($class[0]['id'],$class[0]['idmakul']);
					
					if($this->session->userdata('username'))
					{
						$studentID = $this->session->userdata('username');
					}
					else if(get_cookie('username'))
					{
						$studentID = get_cookie('username');
					}
					if($totalStudent < 35)
					{
						$scoreID = $this->Nilai_Model->insert($studentID);
						$this->Kelas_Mahasiswa_Model->insert($studentID,$class[0]['id'],$class[0]['idmakul'],'a',$scoreID);
					}
					else
					{
						$scoreID = $this->Nilai_Model->insert($studentID);
						$this->Kelas_Mahasiswa_Model->insert($studentID,$class[0]['id'],$class[0]['idmakul'],'a',$scoreID);
					}
				}
				else
				{
					if($this->session->userdata('username'))
					{
						$studentID = $this->session->userdata('username');
					}
					else if(get_cookie('username'))
					{
						$studentID = get_cookie('username');
					}
					$scoreID = $this->Nilai_Model->insert($studentID);
					$this->Kelas_Mahasiswa_Model->insert($studentID,$class[0]['id'],$class[0]['idmakul'],'a',$scoreID);
				}
			}
		}
	
		public function getSchedule()
		{
			$studentID = $this->session->userdata('username');
			$schedule = $this->Kelas_Mahasiswa_Model->getSchedule($studentID);
			$tmpl = array ( 'table_open'  => '<table class="table">');
			$this->table->set_template($tmpl);
			$this->table->set_heading('Kode Matkul','Nama Matkul','Dosen Pengajar','Hari','Jam Mulai','Ruangan');
			$semesterNow = $this->Data_Umum_Model->getSemester();
			foreach($schedule as $row)
			{
				$hari='-';
				if($row->hari == "1")
				{
					$hari='Senin';
				}
				else if($row->hari == "2")
				{
					$hari='Selasa';
				}
				else if($row->hari == "3")
				{
					$hari='Rabu';
				}
				else if($row->hari == "4")
				{
					$hari='Kamis';
				}
				else if($row->hari == "5")
				{
					$hari='Jumaat';
				}
				$rowData = array($row->id,$row->nama,$row->dosen, $hari,$row->jam_mulai,$row->ruangan);
				
				if($row->berpraktikum == 1)
				{
					$rowData = array('<b>'.$row->id .'</b>','<b>'.$row->nama .'</b>' ,'<b>'.$row->dosen .'</b>', '<b>'. $hari .'</b>', '<b>'.$row->jam_mulai .'</b>', '<b>'. $row->ruangan .'</b>');	
				}
				$this->table->add_row(array('data'=>$rowData,'class'=>'table'));
			}
			
			return $this->table->generate();
		}
		
		public function readMessage()
		{
			$this->Notifikasi_Model->readAll();
			$code='';
			foreach($this->Notifikasi_Model->getNotification() as $row)
			{
				$code .= '<div class="notification-item">';
				$code .= '<h4 class="item-title">'. $row->judul .' - ' . $this->Dosen_Model->getNameLecture($row->dosen_nip) . '</h4>';
				$code .= '<p class="item-info">' . $row->isi . '</p>';
				$code .= '</div>';
			}
			print $code;
		}
	}

?>