import 'package:flutter/material.dart';

class privacy_widget extends StatelessWidget {
  const privacy_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> terms = [
      Text(
        'Terms & Conditions',
        style: Theme.of(context).textTheme.headline1,
      ),
      Text(
          'Your access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all users, and others who access or use the Service.'),
      Text(
          'By accessing or using the Service you aggree to be bound by these Terms. If you disaggree with any part of the terms then you may not access the Service.'),
      Text(
        'Purchases',
        style: Theme.of(context).textTheme.headline6,
      ),
      Text(
          'If you wish to purchase any service made available through the Service (“Purchase”), you may be asked to supply certain information relevant to your Purchase including. Your information will be stored and proceed to confirm all data connect with the interest of users . We guarantee the security of user data.  User data are protected under trusted party. However, purchasing decision is in the hand of the user.'),
      Text(
        'Subscriptions',
        style: Theme.of(context).textTheme.headline6,
      ),
      Text(
          'Some parts of the Service are billed on a subscription basis (“Subscription(s)”). You will be billed in advance on recurring subscription individually or grouply. All member must verifiy these terms and conditions that they have already approved the following regulations and are willing to accept the risk of one’s own negligence.'),
      Text(
        'Content',
        style: Theme.of(context).textTheme.headline6,
      ),
      Text(
          'Our Service allows you to use the service for personal use. All actions regard out of the personal use are prohibited. User also responsible to keep his/her privacy in this app. User must understand all procedure and good use.')
    ];

    return Container(
      padding: EdgeInsets.all(
        30,
      ),
      child: ListView.builder(
        itemCount: terms.length,
        itemBuilder: (context, index) {
          return terms[index];
        },
      ),
    );
  }
}
