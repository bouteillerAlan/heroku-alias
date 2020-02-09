# general
alias h='heroku'
alias hauto='heroku autocomplete $(echo $SHELL)'
alias hl='heroku local'

# config
alias hc='heroku config'
alias hca='heroku config -a'
alias hcr='heroku config -r'
alias hcs='heroku config:set'
alias hcu='heroku config:unset'

hcfile() {
  echo 'Which platform [-r/a name] ?'
  read platform
  echo 'Which file ?'
  read file
  while read line;
    do heroku config:set "$platform" "$line";
  done < "$file"
}

# apps and favorites
alias ha='heroku apps'
alias hpop='heroku create'
alias hkill='heroku apps:destroy'
alias hlog='heroku apps:errors'
alias hfav='heroku apps:favorites'
alias hfava='heroku apps:favorites:add'
alias hfavr='heroku apps:favorites:remove'
alias hi='heroku apps:info'
alias hir='heroku apps:info -r'
alias hia='heroku apps:info -a'

# auth
alias h2fa='heroku auth:2fa'
alias h2far='heroku auth:2fa:disable'

# access
alias hac='heroku access'
alias hacr='heroku access -r'
alias haca='heroku access -a'
alias hadd='heroku access:add'
alias hdel='heroku access:remove'
alias hup='heroku access:update'

# addons
alias hads='heroku addons -A'
alias hada='heroku addons -a'
alias hadr='heroku addons -r'
alias hadat='heroku addons:attach'
alias hadc='heroku addons:create'
alias hadel='heroku addons:destroy'
alias hadde='heroku addons:detach'
alias hadoc='heroku addons:docs'

# login
alias hin='heroku login'
alias hout='heroku logout'
alias hi='heroku login -i'
alias hwho='heroku auth:whoami'

# authorizations
alias hth='heroku authorizations'
alias hthadd='heroku authorizations:create'
alias hthif='heroku authorizations:info'
alias hthdel='heroku authorizations:revoke'
alias hthrot='heroku authorizations:rotate'
alias hthup='heroku authorizations:update'

# plugins
alias hp='heroku plugins'
