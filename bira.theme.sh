#! bash oh-my-bash.module
# Port from oh-my-zsh's 'bira' theme


function _omb_theme_PROMPT_COMMAND() {
  local python_venv
  _omb_prompt_get_python_venv

  PS1="${_omb_prompt_bold_white}╭─${_omb_prompt_bold_green}\u@\h ${_omb_prompt_bold_navy}\w $(scm_prompt_info)$python_venv\n${_omb_prompt_bold_white}╰─${_omb_prompt_bold_white}\$${_omb_prompt_white} "
}

# scm theming
SCM_GIT_SHOW_DETAILS=false
SCM_THEME_PROMPT_DIRTY="${_omb_prompt_red}●"
SCM_THEME_PROMPT_CLEAN=""
SCM_THEME_PROMPT_PREFIX="${_omb_prompt_yellow}<"
SCM_THEME_PROMPT_SUFFIX="${_omb_prompt_yellow}>${_omb_prompt_reset_color}"

OMB_PROMPT_SHOW_PYTHON_VENV=${OMB_PROMPT_SHOW_PYTHON_VENV:-false}
OMB_PROMPT_VIRTUALENV_FORMAT="${_omb_prompt_bold_green}(%s)${_omb_prompt_reset_color}"

_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
