class Notifier < ActionMailer::Base
  default from: "From Ticketee <sircoolguy99@gmail.com>"

  def comment_updated(comment, user)
    @comment = comment
    @user = user
    mail from: "ticketee@gmail.com", to: user.email, subject: "[ticketee] #{comment.ticket.project.name} - #{comment.ticket.title}"
  end
end
