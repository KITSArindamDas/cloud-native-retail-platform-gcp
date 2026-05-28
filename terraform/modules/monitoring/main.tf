resource "google_monitoring_notification_channel" "email" {
  display_name = "Platform Email Alerts"
  type         = "email"

  labels = {
    email_address = "replace-with-your-email@example.com"
  }
}
