class IdsToBigints < ActiveRecord::Migration[5.1]
  def up
    change_column :account_domain_blocks, :account_id, :bigint
    change_column :account_domain_blocks, :id, :bigint
    change_column :accounts, :id, :bigint
    change_column :blocks, :account_id, :bigint
    change_column :blocks, :id, :bigint
    change_column :blocks, :target_account_id, :bigint
    change_column :conversation_mutes, :account_id, :bigint
    change_column :conversation_mutes, :id, :bigint
    change_column :deprecated_preview_cards, :id, :bigint if table_exists?(:deprecated_preview_cards)
    change_column :domain_blocks, :id, :bigint
    change_column :favourites, :account_id, :bigint
    change_column :favourites, :id, :bigint
    change_column :favourites, :status_id, :bigint
    change_column :follow_requests, :account_id, :bigint
    change_column :follow_requests, :id, :bigint
    change_column :follow_requests, :target_account_id, :bigint
    change_column :follows, :account_id, :bigint
    change_column :follows, :id, :bigint
    change_column :follows, :target_account_id, :bigint
    change_column :imports, :account_id, :bigint
    change_column :imports, :id, :bigint
    change_column :media_attachments, :account_id, :bigint
    change_column :media_attachments, :id, :bigint
    change_column :mentions, :account_id, :bigint
    change_column :mentions, :id, :bigint
    change_column :mutes, :account_id, :bigint
    change_column :mutes, :id, :bigint
    change_column :mutes, :target_account_id, :bigint
    change_column :notifications, :account_id, :bigint
    change_column :notifications, :from_account_id, :bigint
    change_column :notifications, :id, :bigint
    change_column :oauth_access_grants, :application_id, :bigint
    change_column :oauth_access_grants, :id, :bigint
    change_column :oauth_access_grants, :resource_owner_id, :bigint
    change_column :oauth_access_tokens, :application_id, :bigint
    change_column :oauth_access_tokens, :id, :bigint
    change_column :oauth_access_tokens, :resource_owner_id, :bigint
    change_column :oauth_applications, :id, :bigint
    change_column :oauth_applications, :owner_id, :bigint
    change_column :reports, :account_id, :bigint
    change_column :reports, :action_taken_by_account_id, :bigint
    change_column :reports, :id, :bigint
    change_column :reports, :target_account_id, :bigint
    change_column :session_activations, :access_token_id, :bigint
    change_column :session_activations, :user_id, :bigint
    change_column :session_activations, :web_push_subscription_id, :bigint
    change_column :settings, :id, :bigint
    change_column :settings, :thing_id, :bigint
    change_column :statuses, :account_id, :bigint
    change_column :statuses, :application_id, :bigint
    change_column :statuses, :in_reply_to_account_id, :bigint
    change_column :stream_entries, :account_id, :bigint
    change_column :stream_entries, :id, :bigint
    change_column :subscriptions, :account_id, :bigint
    change_column :subscriptions, :id, :bigint
    change_column :tags, :id, :bigint
    change_column :users, :account_id, :bigint
    change_column :users, :id, :bigint
    change_column :web_settings, :id, :bigint
    change_column :web_settings, :user_id, :bigint
  end

  def down
    change_column :account_domain_blocks, :account_id, :integer
    change_column :account_domain_blocks, :id, :integer
    change_column :accounts, :id, :integer
    change_column :blocks, :account_id, :integer
    change_column :blocks, :id, :integer
    change_column :blocks, :target_account_id, :integer
    change_column :conversation_mutes, :account_id, :integer
    change_column :conversation_mutes, :id, :integer
    change_column :deprecated_preview_cards, :id, :integer if table_exists?(:deprecated_preview_cards)
    change_column :domain_blocks, :id, :integer
    change_column :favourites, :account_id, :integer
    change_column :favourites, :id, :integer
    change_column :favourites, :status_id, :integer
    change_column :follow_requests, :account_id, :integer
    change_column :follow_requests, :id, :integer
    change_column :follow_requests, :target_account_id, :integer
    change_column :follows, :account_id, :integer
    change_column :follows, :id, :integer
    change_column :follows, :target_account_id, :integer
    change_column :imports, :account_id, :integer
    change_column :imports, :id, :integer
    change_column :media_attachments, :account_id, :integer
    change_column :media_attachments, :id, :integer
    change_column :mentions, :account_id, :integer
    change_column :mentions, :id, :integer
    change_column :mutes, :account_id, :integer
    change_column :mutes, :id, :integer
    change_column :mutes, :target_account_id, :integer
    change_column :notifications, :account_id, :integer
    change_column :notifications, :from_account_id, :integer
    change_column :notifications, :id, :integer
    change_column :oauth_access_grants, :application_id, :integer
    change_column :oauth_access_grants, :id, :integer
    change_column :oauth_access_grants, :resource_owner_id, :integer
    change_column :oauth_access_tokens, :application_id, :integer
    change_column :oauth_access_tokens, :id, :integer
    change_column :oauth_access_tokens, :resource_owner_id, :integer
    change_column :oauth_applications, :id, :integer
    change_column :oauth_applications, :owner_id, :integer
    change_column :reports, :account_id, :integer
    change_column :reports, :action_taken_by_account_id, :integer
    change_column :reports, :id, :integer
    change_column :reports, :target_account_id, :integer
    change_column :session_activations, :access_token_id, :integer
    change_column :session_activations, :user_id, :integer
    change_column :session_activations, :web_push_subscription_id, :integer
    change_column :settings, :id, :integer
    change_column :settings, :thing_id, :integer
    change_column :statuses, :account_id, :integer
    change_column :statuses, :application_id, :integer
    change_column :statuses, :in_reply_to_account_id, :integer
    change_column :stream_entries, :account_id, :integer
    change_column :stream_entries, :id, :integer
    change_column :subscriptions, :account_id, :integer
    change_column :subscriptions, :id, :integer
    change_column :tags, :id, :integer
    change_column :users, :account_id, :integer
    change_column :users, :id, :integer
    change_column :web_settings, :id, :integer
    change_column :web_settings, :user_id, :integer
  end
end
