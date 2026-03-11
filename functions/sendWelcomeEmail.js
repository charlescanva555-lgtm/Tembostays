const resend = require('resend');

exports.sendWelcomeEmail = async (guestData) => {
  await resend.emails.send({
    from: 'Karibu <concierge@tembostays.com>',
    to: guestData.email,
    subject: `Your Digital Key is Ready: ${guestData.villa_name}`,
    html: `<h1>Jambo, ${guestData.name}!</h1>
           <p>Your safari adventure starts now. Tap below to unlock your villa:</p>
           <a href="https://tembo-stays.web.app">Open My Digital Key</a>`,
  });
};
