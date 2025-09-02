enum AppRoute{
  splash,
  signUp,
  login,
  home,
  transaction,
  profile,
  notes,
  financial_report,
  add_note,
  add_income,
  add_expense
}

extension RouterExtention on AppRoute{
  String get name{
    switch (this){
      case AppRoute.splash :
        return "splash";
      case AppRoute.signUp:
        return "signUp";
      case AppRoute.login:
        return "login";
        case AppRoute.home:
        return "home";
        case AppRoute.transaction:
        return "transaction";
      case AppRoute.profile:
        return "profile";
      case AppRoute.notes:
        return "notes";
      case AppRoute.financial_report:
        return "financial_report";
      case AppRoute.add_note:
        return "add_note";
      case AppRoute.add_income:
        return "add_income";
      case AppRoute.add_expense:
        return "add_expense";
    }
  }

  String get path{
    switch(this) {
      case AppRoute.splash :
        return "/";
      case AppRoute.signUp:
        return "/signUp";
      case AppRoute.login:
        return "/login";
      case AppRoute.home:
        return "/app/home";
      case AppRoute.transaction:
        return "/app/transaction";
      case AppRoute.profile:
        return "/app/profile";
      case AppRoute.notes:
        return "/app/notes";
      case AppRoute.financial_report:
        return "/app/financial_report";
      case AppRoute.add_note:
        return "/app/add_note";
      case AppRoute.add_income:
        return "/app/add_income";
      case AppRoute.add_expense:
        return "/app/add_expense";
    }
  }
}