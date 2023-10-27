resource "newrelic_alert_policy" "foo" {
  count = length(var.count-value)
  name = var.count-value[count.index].name
  incident_preference = var.count-value[count.index].incident
  account_id = var.count-value[count.index].account_id
}