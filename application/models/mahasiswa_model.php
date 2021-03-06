<?php
	class Mahasiswa_Model extends CI_Model
	{
		/* -----------------------------------------------------
		Function __construct()
		Mengeload Inisialisasi Awal Model class_model
		Input/Output : -
		----------------------------------------------------- */
		public function __construct(){
			parent::__construct();
		}
		
		/* -----------------------------------------------------
		Function getAllStudent
		Mengambil data mahasiswa di tabel mahasiswa
		Input: -
		Output: Array Raw Mahasiswa
		----------------------------------------------------- */
		public function getAllStudent(){
			$sql = $this->db->get('mahasiswa');
			return $sql->result();
		}
		
		/* -----------------------------------------------------
		Function isStudent
		Mengecek apakah nrp sekian merupakan mahasiswa dari tabel mahasiswa
		Input: nrp mahasiswa
		Output: jika benar maka bernilai true, jika salah false
		----------------------------------------------------- */
		public function isStudent($nrp){
			$this->db->get_where('mahasiswa',array('nrp'=>$nrp));
			if($this->db->affected_rows()>0){
				return true;
			}
			else{
				return false;
			}
		}
		
		/* -----------------------------------------------------
		Function isPassword
		Mengecek apakah nrp sekian dengan password sekian apakah sama
		di tabel mahasiswa
		Input: nrp mahasiswa, pass mahasiswa
		Output: jika benar maka bernilai true, jika salah false
		----------------------------------------------------- */
		public function isPassword($nrp,$pass)
		{
			$result = $this->db->get_where('user',array('id'=>$nrp));
			$row = $result->row();
			if($this->db->affected_rows()>0){
				if($row->password == $pass)
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			else
			{
				return false;
			}
		}
		
		/* -----------------------------------------------------
		Function getDetailStudent
		Digunakan untuk mendapatkan detail mahasiswa
		Input: nrp mahasiswa
		Output: data detail mahasiswa
		----------------------------------------------------- */
		public function getDetailStudent($nrp)
		{
			$this->db->select('nama,nrp,sks,ipk');
			$result = $this->db->get_where('mahasiswa',array('nrp'=>$nrp));
			return $result->row();
		}
		
		/* -----------------------------------------------------
		Function getNameStudent
		Digunakan untuk mendapatkan nama mahasiswa
		Input: nrp mahasiswa
		Output: nama mahasiswa
		----------------------------------------------------- */
		public function getNameStudent($nrp)
		{
			$result = $this->db->get_where('mahasiswa',array('nrp'=>$nrp))->row();
			return $result->nama;
		}
		
		/* -----------------------------------------------------
		Function getStatusConfirm
		Digunakan untuk mendapatkan apakah mahasiswa 
		sudah perwalian belum
		Input: -
		Output: true jika belum, sedangkan jika sudah maka false
		----------------------------------------------------- */
		public function getStatusConfirm()
		{
			$studentID = $this->session->userdata('username');
			$result = $this->db->get_where('mahasiswa',array('nrp'=>$studentID))->row();
			if($result->status_perwalian == 0){
				return true;
			}else{
				return false;
			}
		}
		
		/* -----------------------------------------------------
		Function setAfterStudyPlan
		Digunakan untuk mengset mahasiswa sudah melakukan perwalian
		Input: -
		Output: -
		----------------------------------------------------- */
		public function setAfterStudyPlan()
		{
			$studentID = $this->session->userdata('username');
			$data=array('status_perwalian'=>1);
			$this->db->where('nrp',$studentID);
			$this->db->update('mahasiswa',$data);
			return $this->db->affected_rows();
		}
		
		/* -----------------------------------------------------
		Function getLecture
		Digunakan untuk mendapatkan nip dosen wali
		Input: -
		Output: nip dosenwali
		----------------------------------------------------- */
		public function getLecture()
		{
			$studentID = $this->session->userdata('username');
			$this->db->where('nrp',$studentID);
			$result = $this->db->get('mahasiswa')->row();
			return $result->nip_dosen;
		}
		
		// KEPERLUAN PMB----------------------->
		/* -----------------------------------------------------
		Function getDataMahasiswaByNRP
		Untuk mendapatkan data - data yg umum mahasiswa seperti jumlah sks, jurusan
		Input: nrp mahasiswa
		Output: data mahasiswa
		----------------------------------------------------- */
		function getDataMahasiswaByNRP($nrp)
		{
			$this->db->select('m.nomor_registrasi_id, m.nrp, m.nama, m.sks, m.semester, i.jurusan, i.kategori, i.harga_usp');
			$this->db->from('mahasiswa m, informasi_kurikulum i');
			$this->db->where('m.nrp', $nrp);
			$this->db->where('i.id = m.informasi_kurikulum_id');
			return $this->db->get()->result();
		}
		
		/* -----------------------------------------------------
		Function getDetailStudent
		Digunakan untuk mendapatkan detail mahasiswa
		Input: nrp mahasiswa
		Output: data detail mahasiswa
		----------------------------------------------------- */
		function getDataCalonMahasiswaByEmail($email)
		{
			$this->db->select('c.nomor_registrasi_id, c.nama, c.informasi_kurikulum_id, i.jurusan, i.kategori, i.harga_usp, c.status');
			$this->db->from('calon_mahasiswa c, informasi_kurikulum i');
			$this->db->where('c.email', $email);
			$this->db->where('i.id = c.informasi_kurikulum_id');
			return $this->db->get()->result();
		}
		
		/* -----------------------------------------------------
		Function getDetailStudent
		Digunakan untuk mendapatkan detail mahasiswa
		Input: nomor registrasi calon mahasiswa
		Output: data detail mahasiswa
		----------------------------------------------------- */
		function getDataCalonMahasiswaByNomorRegistrasi($nomor_registrasi_id)
		{
			$this->db->select('c.nomor_registrasi_id, c.nama, c.informasi_kurikulum_id, i.jurusan, i.kategori, i.harga_usp, c.status, c.ijazah, c.skhun');
			$this->db->from('calon_mahasiswa c, informasi_kurikulum i');
			$this->db->where('c.nomor_registrasi_id', $nomor_registrasi_id);
			$this->db->where('i.id = c.informasi_kurikulum_id');
			return $this->db->get()->result();
		}
		
		function getFullDataCalonMahasiswaByEmail($email)
		{
			$this->db->select('c.nomor_registrasi_id, c.nama, i.jurusan, i.kategori, c.jenis_kelamin, c.tempat_lahir, c.tanggal_lahir,
					c.kewarganegaraan, c.status_sosial, c.agama, c.alamat, c.provinsi, c.kota, c.kodepos, c.nomor_hp, c.email,
					c.nama_wali, c.alamat_wali, c.provinsi_wali, c.kota_wali, c.nomor_telp_wali, c.pekerjaan_wali, c.informasi_kurikulum_id, c.status
			');
			$this->db->from('calon_mahasiswa c, informasi_kurikulum i');
			$this->db->where('c.email', $email);
			$this->db->where('i.id = c.informasi_kurikulum_id');
			
			return $this->db->get()->result();
		}
		
		function getFullDataCalonMahasiswaByNomorRegistrasi($nomor_registrasi)
		{
			$this->db->select('c.nama, i.jurusan, i.kategori, c.jenis_kelamin, c.tempat_lahir, c.tanggal_lahir,
					c.kewarganegaraan, c.status_sosial, c.agama, c.alamat, c.provinsi, c.kota, c.kodepos, c.nomor_hp, c.email,
					c.nama_wali, c.alamat_wali, c.provinsi_wali, c.kota_wali, c.nomor_telp_wali, c.pekerjaan_wali
			');
			$this->db->from('calon_mahasiswa c, informasi_kurikulum i');
			$this->db->where('c.nomor_registrasi_id', $nomor_registrasi);
			$this->db->where('i.id = c.informasi_kurikulum_id');
			
			return $this->db->get()->result();
		}
		
		function getFullDataMahasiswaByNRP($nrp)
		{
			$this->db->select('m.nrp, m.nomor_registrasi_id, m.nama, i.jurusan, i.kategori, m.jenis_kelamin, m.tempat_lahir, m.tanggal_lahir,
					m.kewarganegaraan, m.status_sosial, m.agama, m.alamat, m.provinsi, m.kota, m.kodepos, m.nomor_hp, m.email,
					m.nama_wali, m.alamat_wali, m.provinsi_wali, m.kota_wali, m.nomor_telp_wali, m.pekerjaan_wali
			');
			$this->db->from('mahasiswa m, informasi_kurikulum i');
			$this->db->where('m.nrp', $nrp);
			$this->db->where('i.id = m.informasi_kurikulum_id');
			
			return $this->db->get()->result();
		}
		
		function updateCalonMahasiswa($data)
		{
			$updateData = array(
				'nama' => $data->nama,
				'kewarganegaraan' => $data->kewarganegaraan,
				'status_sosial' => $data->status_sosial,
				'agama' => $data->agama,
				'alamat' => $data->alamat,
				'provinsi' => $data->provinsi,
				'kota' => $data->kota,
				'kodepos' => $data->kodepos,
				'nomor_hp' => $data->nomor_hp,
				'nama_wali' => $data->nama_wali,
				'alamat_wali' => $data->alamat_wali,
				'provinsi_wali' => $data->provinsi_wali,
				'kota_wali' => $data->kota_wali,
				'nomor_telp_wali' => $data->nomor_telp_wali,
				'pekerjaan_wali' => $data->pekerjaan_wali
			);
			$this->db->where('nomor_registrasi_id', $data->nomor_registrasi_id);
			$this->db->update('calon_mahasiswa', $updateData);
		}
		
		function updateMahasiswaByNomorRegistrasi($data)
		{
			$updateData = array(
				'nama' => $data->nama,
				'kewarganegaraan' => $data->kewarganegaraan,
				'status_sosial' => $data->status_sosial,
				'agama' => $data->agama,
				'alamat' => $data->alamat,
				'provinsi' => $data->provinsi,
				'kota' => $data->kota,
				'kodepos' => $data->kodepos,
				'nomor_hp' => $data->nomor_hp,
				'nama_wali' => $data->nama_wali,
				'alamat_wali' => $data->alamat_wali,
				'provinsi_wali' => $data->provinsi_wali,
				'kota_wali' => $data->kota_wali,
				'nomor_telp_wali' => $data->nomor_telp_wali,
				'pekerjaan_wali' => $data->pekerjaan_wali
			);
			$this->db->where('nomor_registrasi_id', $data->nomor_registrasi_id);
			$this->db->update('mahasiswa', $updateData);
		}
		
		function getBiodata_verifikasiById($id)
		{
			$this->db->where("id", $id);
			return $this->db->get("biodata_verifikasi")->result();
		}
		
		function insertBiodata_verifikasi($data)
		{
			$insertData = array(
				'id' => $data['id'],
				'nomor_registrasi_id' => $data['nomor_registrasi_id'],
				'calon_mahasiswa' => $data['calon_mahasiswa'],
				'nama' => $data['nama'],
				'kewarganegaraan' => $data['kewarganegaraan'],
				'status_sosial' => $data['status_sosial'],
				'agama' => $data['agama'],
				'alamat' => $data['alamat'],
				'provinsi' => $data['provinsi'],
				'kota' => $data['kota'],
				'kodepos' => $data['kodepos'],
				'nomor_hp' => $data['nomor_hp'],
				'nama_wali' => $data['nama_wali'],
				'alamat_wali' => $data['alamat_wali'],
				'provinsi_wali' => $data['provinsi_wali'],
				'kota_wali' => $data['kota_wali'],
				'nomor_telp_wali' => $data['nomor_telp_wali'],
				'pekerjaan_wali' => $data['pekerjaan_wali']
			);
			
			$this->db->insert("biodata_verifikasi", $insertData);
		}
		
		function deleteBiodata_verifikasi($nomor_registrasi_id)
		{
			$this->db->where("nomor_registrasi_id", $nomor_registrasi_id);
			$this->db->delete("biodata_verifikasi");
		}
		
		function upload_ijazah($data)
		{
			$updateData = array(
					"ijazah" => $data["ijazah"]
			);
			$this->db->where("nomor_registrasi_id", $data["nomor_registrasi_id"]);
			$this->db->update("calon_mahasiswa", $updateData);
		}
		
		function upload_skhun($data)
		{
			$updateData = array(
					"skhun" => $data["skhun"]
			);
			$this->db->where("nomor_registrasi_id", $data["nomor_registrasi_id"]);
			$this->db->update("calon_mahasiswa", $updateData);
		}
		
		function getTagihan($nrp, $semester)
		{/*
			$this->db->select('*');
			$this->db->from('pembayaran');
			$this->db->where('mahasiswa_nrp', $nrp);
			$this->db->where('semester',$semester);
			return $this->db->get()->result();*/
		}
		
		function getAllPembayaran($nrp,$semester)
		{/*
			$this->db->select('*');
			$this->db->from('pembayaran');
			$this->db->where('mahasiswa_nrp', $nrp);
			$this->db->where('semester =',$semester);
			$this->db->where('status !=','0');
			return $this->db->get()->result();*/
		}
		// <--------------------END OF KEPERLUAN PMB
	}
?>