#!/bin/bash

get_mysql_root_password() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese la contraseña para el usuario de Implementación y Base de datos (No use caracteres especiales):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " mysql_root_password
}

get_link_git() {
  
  print_banner
  printf "${WHITE} 💻 Ingresa el enlace GITHUB de tu Z1crm que deseas instalar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " link_git
}

get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese un nombre para la Instancia/Empresa que se instalará (No use espacios ni caracteres especiales, use letras minúsculas;):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

get_max_whats() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el número de conexiones/Que ${instancia_add} puedas registrarte:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_whats
}

get_max_user() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese la cantidad de Usuarios que se ${instancia_add} puedan registrarse:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_user
}

get_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el dominio FRONTEND/PAINEL para el ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el dominio BACKEND/API para el ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_url
}

get_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Introduzca el puerto FRONTEND para el ${instancia_add}; Ej: 3000 A 3999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_port
}


get_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el puerto BACKEND para esta instancia; Ej: 4000 A 4999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_port
}

get_redis_port() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el puerto REDIS/AGENDAMENTO MSG para el ${instancia_add}; Ej: 5000 A 5999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " redis_port
}

get_empresa_delete() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el nombre de la Instancia/Empresa que se eliminará (Ingrese el mismo nombre que cuando se instaló):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_delete
}

get_empresa_atualizar() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el nombre de la Instancia/Empresa que desea Actualizar (Ingrese el mismo nombre que cuando lo instaló):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_atualizar
}

get_empresa_bloquear() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el nombre de la Instancia/Empresa que desea bloquear (Ingrese el mismo nombre que cuando lo instaló):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_bloquear
}

get_empresa_desbloquear() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el nombre de la Instancia/Empresa que desea desbloquear (Ingrese el mismo nombre que cuando lo instaló):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_desbloquear
}

get_empresa_dominio() {
  
  print_banner
  printf "${WHITE} 💻 Ingresa el nombre de la Instancia/Empresa a la que deseas Cambiar los Dominios (Ojo, para cambiar los dominios necesitas ingresar ambos, incluso si solo vas a cambiar 1):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_dominio
}

get_alter_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el dominio NEW FRONTEND/PAINEL para el ${empresa_dominio}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " alter_frontend_url
}

get_alter_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el NUEVO dominio BACKEND/API para el ${empresa_dominio}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " alter_backend_url
}

get_alter_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese al puerto FRONTEND de la Instancia/Empresa ${empresa_dominio}; El puerto debe ser el mismo que el especificado durante la instalación. ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " alter_frontend_port
}


get_alter_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese al puerto BACKEND de la Instancia/Empresa ${empresa_dominio}; El puerto debe ser el mismo que el especificado durante la instalación. ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " alter_backend_port
}


get_urls() {
  get_mysql_root_password
  get_link_git
  get_instancia_add
  get_max_whats
  get_max_user
  get_frontend_url
  get_backend_url
  get_frontend_port
  get_backend_port
  get_redis_port
}

software_update() {
  get_empresa_atualizar
  frontend_update
  backend_update
}

software_delete() {
  get_empresa_delete
  deletar_tudo
}

software_bloquear() {
  get_empresa_bloquear
  configurar_bloqueio
}

software_desbloquear() {
  get_empresa_desbloquear
  configurar_desbloqueio
}

software_dominio() {
  get_empresa_dominio
  get_alter_frontend_url
  get_alter_backend_url
  get_alter_frontend_port
  get_alter_backend_port
  configurar_dominio
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Bienvenido a Z1crm Manager - Servicio ilimitado, seleccione la siguiente acción a continuación!${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [0] Instalar Z1crm\n"
  printf "   [1] Actualizar Z1crm\n"
  printf "   [2] Eliminar Z1crm\n"
  printf "   [3] Bloquear Z1crm\n"
  printf "   [4] Desbloquear Z1crm\n"
  printf "   [5] Alter. dominio Z1crm\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    0) get_urls ;;

    1) 
      software_update 
      exit
      ;;

    2) 
      software_delete 
      exit
      ;;
    3) 
      software_bloquear 
      exit
      ;;
    4) 
      software_desbloquear 
      exit
      ;;
    5) 
      software_dominio 
      exit
      ;;        

    *) exit ;;
  esac
}


