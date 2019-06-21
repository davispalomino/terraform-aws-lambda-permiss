terraform {
  required_version = ">= 0.12.1"
}
resource "aws_lambda_permission" "this" {
  function_name = "${var.function_name}"
  statement_id  = "AllowExecutionFrom${title(var.source_types[count.index])}"
  action        = "lambda:InvokeFunction"
  principal     = "${var.source_types[count.index]}.amazonaws.com"
  source_arn    = "${var.source_arns[count.index]}"
  count         = "${length(var.source_types)}"
}