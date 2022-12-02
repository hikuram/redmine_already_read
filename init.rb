require 'redmine'
require File.expand_path('../lib/already_read/issue_patch', __FILE__)
require File.expand_path('../lib/already_read/issues_controller_patch', __FILE__)
require File.expand_path('../lib/already_read/user_patch', __FILE__)
require File.expand_path('../lib/already_read/issue_query_patch', __FILE__)
require File.expand_path('../lib/already_read/menu_manager_patch', __FILE__)
require File.expand_path('../lib/already_read/view_hook', __FILE__)

Redmine::Plugin.register :redmine_already_read do
  name 'Redmine Already Read plugin'
  author 'OZAWA Yasuhiro'
  description 'Markup read issues.'
  version '0.0.5'
  url 'https://github.com/ameya86/redmine_already_read'
  author_url 'http://blog.livedoor.jp/ameya86/'

  # "活動"にチケットイベントとして登録
  activity_provider :issues, :class_name => 'AlreadyRead'
end
