output "Genesis-IP" {
  value = "${aws_instance.Genesis.public_ip}"
} 

output "Genesis-State" {
  value = "${aws_instance.Genesis.instance_state}"
}

output "Genesis-Zone" {
  value = "${aws_instance.Genesis.availability_zone}"
}

output "Genesis-ID" {
  value = "${aws_instance.Genesis.id}"
}