class MeetupService < Wor::Requests::Base
  def events(group_name)
    raise ArgumentError, 'group_name can\'t be empty' if group_name.blank?
    get(
      attempting_to: "get events of #{group_name}",
      path: "/#{group_name}/events"
    )
  rescue Wor::Requests::RequestError => e
    Rails.logger.info e.message
  end

  protected

  def base_url
    'https://api.meetup.com'
  end
end
