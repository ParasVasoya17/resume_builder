import 'dart:core';

class Constants {
  // Time Format .....

  static const String YYYY_MM_DD_HH_MM_SS = 'yyyy-MM-dd hh:mm:ss';
  static const String YYYY_MM_DD_HH_MM_SS_24 = 'yyyy-MM-dd HH:mm:ss';
  static const String HH_MM_A = 'hh:mm a';
  static const String YYYY_MM_DD = 'yyyy-MM-dd';
  static const String DD_MM_YYYY = 'dd-MM-yyyy';
}

class AppStrings {
  static const String flutterSdkVersion = "3.16.0";

  static const String appName = "Shurinc";

  /// <<<--------- ERROR MESSAGE ------------------>>>
  static const String errorMessageFirstName = "Please enter first name";
  static const String errorMessageEmail = "Please enter email";
  static const String errorMessageValidEmail = "Please enter valid email";
  static const String errorMessagePassword = "Please enter password";
  static const String errorMessageNewPassword = "Please enter new password";
  static const String errorMessageCurrentPassword = "Please enter current password";
  static const String errorMessageConfirmPassword = "Please enter confirm password";
  static const String errorMessageNotMatchPass = "Password and confirm password does not match";
  static const String errorMessageValidPassword =
      "Password must be more than 8 characters long including lower case, upper case, number and a special character.";
  static const String errorMessageNewValidPassword =
      "New password must be more than 8 characters long including lower case, upper case, number and a special character.";
  static const String errorMessagePrivacyAndTerms = "Please agreed to our Privacy Policy and Terms & Conditions";
  // static const String errorMessageName = "Please enter name";

  // static const String passwordNewErrorMessage = "Please enter new password";
  // static const String passwordErrorOldMessage = "Please enter old password";
  //
  // static const String notMatchNewPassErrorMessage = " New password and confirm new password does not match";
  // static const String theOldPassWordInvalid = "Old password is invalid!";
  static const String noDataFound = "No data found";

  /// -------------------- Login ----------------- ////
  static const String welcomeBack = "Welcome Back!";
  static const String emailOrMobileNo = "Email or Mobile number";
  static const String password = "Password";
  static const String signIn = "Sign In";
  static const String signup = "Sign Up";
  static const String forgetPassword = "Forgot Password?";
  static const String doesNotHaveAnAccount = "Don’t have an account?";
  static const String signInToYourExistingAccount = "Sign in  to your existing account";

  /// -------------------- Forgot Password ----------------- ////
  static const String forgotPassword = "Forgot Password";
  static const String pleaseEnterYourEmailAddressToReceiveAVerificationCode = "Please enter your email address to receive a verification code.";
  static const String email = "Email";
  static const String sendCode = "Send Code";
  static const String youRememberYourPassword = "You remember your password?";

  /// -------------------- OTP ----------------- ////
  static const String didNtReceiveTheCode = "Didn't receive the code?";
  static const String verifyYourEmail = "Verify Your Email";
  static const String pleaseEnterThe4DigitCodeSendTo = "Please enter the 4 digit code send to ";
  static const String verify = "Verify";
  static const String resend = "Resend";

  /// -------------------- Create New Password ----------------- ////
  static const String createNewPassword = "Create New Password";
  static const String yourNewPasswordMustBeDifferentFromPreviouslyUsedPassword = "Your new password must be different from previously used password.";
  static const String newPassword = "New Password";
  static const String confirmPassword = "Confirm Password";
  static const String save = "Save";

  /// -------------------- Signup ----------------- ////
  static const String name = "Name";
  static const String firstName = "First Name";
  static const String address = "Address";
  static const String telNo = "Tel. No";
  static const String canTheInsuredRecoverTheValueAddedTaxOnTheVehicle = "Can the Insured recover the Value Added Tax on the vehicle?";
  static const String iHaveReadAndAgreeToThe = "I've read and agree to the";
  static const String termsOfService = "Terms of Service";
  static const String and = " and ";
  static const String privacyPolicy = "Privacy Policy.";
  static const String alreadyHaveAnAccount = "Already have an account?";
  static const String registerYourAccount = "Register your account";

  /// -------------------- Driver ----------------- ////
  static const String driver = "Driver";
  static const String drivingLicenceNo = "Driving Licence No.";
  static const String groups = "Groups";
  static const String issuedBy = "Issued By";
  static const String validFrom = "Valid From";
  static const String validTo = "Valid To";
  static const String endDate = "End Date";
  static const String next = "Next";
  static const String cancel = "Cancel";
  static const String ok = "Ok";

  /// -------------------- Vehicle & Insurance Detail ----------------- ////
  static const String vehicleAndInsuranceDetail = "Vehicle & Insurance Detail";
  static const String vehicle = "Vehicle";
  static const String insurance = "Insurance";
  static const String make = "Make";
  static const String type = "Type";
  static const String no = "No";
  static const String yes = "Yes";
  static const String done = "Done";
  static const String registrationNo = "Registration No.";
  static const String insuranceCompany = "Insurance company";
  static const String policyNo = "Policy No.";
  static const String agent = "Agent";
  static const String orBroker = "(or broker)";
  static const String ifIssued = "(if issued)";
  static const String greenCardNo = "Green Card No";
  static const String insCertOrGreenCard = "Ins. Cert or Green card";
  static const String validUntil = "valid until ";
  static const String isDamageToTheVehicleInsured = "Is damage to the vehicle insured?";

  /// -------------------- BottomNavigationBar ----------------- ////
  static const String home = "Home";
  static const String chat = "Chat";
  static const String profile = "Profile";
  static const String settings = "settings";

  /// -------------------- QrCode View Ans Scan ----------------- ////
  static const String copyLink = "Copy Link";
  static const String openScanner = "Open Scanner";
  static const String openQrCode = "Open QR Code";
  static const String linkCopiedToClipBoard = "Link copied to clipboard";
  static const String pleaseHoldTheBarcodeInTheWindow = "Please hold the barcode in the window";
  static const String scanQrCode = "Scan QR Code";

  /// -------------------- Accident ----------------- ////
  static const String accident = "Accident";
  static const String dateOfAccident = "Date of Accident";
  static const String time = "Time";
  static const String place = "Place";
  static const String exactLocationOfAccident = "(exact location of accident)";
  static const String injuriesEvenIfSlight = "Injuries even if slight";
  static const String propertyDamageOtherThanToTheVehiclesAAndB = "Property damage other than to the vehicles A and B";
  static const String toBeUnderlinedIfItRelatesToPassengerInAOrB = "(to be underlined if it relates to passenger in A or B)";
  static const String witness = "Witness";
  static const String witnessesName = "Witnesses Name";
  static const String telephoneNo = "Telephone No.";
  static const String areYouSureToDeleteWitnesses = "Are you sure you want to delete this witness details?";

  /// -------------------- indicate ----------------- ////
  static const String indicate = "Indicate ";

  /// -------------------- visible and remark ----------------- ////
  static const String visibleRemarks = "Visible & Remarks";
  static const String visibleDamage = "Visible Damage";
  static const String remarks = "Remarks";

  /// -------------------- Circumstances ----------------- ////
  static const String circumstances = "Circumstances";
  static const String circumstancesPutACrossXInEachOfTheRelevantSpacesToHelpExplainThePlan =
      "Circumstances Put a cross (X) in each of the relevant spaces to help explain the plan.";
  static const String parkedAtTheRoadside = "Parked (at the roadside)";
  static const String leavingAParkingPlaceAtTheRoadside = "Leaving a parking place (at the roadside)";
  static const String enteringAParkingPlaceAtTheRoadside = "Entering a parking place (at the roadside)";
  static const String emergingFromACarParkFromPrivateGroundsFromATrack = "Emerging from a car park, from private grounds, from a track";
  static const String enteringACarParkPrivateGroundsATrack = "Entering a car park, private grounds, a track";
  static const String enteringARoundaboutOrSimilarTrafficSystem = "Entering a roundabout (or similar traffic system)";
  static const String circulatingInARoundaboutEtc = "circulating in a roundabout etc.";
  static const String stringTheRearOfTheOtherVehicleWhileGoingInTheSameDirectionAndInTheSameLane =
      "String the rear of the other vehicle while going in the same direction and in the same lane";
  static const String goingInTheSameDirectionButInADifferentLane = "going in the same direction but in a different lane";
  static const String changingLanes = "changing lanes";
  static const String overtaking = "overtaking";
  static const String turningToTheRight = "turning to the right";
  static const String turningToTheLeft = "turning to the left";
  static const String reversing = "reversing";
  static const String encroachingInTheOppositeTrafficLane = "encroaching in the opposite traffic lane";
  static const String comingFromTheRightAtRoadJunctions = "coming from the right (at road junctions)";
  static const String notObservingARightOfWaySign = "not observing a right of way sign";

  /// -------------------- Drivers Signatures ----------------- ////
  static const String driversSignatures = "Drivers Signatures";
  static const String signaturesOfTheDrivers = "Signatures of the drivers";
  static const String insertYourSignatureHere = "Insert your signature here:";

  /// -------------------- Insured & Insured Vehicle ----------------- ////
  static const String insuredInsuredVehicle = "Insured & Insured Vehicle";
  static const String insured = "Insured";
  static const String occupation = "Occupation";
  static const String ifMoreThanOneStateAll = "( if more than one state all)";
  static const String insuredVehicle = "Insured Vehicle";
  static const String model = "Model";
  static const String cc = "C.C.";
  static const String ifCommercialVehicleStateCarryingCapacityAndGpw = "If commercial vehicle state carrying capacity and g.p.w";
  static const String dateOfFirstRegistrationAsNew = "Date of first registration as new";
  static const String date = "Date";
  static const String registrationMark = "Registration mark.";
  static const String pleaseGiveConfirmInstructionsOnMyOurBehalfWhereAppropriateForTheRepairs =
      "Please give/confirm instructions on my/our behalf (where appropriate) for the repairs";
  static const String areYouTheOwner = "Are you the Owner?";
  static const String ifNoStateOwnersNameAndAddress = "If no, state Owner's name and address";
  static const String ownersName = "Owner's Name";
  static const String exactPurposeForWhichVehicleWasBeingUsedAtTimeOfAccident = "Exact purpose for which vehicle was being used at time of accident";
  static const String isTheVehicleStillInUse = "Is the vehicle still in use?";
  static const String ifNoStateWhereItIsAtPresent = "If no, state where it is at present";
  static const String nameAndAddressOfFinanceCompany = "Name and address of Finance Company (if any)";

  /// -------------------- Charge of Vehicle ----------------- ////
  static const String chargeOfVehicle = "Charge of Vehicle";
  static const String driverOrPersonInChargeOfVehicle = "Driver or Person in charge of Vehicle";
  static const String dateOfBirh = "Date of Birh";
  static const String dateDrivingTestPassed = "Date driving test passed";
  static const String wasHeDrivingWithYourPermission = "Was he driving with your permission";
  static const String wasHeYourEmployee = "Was he your employee?";
  static const String offence = "Offence";
  static const String penalty = "Penalty";
  static const String vehiclesDetails = "Vehicle details";
  static const String giveDetailsOfAnyImpairmentOfSightOrHearingAndOfAnyOtherDisability =
      "Give details of any impairment of sight or hearing and of any other disability";
  static const String fullDetailsOfAllDrivingConvictionsIncludingPendingProsecutions = "Full details of all driving convictions including pending prosecutions";
  static const String areYouSureToDeleteVehicleDetail = "Are you sure you want to delete this Vehicle details?";

  /// -------------------- Injured Persons ----------------- ////
  static const String injuredPersons = "Injured Persons";
  static const String approximateAge = "Approximate Age";
  static const String injuriesSustained = "Injuries Sustained";
  static const String ifVehicleOccupantsStateInWhichVehicle = "If vehicle occupants state in which vehicle";
  static const String wereSeatBeltsBeingWorn = "Were seat belts being worn?";
  static const String injuredPerson = "Injured Person Details";
  static const String areYouSureToDeleteInjuredPerson = "Are you sure you want to delete this injured Person details?";

  /// -------------------- Damage ----------------- ////
  static const String damage = "Damage";
  static const String damageToPropertyVehicles = "Damage to Property & Vehicles";
  static const String ownerName = "Owner Name";
  static const String detailsOfVehicleOrProperty = "Details of Vehicle or Property";
  static const String natureOfDamage = "Nature of Damage";
  static const String insurersNameAndAddressIfKnown = "Insurer's Name and Address (if known)";
  static const String damageDetails = "Damage Details";
  static const String areYouSureToDeleteDamageDetails = "Are you sure you want to delete this Damage details?";

  /// -------------------- Police Action ----------------- ////
  static const String policeAction = "Police Action";
  static const String wasTheAccidentReportedToThePolice = "Was the accident reported to the Police?";
  static const String ifYesGiveStationAndPGsNameAndNumber = "If yes, give station and P.G's name and number";
  static const String station = "Station";
  static const String pGsName = "P.G's Name";
  static const String number = "Number";
  static const String wasWarningOfProsecutionGiven = "Was warning of prosecution given?";
  static const String ifYesAgainstWhom = "If yes, against whom?";
  static const String againstWhom = "Against Whom?";

  /// -------------------- Accident Details ----------------- ////
  static const String accidentDetails = "Accident Details";
  static const String weatherConditions = "Weather conditions";
  static const String speedOfVehicles = "Speed of vehicles";
  static const String whatWarningsWereGivenByDriverOrOtherParty = "What warnings were given by driver or other party?";
  static const String wereStreetLightsIlluminated = "Were street lights illuminated?";
  static const String whatLightsWereDisplayedOnYourVehicleTheOtherVehicles = "What lights were displayed on your vehicle/the other vehicle(s)";
  static const String ifYourVehicleIsCommercialStateWeightOfLoadCarriedAtTimeOfAccident =
      "If your vehicle is commercial state weight of load carried at time of accident";
  static const String stateHowAccidentHappenedIndicatingWidthOfRoadsSpeedLimitsEtc =
      "State how accident happened, indicating width of roads, speed limits, etc";

  /// -------------------- Declaration ----------------- ////
  static const String declaration = "Declaration";
  static const String iWeDeclareTheForegoingParticularsAreTrueInEveryRespect = "I/We declare the foregoing particulars are true in every respect.";
  static const String insuredsSignature = "Insured's Signature";
  static const String submitYourClaim = "Submit  your Claim";
  static const String pay5 = "Pay \$5";

  /// -------------------- Claim Submission ----------------- ////
  static const String claimSubmission = "Claim Submission";
  static const String companyName = "Company Name";
  static const String slideToPay5 = "Slide to Pay \$5";
  static const String thankYouForFillingOutTheForm =
      "Thank you for filling out the form. Pay \$5 to access this form and to submit it to your insurance company.";

  /// -------------------- Vehicle ----------------- ////
  static const String addNewVehicleAndInsuranceDetails = "Add new Vehicle and Insurance details";

  /// -------------------- Profile ----------------- ////
  static const String add = "Add";

  /// -------------------- Messages ----------------- ////
  static const String messages = "Messages";

  /// -------------------- ContactUs ----------------- ////
  static const String subject = "Subject";
  static const String submit = "Submit";
  static const String message = "Message";

  /// -------------------- Settings ----------------- ////
  static const String myProfile = "My Profile";
  static const String aboutUs = "About Us";
  static const String contactUs = "Contact Us";
  static const String privacyPolicys = "Privacy Policy";
  static const String termsConditions = "Terms & Conditions";
  static const String accountSettings = "Account Settings";

  /// -------------------- Account Settings ----------------- ////
  static const String deleteAccount = "Delete Account";
  static const String logout = "Logout";
  static const String iDonTLikeShurinc = "I don't like shurinc";
  static const String thereIsAnErrorInTheApp = "There is an error in the app";
  static const String other = "Other";
  static const String confirm = "Confirm";
  static const String pleaseEnterYourReasonsForLeaving = "Please enter your reasons for leaving";
  static const String areYouSure = "Are You Sure?";
  static const String ifYouProceedYouWillLoseAllYourDataAreYouSureYouWantToDeleteYourAccount =
      "If you proceed, you will lose all your data, are you sure you want to delete your account?";
}
