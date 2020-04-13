plan role::apply_base (
  TargetSpec $targets,
)
{
  # Ensure puppet tools are installed
  apply_prep($targets)

  apply($targets) {
    class { 'profile::base': }
  }
}
