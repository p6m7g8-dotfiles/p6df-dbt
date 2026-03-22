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
    dbt-labs/dbt-agent-skills
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

  uv tool install dbt-core --with dbt-postgres --with dbt-snowflake

  p6_return_void
}
