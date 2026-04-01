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
# Function: p6df::modules::dbt::home::symlinks()
#
#  Environment:	 HOME P6_DFZ_SRC_DIR
#>
######################################################################
p6df::modules::dbt::home::symlinks() {

  p6_file_symlink "$P6_DFZ_SRC_DIR/dbt-labs/dbt-agent-skills/skills/dbt/skills/adding-dbt-unit-test"                              "$HOME/.claude/skills/adding-dbt-unit-test"
  p6_file_symlink "$P6_DFZ_SRC_DIR/dbt-labs/dbt-agent-skills/skills/dbt/skills/answering-natural-language-questions-with-dbt"     "$HOME/.claude/skills/answering-natural-language-questions-with-dbt"
  p6_file_symlink "$P6_DFZ_SRC_DIR/dbt-labs/dbt-agent-skills/skills/dbt/skills/building-dbt-semantic-layer"                      "$HOME/.claude/skills/building-dbt-semantic-layer"
  p6_file_symlink "$P6_DFZ_SRC_DIR/dbt-labs/dbt-agent-skills/skills/dbt/skills/configuring-dbt-mcp-server"                       "$HOME/.claude/skills/configuring-dbt-mcp-server"
  p6_file_symlink "$P6_DFZ_SRC_DIR/dbt-labs/dbt-agent-skills/skills/dbt-extras/skills/creating-mermaid-dbt-dag"                  "$HOME/.claude/skills/creating-mermaid-dbt-dag"
  p6_file_symlink "$P6_DFZ_SRC_DIR/dbt-labs/dbt-agent-skills/skills/dbt/skills/fetching-dbt-docs"                                "$HOME/.claude/skills/fetching-dbt-docs"
  p6_file_symlink "$P6_DFZ_SRC_DIR/dbt-labs/dbt-agent-skills/skills/dbt-migration/skills/migrating-dbt-core-to-fusion"           "$HOME/.claude/skills/migrating-dbt-core-to-fusion"
  p6_file_symlink "$P6_DFZ_SRC_DIR/dbt-labs/dbt-agent-skills/skills/dbt-migration/skills/migrating-dbt-project-across-platforms" "$HOME/.claude/skills/migrating-dbt-project-across-platforms"
  p6_file_symlink "$P6_DFZ_SRC_DIR/dbt-labs/dbt-agent-skills/skills/dbt/skills/running-dbt-commands"                             "$HOME/.claude/skills/running-dbt-commands"
  p6_file_symlink "$P6_DFZ_SRC_DIR/dbt-labs/dbt-agent-skills/skills/dbt/skills/troubleshooting-dbt-job-errors"                   "$HOME/.claude/skills/troubleshooting-dbt-job-errors"
  p6_file_symlink "$P6_DFZ_SRC_DIR/dbt-labs/dbt-agent-skills/skills/dbt/skills/using-dbt-for-analytics-engineering"              "$HOME/.claude/skills/using-dbt-for-analytics-engineering"

  p6_return_void
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

######################################################################
#<
#
# Function: words dbt $DBT_PROFILES_DIR = p6df::modules::dbt::profile::mod()
#
#  Returns:
#	words - dbt $DBT_PROFILES_DIR
#
#  Environment:	 DBT_PROFILES_DIR
#>
######################################################################
p6df::modules::dbt::profile::mod() {

  p6_return_words 'dbt' '$DBT_PROFILES_DIR'
}

