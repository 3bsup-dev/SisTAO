function check_register() {
            var Name = name.value;
            var ProfessionalName = professional_name.value;
            var IdtMil = idt_mil.value;
            var DepartamentId = departament_id.value;
            var RankId = rank_id.value;
            var CompanyId = company_id.value;
            var Pass = password.value;
            var PassConf = conf_password.value;

            if (Name == "" || ProfessionalName == "" || IdtMil == "" || DepartamentId == "" || RankId == "" || CompanyId ==
                "" || Pass == "" || PassConf ==
                "" ) {

                alert("Preencha todos os campos.");
                return false;
            }

            if (Pass.length < 8) {
                alert("A senha deve conter no minimo 8 caracteres");
                return false;
            }

            if (Pass != PassConf) {
                alert("As senhas não coincidem.");
                return false;
            }


          return stepper.next();
        }