# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::dbt::deps()
#
#>
######################################################################
p6df::modules::dbt::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-python
  )
}

######################################################################
#<
#
# Function: p6df::modules::dbt::langs()
#
#>
######################################################################
p6df::modules::dbt::langs() {

  pip install dbt-postgres
  pip install dbt-snowflake
}
