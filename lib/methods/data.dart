import 'package:flutter/material.dart';
class AnimalInfo {
  final int? position;
  final String? name;
  final String? iconImage;
  final Color? color;
  final String? paragraph;
  final String? lifespan;
  final String? speed;

  AnimalInfo(this.position,
      {this.name,
        this.iconImage,

        this.color,
        this.paragraph,
        this.lifespan,
        this.speed});
}


List<AnimalInfo> animallist = [
  AnimalInfo(1,
      name: 'Health Insurance',
      color: Colors.red,
      iconImage: 'asstes/health.png',

      paragraph: "Health insurance or medical insurance is a type of insurance that covers the whole or a part of the risk of a person incurring medical expenses. As with other types of insurance is risk among many individuals, "
          "Purchasing a health insurance policy can help you receive medical care without blowing up all your savings. Health care plans today offer much more than mere hospitalisation expenses ",
      lifespan: ' less or minimal amount of risks found in health insurance',
      speed: '1)Family Health Insurance. '
          '2) Critical Illness Insurance  '
          '3)Mediclaim'),
  AnimalInfo(2,
      name: 'Mutual Funds',
      color: Colors.lightBlueAccent,
      iconImage: 'asstes/mf.png',
      paragraph: "mutual fund is a professionally managed investment fund that pools money from many investors to purchase securities. The term is typically used in the United States, Canada, and India",
      lifespan: 'Mutual Fund Schemes are not guaranteed or assured return products. Investment in Mutual Fund Units involves investment risks such as trading volumes, settlement risk, liquidity risk, default risk including the possible loss of principal',
   speed:  '1) Equity '
     '2) Money market funds or liquid funds'
      '3) Fixed income or debt mutual funds'
      '4) Balanced funds'
      '5) Hybrid'
  '     6) Gilt funds:'),
  AnimalInfo(3,
      name: 'Life Insurance',
      color: Colors.grey,
      iconImage: 'asstes/life.png',
      paragraph:  "1) Life insurance is a contract between an insurance policy holder and an insurer or assurer, where the insurer promises to pay a designated beneficiary a sum of money upon the death of an insured person"
"2)information about an individual that is needed to underwrite a life insurance policy, such as age, sex, weight, current health, medical history, height, tobacco use, and occupation. Statistically, life risk factors are related to an individual's life span",

      lifespan: 'You may be able to receive anywhere from 25% to 100% of your permanent life insurance policy’s death benefit before you die if you develop a specified condition such as heart attack, stroke, invasive cancer, or end-stage renal failure. The upside of accelerated benefits, as they are called is you can use them to pay your medical bills and possibly enjoy a better quality of life in your final months',



      speed: 'Term Insurance Plans',

  ),
  AnimalInfo(4,
      name: 'Stocks',
      color: Colors.orangeAccent,
      iconImage: 'asstes/stcoks.png',
      paragraph: "A stock is a general term used to describe the ownership certificates of any company",
      lifespan
          :"Low levels of risk are associated with low potential returns and high levels of risks are associated with high potential returns. Each investor must decide how much risk they are willing and able to accept for a desired return",
      speed
          :" average stock market return is about 10% per year for nearly the last century"
          "eg ^BSESN,AAPL,S&P 500"),
  AnimalInfo(5,
      name: 'Bonds',
      color: Colors.greenAccent,
      iconImage: 'asstes/bonds.png',
      paragraph: "In finance, a bond is a type of security under which the issuer owes the holder a debt, and is obliged  depending on the terms to repay the principal of the bond at the maturity date as well as interest over a specified amount of time",
      lifespan
          :"These are the risks of holding bonds: Risk #1: When interest rates fall, bond prices rise. Risk #2: Having to reinvest proceeds at a lower rate than what the funds were previously earning. Risk #3: When inflation increases dramatically, bonds can have a negative rate of return",
      speed
          :" long-term bonds have returned between 5% and 6%, according to investment researcher Morningstar."
          " Examples of commercial bonds include license and permit bonds, public official bonds "),
  AnimalInfo(6,
      name: 'REITs',
      color: Colors.pink[50],
      iconImage: 'asstes/reits.png',
      paragraph:"Real Estate Investment Trusts are similar to mutual funds. They pool money from multiple investors and use that to buy income-generating real estate properties. REITs manage these assets so that they can earn from capital appreciation and rental income",

      lifespan
          :" Most significant risk to REITs is increased interest rates, diminishing demand for REITs. You may prefer safer income investments, such as government bonds, in an environment where the rates rise. Treasuries are government-guaranteed securities that typically pay a fixed rate of interest. As a result, REITs fall in value as interest rates rise, while the bond market increases as capital investment streams into bonds. Unlisted or non-traded REITs are riskier than listed REITs since there is no publicly available information to analyse them or estimate their value. They are illiquid, and you may be unable to access their funds for a prolonged period, maybe up to 7 yrs.  ",
      speed
          :"The total returns from investing in REITs range from 12-20 per cent per year, including dividends and capital appreciation. Returns from dividends are 5-7 per cent per year."
          "example There are currently only 3 REITs available for investment in India – Embassy Office Parks REIT, Mindspace Business Parks REIT, and Brookfield India Real Estate Trust."),
  AnimalInfo(7,
      name: 'Commericial Insurance',
      color: Colors.lightBlue,
      iconImage: 'asstes/commercial insurance.png',
      paragraph: " Commercial business insurance is coverage for businesses and corporations, generally designed to cover the business, its employees and ownership. Since there are so many types of businesses with different needs and situations, commercial insurance can come in many shapes, sizes and colors",
      lifespan
          :" ",
      speed
          :" Common commercial insurance types include property, workers' and liability compensation"),
];
