.class public Lcom/mybank/android/phone/common/ui/SimplePassword;
.super Landroid/widget/LinearLayout;
.source "SimplePassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mybank/android/phone/common/ui/SimplePassword$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/EditText;

.field b:Ljava/lang/String;

.field c:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

.field private d:Landroid/widget/LinearLayout;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

.field private i:Landroid/view/View$OnFocusChangeListener;

.field private j:Ljfp;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->g:I

    .line 43
    invoke-static {}, Ljfo;->a()Ljfp;

    move-result-object v0

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->j:Ljfp;

    .line 44
    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->k:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->b:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->c:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->g:I

    .line 43
    invoke-static {}, Ljfo;->a()Ljfp;

    move-result-object v0

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->j:Ljfp;

    .line 44
    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->k:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->b:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->c:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ljfw$c;->mybank_safe_input_simple_password:I

    invoke-virtual {v0, v1, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1061
    sget v0, Ljfw$b;->mini_linSimplePwdComponent:I

    invoke-virtual {p0, v0}, Lcom/mybank/android/phone/common/ui/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->d:Landroid/widget/LinearLayout;

    .line 1062
    sget v0, Ljfw$b;->mini_spwd_iv_1:I

    invoke-virtual {p0, v0}, Lcom/mybank/android/phone/common/ui/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1063
    sget v1, Ljfw$b;->mini_spwd_iv_2:I

    invoke-virtual {p0, v1}, Lcom/mybank/android/phone/common/ui/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1064
    sget v2, Ljfw$b;->mini_spwd_iv_3:I

    invoke-virtual {p0, v2}, Lcom/mybank/android/phone/common/ui/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1065
    sget v3, Ljfw$b;->mini_spwd_iv_4:I

    invoke-virtual {p0, v3}, Lcom/mybank/android/phone/common/ui/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1066
    sget v4, Ljfw$b;->mini_spwd_iv_5:I

    invoke-virtual {p0, v4}, Lcom/mybank/android/phone/common/ui/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1067
    sget v5, Ljfw$b;->mini_spwd_iv_6:I

    invoke-virtual {p0, v5}, Lcom/mybank/android/phone/common/ui/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1068
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->e:Ljava/util/List;

    .line 1069
    iget-object v6, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->e:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    sget v0, Ljfw$b;->mini_spwd_input:I

    invoke-virtual {p0, v0}, Lcom/mybank/android/phone/common/ui/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    .line 1076
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1078
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/mybank/android/phone/common/ui/SimplePassword$a;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/common/ui/SimplePassword$a;-><init>(Lcom/mybank/android/phone/common/ui/SimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1080
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1081
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    .line 1082
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    .line 1081
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1083
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1085
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/mybank/android/phone/common/ui/SimplePassword$1;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/common/ui/SimplePassword$1;-><init>(Lcom/mybank/android/phone/common/ui/SimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1095
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/mybank/android/phone/common/ui/SimplePassword$2;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/common/ui/SimplePassword$2;-><init>(Lcom/mybank/android/phone/common/ui/SimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1105
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    new-instance v1, Ljfn;

    invoke-direct {v1}, Ljfn;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/ui/SimplePassword;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->i:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/ui/SimplePassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/ui/SimplePassword;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/ui/SimplePassword;->setPointView(I)V

    return-void
.end method

.method static synthetic b(Lcom/mybank/android/phone/common/ui/SimplePassword;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/mybank/android/phone/common/ui/SimplePassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mybank/android/phone/common/ui/SimplePassword;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->h:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    return-object v0
.end method

.method static synthetic e(Lcom/mybank/android/phone/common/ui/SimplePassword;)I
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;

    .prologue
    .line 34
    iget v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->g:I

    return v0
.end method

.method static synthetic f(Lcom/mybank/android/phone/common/ui/SimplePassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/mybank/android/phone/common/ui/SimplePassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/mybank/android/phone/common/ui/SimplePassword;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->c:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-object v0
.end method

.method static synthetic i(Lcom/mybank/android/phone/common/ui/SimplePassword;)Ljfp;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->j:Ljfp;

    return-object v0
.end method

.method private setPointView(I)V
    .locals 3
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 180
    if-ge v0, p1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 186
    :cond_1
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public setBizId(I)V
    .locals 0
    .param p1, "bizId"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->g:I

    .line 110
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->i:Landroid/view/View$OnFocusChangeListener;

    .line 200
    return-void
.end method

.method public setRsaPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "rsaPublicKey"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->k:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setmSubmitInterface(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V
    .locals 0
    .param p1, "mSubmitInterface"    # Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SimplePassword;->h:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    .line 176
    return-void
.end method
