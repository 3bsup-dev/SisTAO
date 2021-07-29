<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Classes\Tools;
use App\Models\ApplicationsModel;
use App\Models\CitiesModel;
use App\Models\CompanyModel;
use App\Models\DepartamentModel;
use App\Models\LoginApplicationModel;
use App\Models\LoginModel;
use App\Models\RanksModel;
use App\Models\UserModel;

class ViewController extends Controller
{
    //###################{Classe Tools}###################//
    private $Tools;
    public function __construct()
    {
        $this->Tools = new Tools();
    }
    //####################################################//
    //========================{ PAINEL DE CONTROLE }===========================//
    //======={ HOME }===============//
    public function home()
    {
        $data = [
            'apps' => LoginApplicationModel::with('apps')->where('login_id', session('user')['id'])->get(),
        ];
        return view('control-panel.home', $data);
    }
    //==========={ PERFIL }===========//
    public function profile($id = '')
    {


        if ($id) {
            $data = [
                'user_data' => $this->Tools->user_data($id), //Buscando informações do usuário
            ];
            return view('control-panel.user_profile', $data);
        } else {
            $data = [
                'user_data' => $this->Tools->user_data(session('user')['id']), //Buscando informações do usuário logado
            ];
            return view('control-panel.profile', $data);
        };
    }
    //======={  EDITAR PERFIL }========//
    public function edit_profile($id = '')
    {


        //Buscando todas cidades
        $all_cities = CitiesModel::all();
        //Buscando toda tabela hierárquica
        $all_ranks = RanksModel::all();
        //Buscando companias
        $all_company = CompanyModel::all();
        //Buscando companias
        $all_departament = DepartamentModel::all();

        if ($id) {
            session()->flash('id', $id);
            $data = [
                'apps' => ApplicationsModel::with('profiles')->get(),
                'all_ranks' => $all_ranks,
                'all_departament' => $all_departament,
                'all_company' => $all_company,
                'all_cities' => $all_cities,
                'user_data' => $this->Tools->user_data($id), //Buscando informações do usuário
            ];
            return view('control-panel.edit_user_profile', $data);
        } else {
            $data = [
                'all_ranks' => $all_ranks,
                'all_departament' => $all_departament,
                'all_company' => $all_company,
                'all_cities' => $all_cities,
                'user_data' => $this->Tools->user_data(session('user')['id']), //Buscando informações do usuário logado
            ];
            return view('control-panel.edit_profile', $data);
        };
    }

    //======={ ALTERAR SENHA }========//
    public function alt_password()
    {

        $data = [
            'user_data' => $this->Tools->user_data(session('user')['id']),
        ];

        return view('control-panel.alt_password', $data);
    }
    //========================={ LISTA USUÁRIOS }==============================//
    public function users_list()
    {
        $data = [
            'users' => $this->Tools->user_data('all'),
        ];

        return view('control-panel.users_list', $data);
    }
    //==========={ CRIAR USUÁRIO }=============//
    public function create_user()
    {
        //Buscando todas cidades
        $all_cities = CitiesModel::all();
        //Buscando toda tabela hierárquica
        $all_ranks = RanksModel::all();
        //Buscando companias
        $all_company = CompanyModel::all();
        //Buscando companias
        $all_departament = DepartamentModel::all();



        $data = [
            'all_ranks' => $all_ranks,
            'all_departament' => $all_departament,
            'all_company' => $all_company,
            'all_cities' => $all_cities
        ];

        return view('control-panel.create-profile', $data);
    }
    //================================={ Salvar alteraçao de tema }====================================//
    public function theme($sts)
    {
        $user = LoginModel::where('users_id',session('user')['id'])->first();

        switch ($sts) {
            case '1':
                $user->theme = 1;
                $user->save();
                session(['theme' => 1]);
                break;

            default:
                $user->theme = 0;
                $user->save();
                session(['theme' => 0]);
                break;
        }

    }
    //================================={ Lista de aplicativos }====================================//
    public function app_list()
    {
        $apps = ApplicationsModel::all();

        return view('control-panel.app_list', ['apps' => $apps]);
    }
    //================================={  }====================================//
    //================================={  }====================================//
    //================================={  }====================================//
    //================================={  }====================================//
    //================================={  }====================================//
    //=========================================================================//

}
