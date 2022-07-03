
import 'package:get/get.dart';

const String TitleSplash = 'Offers App';
const String kMobileNumber= 'Mobile Number';
const String kUserName= 'User Name';
const String kEmail= 'Email';
const String kDateBirth= 'Date of Birth';
const String kPromoCode= 'Promo Code';
const String kPassword= 'Password';
const String kLastPassword= 'Last Password';
const String kNewPassword= 'New Password';
const String kConfirmPassword= 'Confirm Password';
const String kFiledNullError = "Please, this field is required";
const String kForgotPassword = "Forgot your password ?";
const String kNeedAccount = "You don't have an account ? ";
const String kSignUp = "New Account";
const String kSignIn = "Sign In";
const String kWelcomeBack = "Welcome Back";
const String kEnterYourData = "Please Enter Your Data To Login";
const String kGo = "Go";
const String kGoNext = "Go Next";
const String kNext = "Next";
const String kYouAreWelcome = "You are  welcome";
const String kOffersAppBestDiscounts = "Offers App of the specialist with the best discounts";
const String kDoYouHaveAccount = "Do You Have Account ? ";
const String kVerificationCodeSent = "Verification code has been sent";
const String kVerificationCodeMobileNumber = "You will receive a verification code on your mobile number";
const String kResendAfter = "Resend after";
const String kGetBestOffersNow = "Get The Best Offers Now";
const String kEnterAccountInformation = "Enter Account Information";
const String kInterests = "Interests";
const String kSelectInterestsToBestOffers = "Select your interests to get the best offers";
const String kWelcome = "Welcome";
const String kGetBestOffers = "Get the best offers now";
const String kBestOffers = "The Best Offers";
const String kSearch = "Search";
const String kCategories = "Categories";
const String kProfile = "Profile Page";
const String kLastSearched = "The last thing you searched for";
const String kOffersLike = "Offers You May Like";
const String kChoseYou = "We Chose For You";
const String kProfileData = "Profile Data";
const String kSavingsValue = "Savings Value";
const String kUsedCoupons = "Used Coupons";
const String kGifts= "Gifts";
const String kSaveUpdate = "Save Update";
const String kActivation = "Activation";
const String kSave = "Save";
const String kPasswordReset = "Password Reset";
const String kAllDevicesLoggedOut = "All Devices Will Be Logged Out";
const String kSaveEdit = "Save Edit";
const String kFavorite = "Favorite";
const String kUsedOffers = "Used Offers";
const String kVipOffers = "Vip Offers";
const String kNotification = "Notification";
const String kPrivacy = "Privacy";
const String kConditions = "Terms And Conditions";
const String kCall = "Call Us";
const String kPackages = "Packages";
const String kQuestion = "Questions";
const String kSend = "Send";
const String kSuggestion = "Suggestion";
const String kComplaint = "Complaint";
const String kSettings = "Settings";
const String kLanguage = "Language";
const String kArabic = "Arabic";
const String kEnglish = "English";
const String kTurningOff = "Turning Off";
const String kStoreSelection = "Store Selection";
const String kSavingVale = "Saving Vale";
const String kAgain = "Try Again";
const String kChooseAppropriatePlan = "Choose The Appropriate Plan";
const String kSubscribePackage = "Subscribe To The Package";
const String kPackage = "Package";
const String kActivationCode = "Activation Code";
const String kPaymentOptions = "Payment Options";
const String kSubscribedSuccessfully = "Subscribed Successfully";
const String kEnjoyBestOffers = "Enjoy Our Best Offers Now";



class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys =>{
    'en': {

    }, 'ar': {
      kForgotPassword: 'هل نسيت كلمة المرور؟',
      kNeedAccount: 'ليس لديك حساب ؟ ',
      kFiledNullError: 'هذا الحقل مطلوب',
      kPassword: 'كلمة المرور',
      kLastPassword: 'كلمة المرور القديمة',
      kNewPassword: 'كلمة المرور الجديدة',
      kConfirmPassword: 'تأكيد كلمة المرور',
      kMobileNumber: 'رقم الجوال',
      kUserName: 'الاسم بالكامل',
      kEmail: 'البريد الالكتروني',
      kDateBirth: 'تاريخ الميلاد',
      kPromoCode: 'الرمز الترويجي',
      kSignUp: 'حساب جديد',
      kSignIn: 'تسجيل الدخول',
      kWelcomeBack: 'مرحبا بعودتكم',
      kEnterYourData: 'يرجى تسجيل بياناتك للدخول',
      kGo: 'تخطي',
      kGoNext: 'انطلق',
      kNext: 'التالي',
      kYouAreWelcome: 'اهلا و مرحبا بكم',
      kOffersAppBestDiscounts: 'تطبيق عروض المختص بأفضل التخفيضات',
      kDoYouHaveAccount: 'هل لديك حساب ؟  ',
      kVerificationCodeSent: 'تم ارسال رمز التحقق',
      kVerificationCodeMobileNumber: 'سيصلك رمز التحقق على رقم الجوال',
      kResendAfter: 'إعادة الارسال بعد',
      kGetBestOffersNow: 'احصل على افضل العروض الان',
      kEnterAccountInformation: 'قم بإدخال معلومات الحساب',
      kInterests: 'الاهتمامات',
      kSelectInterestsToBestOffers: 'قم بتحديد اهتماماتك للحصول على افضل العروض',
      kWelcome: 'مرحبا',
      kGetBestOffers: 'احصل الان على افضل العروض',
      kBestOffers: 'اقوى العروض',
      kSearch: 'بحث',
      kCategories: 'التصنيفات',
      kProfile: 'الصفحة الشخصية',
      kLastSearched: 'اخر ما بحثت عليه',
      kOffersLike: 'عروض قد تعجبك',
      kChoseYou: 'اخترنا لك',
      kProfileData: 'البيانات الشخصية',
      kSavingsValue: 'قيمة التوفير',
      kUsedCoupons: 'الكابونات المستخدمه',
      kGifts: 'الهدايا',
      kSaveUpdate: 'حفظ التعديلات',
      kActivation: 'تفعيل',
      kSave: 'حفظ',
      kPasswordReset: 'إعادة تعيين كلمة المرور',
      kAllDevicesLoggedOut: 'سيتم تسجيل الخروج من جميع الاجهزة',
      kSaveEdit: 'حفظ التعديلات',
      kFavorite: 'المفضلة',
      kUsedOffers: 'العروض المستخدمة',
      kVipOffers: 'Vip عروض',
      kNotification: 'الاشعارات',
      kPrivacy: 'الاشعارات',
      kConditions: 'شروط و احكام',
      kCall: 'اتصل بنا',
      kPackages: 'الباقات',
      kQuestion: 'اسئلة',
      kSend: 'ارسال',
      kSuggestion: 'اقتراح',
      kComplaint: 'شكوى',
      kSettings: 'الاعدادات',
      kLanguage: 'اللغة',
      kArabic: 'العربية',
      kEnglish: 'الانجليزية',
      kTurningOff: 'ايقاف',
      kSavingVale: 'قيمة التوفير',
      kAgain: 'إعادة المحاولة',
      kChooseAppropriatePlan: 'قم باختيار الخطة المناسبة',
      kSubscribePackage: 'الاشتراك في الباقة',
      kPackage: 'الباقة',
      kActivationCode: 'تفعيل الكود',
      kPaymentOptions: 'خيارات الدفع',
      kSubscribedSuccessfully: 'تم الاشتراك بنجاح',
      kEnjoyBestOffers: 'تمتع الان بأفضل العروض لدينا',

    }
  };}