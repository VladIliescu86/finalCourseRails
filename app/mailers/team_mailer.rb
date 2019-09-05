class TeamMailer < ApplicationMailer
  def send_team_created_mail
    @teams = Team.all

    mail(
    to: 'somemanager@gmail.com',
    subject: 'New Team created'
    )
  end
end
