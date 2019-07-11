<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_Pegawai extends CI_Model {
    
    var $table = 'pegawai';
    var $pkey = 'pegawai_id';

    public function __construct(){
        parent::__construct();
        $this->load->database();
    }

    function get_list($limit, $offset) {
        if ($offset > 0) {
            $offset = ($offset - 1) * $limit;
        }
        $this->db->order_by('nip ASC, nama_pegawai ASC');
        $result['rows'] = $this->db->get($this->table, $limit, $offset);
        $result['num_rows'] = $this->db->count_all_results($this->table);
        return $result;
    }

    public function delete($id){
        $this->db->where_in($this->pkey, $id);
        $this->db->delete($this->table);
    }
    
}
