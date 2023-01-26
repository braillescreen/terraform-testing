# Terraform Testing

Learning about Terraform.

This is a little place where I set up a basic Terraform configuration. I will share the resources I used below, and try to explain problems I had to solve in the process too.

## What does this configuration do?
* Creates a basic Ubuntu image in the AWS (Amazon Web Services) cloud.
* Creates a basic network allowing SSH access.

## Problems?
I probably had more problems than someone more experienced would. This is my first time in this area; I usually just spin up a single server and manage everything from the Linux terminal itself. Using Terraform is really cool because of how you can manage resources, but this is also my first time using the AWS cloud in such a way, as well.

### How do you get started, anyway?
I used the [Terraform with AWS documentation](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build). It gave me a nice introduction. It was easy to follow for someone who didn't really know what to do, exactly.

### Finding an AMI
I used [this article from the AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html) to help me. AMI's were really confusing to me at first but I figured them out eventually and found the one I wanted.

### Why can't I SSH?
It turns out, Terraform doesn't really do much in terms of creating network interfaces unless you ask it to. I couldn't make any connections from the outside into my newly-created instances, even.

I found [this very helpful blog post](https://medium.com/@hmalgewatta/setting-up-an-aws-ec2-instance-with-ssh-access-using-terraform-c336c812322f). It took me through configuration and why you added those resources; perfect for someone like me who doesn't know AWS and its names for services yet!

## Conclusion
Thanks for reading! I will be making updates to this; call it my personal playground.

