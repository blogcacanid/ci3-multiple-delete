<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pegawai extends CI_Controller {
    private $limit = 10;
    var $module_name = 'pegawai';
	
    public function __construct(){
        parent::__construct();
        $this->load->model(array('M_Pegawai'=>'pegawai'));
    }
	
    public function index($offset=0){
        $result                 = $this->pegawai->get_list($this->limit, $offset);
        $data['sSQL']           = $result['rows'];
        $data['num_results']    = $result['num_rows'];
        // load pagination library
        $this->load->library('pagination');
        $config = array(
            'base_url'          => site_url($this->module_name.'/index'),
            'total_rows'        => $data['num_results'],
            'per_page'          => $this->limit,
            'uri_segment'       => 3,
            'use_page_numbers'  => TRUE,
            'num_links'         => 5,
            'first_link'        => '<i class="fa fa-fast-backward" aria-hidden="true"></i>',
            'last_link'         => '<i class="fa fa-fast-forward" aria-hidden="true"></i>',
            'next_link'         => '<i class="fa fa-forward" aria-hidden="true"></i>',
            'prev_link'         => '<i class="fa fa-backward" aria-hidden="true"></i>',
            // Menyesuaikan untuk Twitter Bootstrap 3.2.0.
            'full_tag_open'     => '<ul class="pagination pagination-sm">',
            'full_tag_close'    => '</ul>',
            'num_tag_open'      => '<li>',
            'num_tag_close'     => '</li>',
            'cur_tag_open'      => '<li class="disabled"><li class="active"><a href="#">',
            'cur_tag_close'     => '<span class="sr-only"></span></a></li>',
            'next_tag_open'     => '<li>',
            'next_tag_close'    => '</li>',
            'prev_tag_open'     => '<li>',
            'prev_tag_close'    => '</li>',
            'first_tag_open'    => '<li>',
            'first_tag_close'   => '</li>',
            'last_tag_open'     => '<li>',
            'last_tag_close'    => '</li>',
        );
        $this->pagination->initialize($config);
        $data['pagination'] = $this->pagination->create_links();
        $this->load->view($this->module_name,$data); //memanggil view 
    }
    
    public function delete(){
        $id = $_POST['pegawai_id']; // Ambil data NIS yang dikirim oleh view.php melalui form submit
        $this->pegawai->delete($id); // Panggil fungsi delete dari model
        redirect('pegawai');
    }
    
}
