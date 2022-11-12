prepare = lambda do
  RedminePerProjectFormatting.apply_patch
end

prepare.call if Redmine.const_defined?(:PluginLoader)
Rails.application.config.to_prepare(&prepare)

Redmine::Plugin.register :redmine_per_project_formatting do
  name 'Redmine per project formatting plugin'
  author 'Akihiro Ono'
  description 'Redmine plugin for per-project text formatting'
  version '0.1.0'
  requires_redmine version_or_higher: '4.0.0'
  url 'https://github.com/a-ono/redmine_per_project_formatting'
end
