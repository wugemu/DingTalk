.class public Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;
.super Lcom/alibaba/android/dingtalk/circle/ui/ExtendEditText;
.source "UrlExtendEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText$b;,
        Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText$a;
    }
.end annotation


# static fields
.field public static final i:Ljava/util/regex/Pattern;


# instance fields
.field protected c:Z

.field protected d:Z

.field e:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText$b;

.field protected f:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText$a;

.field g:I

.field h:I

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    const-string/jumbo v0, "((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->i:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/circle/ui/ExtendEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->c:Z

    .line 32
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->d:Z

    .line 35
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText$b;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText$b;-><init>(Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->e:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText$b;

    .line 39
    iput v1, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->g:I

    .line 40
    iput v1, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->h:I

    .line 45
    iput v1, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->j:I

    .line 46
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->k:Z

    .line 47
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->l:Z

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->e:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText$b;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    .prologue
    .line 26
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->j:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->g:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 26
    .line 1201
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->l:Z

    .line 1202
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->d:Z

    .line 1203
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->j:I

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->h:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    .prologue
    .line 26
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->g:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    .prologue
    .line 26
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->h:I

    return v0
.end method


# virtual methods
.method public getUrlEnabled()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->c:Z

    return v0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 92
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/circle/ui/ExtendEditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 94
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->l:Z

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1020022
        :pswitch_0
    .end packed-switch
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->d:Z

    .line 88
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/circle/ui/ExtendEditText;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setInputUrlListener(Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText$a;)V
    .locals 0
    .param p1, "inputUrlListener"    # Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText$a;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->f:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText$a;

    .line 83
    return-void
.end method

.method public setUrlEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->c:Z

    .line 71
    return-void
.end method

.method public setUrlState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 74
    iput p1, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->j:I

    .line 75
    if-nez p1, :cond_0

    .line 76
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->l:Z

    .line 77
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->d:Z

    .line 79
    :cond_0
    return-void
.end method
