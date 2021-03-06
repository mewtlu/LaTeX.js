require! he

export ligatures = new Map([
    * 'ff'                  he.decode '&fflig;'     #     U+FB00
    * 'ffi'                 he.decode '&ffilig;'    #     U+FB03
    * 'ffl'                 he.decode '&ffllig;'    #     U+FB04
    * 'fi'                  he.decode '&filig;'     #     U+FB01
    * 'fl'                  he.decode '&fllig;'     #     U+FB02
    * '``'                  he.decode '&ldquo;'     # “   U+201C
    * "''"                  he.decode '&rdquo;'     # ”   U+201D
    * '!´'                  he.decode '&iexcl;'     #     U+00A1
    * '?´'                  he.decode '&iquest;'    #     U+00BF
    * '--'                  he.decode '&ndash;'     #     U+2013
    * '---'                 he.decode '&mdash;'     #     U+2014

    * '<<'                  he.decode '&laquo;'     #     U+00AB
    * '>>'                  he.decode '&raquo;'     #     U+00BB

    # defined by german
    * '"`'                  he.decode '&bdquo;'     # „   U+201E  \quotedblbase
    * '"\''                 he.decode '&ldquo;'     # “   U+201C  \textquotedblleft
])

export diacritics = new Map([
    * \b                    ['\u0332', '\u005F']        # _  first: combining char, second: standalone char
    * \c                    ['\u0327', '\u00B8']        # ¸
    * \d                    ['\u0323', '\u200B \u0323'] #
    * \H                    ['\u030B', '\u02DD']        # ˝
    * \k                    ['\u0328', '\u02DB']        # ˛
    * \r                    ['\u030A', '\u02DA']        # ˚
    * \u                    ['\u0306', '\u02D8']        # ˘
    * \v                    ['\u030C', '\u02C7']        # ˇ
    * \"                    ['\u0308', '\u00A8']        # ¨
    * \~                    ['\u0303', '\u007E']        # ~
    * \^                    ['\u0302', '\u005E']        # ^
    * \`                    ['\u0300', '\u0060']        # `
    * \'                    ['\u0301', '\u00B4']        # ´
    * \=                    ['\u0304', '\u00AF']        # ¯
    * \.                    ['\u0307', '\u02D9']        # ˙
])

export symbols = new Map([
    # spaces
    * \space                ' '
    * \nobreakspace         he.decode '&nbsp;'      #     U+00A0
    * \thinspace            he.decode '&thinsp;'    #     U+2009
    * \enspace              he.decode '&ensp;'      #     U+2002   (en quad: U+2000)
    * \enskip               he.decode '&ensp;'
    * \quad                 he.decode '&emsp;'      #     U+2003   (em quad: U+2001)
    * \qquad                he.decode '&emsp;'*2

    * \textvisiblespace     he.decode '&blank;'     # ␣   U+2423
    * \textcompwordmark     he.decode '&zwnj;'      #     U+200C

    # basic latin
    * \slash                he.decode '&sol;'
    * \textasciicircum      '^'                     #     U+005E    \^{}
    * \textless             '<'                     #     U+003C
    * \textgreater          '>'                     #     U+003E
    * \textasciitilde       '˜'                     #     U+007E    \~{}
    * \textbackslash        '\u005C'                #     U+005C
    * \lbrack               '['
    * \rbrack               ']'
    * \textbraceleft        '{'                     #     U+007B    \{
    * \textbraceright       '}'                     #     U+007D    \}
    * \textdollar           '$'                     #     U+0024    \$
    * \textunderscore       '_'                     #     U+005F    \_

    # non-ASCII letters
    * \AA                   '\u00C5'                # Å
    * \aa                   '\u00E5'                # å
    * \AE                   he.decode '&AElig;'     # Æ   U+00C6
    * \ae                   he.decode '&aelig;'     # æ   U+00E6
    * \IJ                   he.decode '&IJlig;'     # Ĳ   U+0132
    * \ij                   he.decode '&ijlig;'     # ĳ   U+0133
    * \OE                   he.decode '&OElig;'     # Œ   U+0152
    * \oe                   he.decode '&oelig;'     # œ   U+0153
    * \TH                   he.decode '&THORN;'     # Þ   U+00DE
    * \th                   he.decode '&thorn;'     # þ   U+00FE
    * \SS                   '\u1E9E'                # ẞ
    * \ss                   he.decode '&szlig;'     # ß   U+00DF
    * \DH                   he.decode '&ETH;'       # Ð   U+00D0
    * \dh                   he.decode '&eth;'       # ð   U+00F0
    * \O                    he.decode '&Oslash;'    # Ø   U+00D8
    * \o                    he.decode '&oslash;'    # ø   U+00F8
    * \DJ                   he.decode '&Dstrok;'    # Đ   U+0110
    * \dj                   he.decode '&dstrok;'    # đ   U+0111
    * \L                    he.decode '&Lstrok;'    # Ł   U+0141
    * \l                    he.decode '&lstrok;'    # ł   U+0142
    * \i                    he.decode '&imath;'     # ı   U+0131
    * \j                    he.decode '&jmath;'     # ȷ   U+0237
    * \NG                   he.decode '&ENG;'       # Ŋ   U+014A
    * \ng                   he.decode '&eng;'       # ŋ   U+014B

    # quotes
    * \textquotesingle      "'"                     # '   U+0027
    * \textquoteleft        he.decode '&lsquo;'     # ‘   U+2018    \lq
    * \lq                   he.decode '&lsquo;'
    * \textquoteright       he.decode '&rsquo;'     # ’   U+2019    \rq
    * \rq                   he.decode '&rsquo;'
    * \textquotedbl         he.decode '&quot;'      # "   U+0022
    * \textquotedblleft     he.decode '&ldquo;'     # “   U+201C
    * \textquotedblright    he.decode '&rdquo;'     # ”   U+201D
    * \quotesinglbase       he.decode '&sbquo;'     # ‚   U+201A
    * \quotedblbase         he.decode '&bdquo;'     # „   U+201E
    * \guillemotleft        he.decode '&laquo;'     # «   U+00AB
    * \guillemotright       he.decode '&raquo;'     # »   U+00BB
    * \guilsinglleft        he.decode '&lsaquo;'    # ‹   U+2039
    * \guilsinglright       he.decode '&rsaquo;'    # ›   U+203A

    # diacritics
    * \textasciigrave       '\u0060'                # `
    * \textgravedbl         '\u02F5'                # ˵
    * \textasciidieresis    he.decode '&die;'       # ¨   U+00A8
    * \textasciiacute       he.decode '&acute;'     # ´   U+00B4
    * \textacutedbl         he.decode '&dblac;'     # ˝   U+02DD
    * \textasciimacron      he.decode '&macr;'      # ¯   U+00AF
    * \textasciicaron       he.decode '&caron;'     # ˇ   U+02C7
    * \textasciibreve       he.decode '&breve;'     # ˘   U+02D8
    * \texttildelow         '\u02F7'                # ˷

    # punctuation
    * \textellipsis         he.decode '&hellip;'    # …   U+2026    \dots
    * \dots                 he.decode '&hellip;'
    * \textbullet           he.decode '&bull;'      # •   U+2022
    * \textopenbullet       '\u25E6'                # ◦
    * \textperiodcentered   he.decode '&middot;'    # ·   U+00B7
    * \textendash           he.decode '&ndash;'     # –   U+2013
    * \textemdash           he.decode '&mdash;'     # —   U+2014
    * \textdagger           he.decode '&dagger;'    # †   U+2020    \dag
    * \dag                  he.decode '&dagger;'
    * \textdaggerdbl        he.decode '&Dagger;'    # ‡   U+2021    \ddag
    * \ddag                 he.decode '&Dagger;'
    * \textexclamdown       he.decode '&iexcl;'     # ¡   U+00A1
    * \textquestiondown     he.decode '&iquest;'    # ¿   U+00BF
    * \textinterrobang      '\u203D'                # ‽
    * \textinterrobangdown  '\u2E18'                # ⸘

    * \textsection          he.decode '&sect;'      # §   U+00A7    \S
    * \S                    he.decode '&sect;'
    * \textparagraph        he.decode '&para;'      # ¶   U+00B6    \P
    * \P                    he.decode '&para;'
    * \textblank            '\u2422'                # ␢

    # delimiters
    * \textlquill           '\u2045'                # ⁅
    * \textrquill           '\u2046'                # ⁆
    * \textlangle           '\u2329'                # 〈
    * \textrangle           '\u232A'                # 〉
    * \textlbrackdbl        '\u301A'                # 〚
    * \textrbrackdbl        '\u301B'                # 〛

    # misc
    * \checkmark            he.decode '&check;'     # ✓   U+2713
    * \textreferencemark    '\u203B'                # ※

    * \textordfeminine      he.decode '&ordf;'      # ª   U+00AA
    * \textordmasculine     he.decode '&ordm;'      # º   U+00BA
    * \textmarried          '\u26AD'                # ⚭
    * \textdivorced         '\u26AE'                # ⚮

    * \textbar              '\u007C'                # |
    * \textbardbl           he.decode '&Vert;'      # ‖   U+2016
    * \textbrokenbar        he.decode '&brvbar;'    # ¦   U+00A6

    * \textbigcircle        he.decode '&xcirc;'     # ◯   U+25EF
    * \textcopyright        he.decode '&copy;'      # ©   U+00A9    \copyright
    * \copyright            he.decode '&copy;'
    * \textcircledP         he.decode '&copysr;'    # ℗   U+2117
    * \textregistered       he.decode '&reg;'       # ®   U+00AE
    * \textservicemark      '\u2120'                # ℠
    * \texttrademark        he.decode '&trade;'     # ™   U+2122

    * \textnumero           he.decode '&numero;'    # №   U+2116
    * \textrecipe           he.decode '&rx;'        # ℞   U+211E
    * \textestimated        '\u212E'                # ℮
    * \textmusicalnote      he.decode '&sung;'      # ♪   U+266A
    * \textdiscount         '\u2052'                # ⁒

    * \textdegree           he.decode '&deg;'       # °   U+00B0    \degree
    * \degree               he.decode '&deg;'
    * \textcelsius          '\u2103'                # ℃  U+2103    \celsius
    * \celsius              '\u2103'

    * \textohm              '\u2126'                # Ω
    * \textmho              '\u2127'                # ℧

    # cards

    * \spadesuit            he.decode '&spades;'    # ♠  U+2660
    * \heartsuit            '\u2661'                # ♡
    * \diamondsuit          '\u2662'                # ♢
    * \clubsuit             he.decode '&clubs;'     # ♣  U+2663

    * \varspadesuit         '\u2664'                # ♤
    * \varheartsuit         he.decode '&hearts;'    # ♥  U+2665     \varheart
    * \varheart             he.decode '&hearts;'
    * \vardiamondsuit       he.decode '&diams;'     # ♦  U+2666
    * \varclubsuit          '\u2667'                # ♧


    # arrows
    * \textleftarrow        he.decode '&larr;'      # ←   U+2190
    * \textuparrow          he.decode '&uarr;'      # ↑   U+2191
    * \textrightarrow       he.decode '&rarr;'      # →   U+2192
    * \textdownarrow        he.decode '&darr;'      # ↓   U+2193

    # math symbols
    * \textperthousand      he.decode '&permil;'    # ‰   U+2030    \perthousand
    * \perthousand          he.decode '&permil;'
    * \textpertenthousand   '\u2031'                # ‱
    * \textonehalf          he.decode '&frac12;'    # ½   U+00BD
    * \textthreequarters    he.decode '&frac34;'    # ¾   U+00BE
    * \textonequarter       he.decode '&frac14;'    # ¼   U+00BC
    * \textfractionsolidus  he.decode '&frasl;'     # ⁄   U+2044
    * \textdiv              he.decode '&divide;'    # ÷   U+00F7
    * \texttimes            he.decode '&times;'     # ×   U+00D7
    * \textminus            he.decode '&minus;'     # −   U+2212
    * \textpm               he.decode '&plusmn;'    # ±   U+00B1
    * \textsurd             he.decode '&radic;'     # √   U+221A
    * \textlnot             he.decode '&not;'       # ¬   U+00AC
    * \textasteriskcentered he.decode '&lowast;'    # ∗   U+2217
    * \textonesuperior      he.decode '&sup1;'      # ¹   U+00B9
    * \texttwosuperior      he.decode '&sup2;'      # ²   U+00B2
    * \textthreesuperior    he.decode '&sup3;'      # ³   U+00B3

    # old style numerals
    * \textzerooldstyle     '\uF730'                # 
    * \textoneoldstyle      '\uF731'                # 
    * \texttwooldstyle      '\uF732'                # 
    * \textthreeoldstyle    '\uF733'                # 
    * \textfouroldstyle     '\uF734'                # 
    * \textfiveoldstyle     '\uF735'                # 
    * \textsixoldstyle      '\uF736'                # 
    * \textsevenoldstyle    '\uF737'                # 
    * \texteightoldstyle    '\uF738'                # 
    * \textnineoldstyle     '\uF739'                # 

    # currencies
    * \texteuro             he.decode '&euro;'      # €   U+20AC
    * \textcent             he.decode '&cent;'      # ¢   U+00A2
    * \textsterling         he.decode '&pound;'     # £   U+00A3    \pounds
    * \pounds               he.decode '&pound;'
    * \textbaht             '\u0E3F'                # ฿
    * \textcolonmonetary    '\u20A1'                # ₡
    * \textcurrency         '\u00A4'                # ¤
    * \textdong             '\u20AB'                # ₫
    * \textflorin           '\u0192'                # ƒ
    * \textlira             '\u20A4'                # ₤
    * \textnaira            '\u20A6'                # ₦
    * \textpeso             '\u20B1'                # ₱
    * \textwon              '\u20A9'                # ₩
    * \textyen              '\u00A5'                # ¥

    # greek letters - lower case
    * \textalpha            he.decode '&alpha;'     # α     U+03B1
    * \textbeta             he.decode '&beta;'      # β     U+03B2
    * \textgamma            he.decode '&gamma;'     # γ     U+03B3
    * \textdelta            he.decode '&delta;'     # δ     U+03B4
    * \textepsilon          he.decode '&epsilon;'   # ε     U+03B5
    * \textzeta             he.decode '&zeta;'      # ζ     U+03B6
    * \texteta              he.decode '&eta;'       # η     U+03B7
    * \texttheta            he.decode '&thetasym;'  # ϑ     U+03D1  (θ = U+03B8)
    * \textiota             he.decode '&iota;'      # ι     U+03B9
    * \textkappa            he.decode '&kappa;'     # κ     U+03BA
    * \textlambda           he.decode '&lambda;'    # λ     U+03BB
    * \textmu               he.decode '&mu;'        # μ     U+03BC  this is better than \u00B5, LaTeX's original
    * \textnu               he.decode '&nu;'        # ν     U+03BD
    * \textxi               he.decode '&xi;'        # ξ     U+03BE
    * \textomikron          he.decode '&omicron;'   # ο     U+03BF
    * \textpi               he.decode '&pi;'        # π     U+03C0
    * \textrho              he.decode '&rho;'       # ρ     U+03C1
    * \textsigma            he.decode '&sigma;'     # σ     U+03C3
    * \texttau              he.decode '&tau;'       # τ     U+03C4
    * \textupsilon          he.decode '&upsilon;'   # υ     U+03C5
    * \textphi              he.decode '&phi;'       # φ     U+03C6
    * \textchi              he.decode '&chi;'       # χ     U+03C7
    * \textpsi              he.decode '&psi;'       # ψ     U+03C8
    * \textomega            he.decode '&omega;'     # ω     U+03C9
    * \textAlpha            he.decode '&Alpha;'     # Α     U+0391
    * \textBeta             he.decode '&Beta;'      # Β     U+0392
    * \textGamma            he.decode '&Gamma;'     # Γ     U+0393
    * \textDelta            he.decode '&Delta;'     # Δ     U+0394
    * \textEpsilon          he.decode '&Epsilon;'   # Ε     U+0395
    * \textZeta             he.decode '&Zeta;'      # Ζ     U+0396
    * \textEta              he.decode '&Eta;'       # Η     U+0397
    * \textTheta            he.decode '&Theta;'     # Θ     U+0398
    * \textIota             he.decode '&Iota;'      # Ι     U+0399
    * \textKappa            he.decode '&Kappa;'     # Κ     U+039A
    * \textLambda           he.decode '&Lambda;'    # Λ     U+039B
    * \textMu               he.decode '&Mu;'        # Μ     U+039C
    * \textNu               he.decode '&Nu;'        # Ν     U+039D
    * \textXi               he.decode '&Xi;'        # Ξ     U+039E
    * \textOmikron          he.decode '&Omicron;'   # Ο     U+039F
    * \textPi               he.decode '&Pi;'        # Π     U+03A0
    * \textRho              he.decode '&Rho;'       # Ρ     U+03A1
    * \textSigma            he.decode '&Sigma;'     # Σ     U+03A3
    * \textTau              he.decode '&Tau;'       # Τ     U+03A4
    * \textUpsilon          he.decode '&Upsilon;'   # Υ     U+03A5
    * \textPhi              he.decode '&Phi;'       # Φ     U+03A6
    * \textChi              he.decode '&Chi;'       # Χ     U+03A7
    * \textPsi              he.decode '&Psi;'       # Ψ     U+03A8
    * \textOmega            he.decode '&Omega;'     # Ω     U+03A9
])
