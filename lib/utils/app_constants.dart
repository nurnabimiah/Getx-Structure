


class AppConstants {

  static const String appName = 'Loan Manager';
  static const String splashScreenDescription = 'Make Your Calculation Easy to Use \nthis App. Lets Get Start With this App';
  static const String TOKEN = 'token';


  static const String appPrivacyPolicyDiv1 = 'eyeconsoft built the Loan Manager app as a Free app. This SERVICE is provided by eyeconsoft at no cost and is intended for use as is.This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Loan Manager unless otherwise defined in this Privacy Policy.';
  static const String appPrivacyPolicyDiv2 = 'For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to name,email. The information that I request will be retained on your device and is not collected by me in any way.The app does use third-party services that may collect information used to identify you.';
  static const String appPrivacyPolicyDiv3 = 'I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.';

  //Api
  static const String baseUri = 'http://loantracker.eyeconsoft.com/public/api';

  static const String otpLoginApiUri = '/user/otpCodeDone';
  static const String registerApiUri = '/user/register';
  static const String loginApiUri = '/user/login';
  static const String googleLoginApiUri = '/user/googleLogin';
  static const String takeMoneyUri = '/user/takeMoney';
  static const String giveMoneyUri = '/user/giveMoney';
  static const String transactionInfoUri = '/user/getTransactionInformation';
  static const String transactionReportsUri = '/user/getReportOfTransactionInformation?';
  static const String getBusinessCardsUri = '/user/getBusinessCard';
  static const String updateBusinessCardsUri = '/user/updateBusinessCard';
  static const String updateTakeMoneyUri = '/user/updateTakeMoney';
  static const String updateGiveMoneyUri = '/user/updateGiveMoney';
  static const String deleteTransactionUri = '/user/deleteSingleTransactionInformation';
  static const String getTransactionDetailsUri = '/user/getTransactionDetails?';


}
