.class public Lcom/alipay/android/app/safepaybase/widget/SimplePassword;
.super Landroid/widget/LinearLayout;
.source "SimplePassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;
    }
.end annotation


# instance fields
.field private mBizId:I

.field private mBlackPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mEditText:Landroid/widget/EditText;

.field private mEncryptRandomString:Ljava/lang/String;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mRsaPublicKey:Ljava/lang/String;

.field private mSimplePassword:Ljava/lang/String;

.field private mSubmitInterface:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

.field private mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

.field private util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBizId:I

    .line 43
    invoke-static {}, Lcom/alipay/android/app/safepaybase/util/EditTextManager;->getEditTextUtils()Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    .line 44
    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mRsaPublicKey:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEncryptRandomString:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBizId:I

    .line 43
    invoke-static {}, Lcom/alipay/android/app/safepaybase/util/EditTextManager;->getEditTextUtils()Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    .line 44
    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mRsaPublicKey:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEncryptRandomString:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Liid$c;->safe_input_simple_password:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->initView()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mSimplePassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mSimplePassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setPointView(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mSubmitInterface:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .prologue
    .line 34
    iget v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBizId:I

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mRsaPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEncryptRandomString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/util/EditTextUtil;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    return-object v0
.end method

.method private initView()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 61
    sget v6, Liid$b;->mini_linSimplePwdComponent:I

    invoke-virtual {p0, v6}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mLayout:Landroid/widget/LinearLayout;

    .line 62
    sget v6, Liid$b;->mini_spwd_iv_1:I

    invoke-virtual {p0, v6}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .local v0, "iv1":Landroid/widget/ImageView;
    sget v6, Liid$b;->mini_spwd_iv_2:I

    invoke-virtual {p0, v6}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 64
    .local v1, "iv2":Landroid/widget/ImageView;
    sget v6, Liid$b;->mini_spwd_iv_3:I

    invoke-virtual {p0, v6}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 65
    .local v2, "iv3":Landroid/widget/ImageView;
    sget v6, Liid$b;->mini_spwd_iv_4:I

    invoke-virtual {p0, v6}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 66
    .local v3, "iv4":Landroid/widget/ImageView;
    sget v6, Liid$b;->mini_spwd_iv_5:I

    invoke-virtual {p0, v6}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 67
    .local v4, "iv5":Landroid/widget/ImageView;
    sget v6, Liid$b;->mini_spwd_iv_6:I

    invoke-virtual {p0, v6}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 68
    .local v5, "iv6":Landroid/widget/ImageView;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    .line 69
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget v6, Liid$b;->mini_spwd_input:I

    invoke-virtual {p0, v6}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    .line 76
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 78
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;

    invoke-direct {v7, p0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;-><init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 81
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    .line 82
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    .line 81
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 83
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$1;

    invoke-direct {v7, p0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$1;-><init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 95
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$2;

    invoke-direct {v7, p0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$2;-><init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 105
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v7}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 106
    return-void
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
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 180
    if-ge v0, p1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

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
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

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
.method public clearText()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public setBizId(I)V
    .locals 0
    .param p1, "bizId"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBizId:I

    .line 110
    return-void
.end method

.method public setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V
    .locals 0
    .param p1, "randomString"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEncryptRandomString:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 209
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 200
    return-void
.end method

.method public setRsaPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "rsaPublicKey"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mRsaPublicKey:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setmSubmitInterface(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V
    .locals 0
    .param p1, "mSubmitInterface"    # Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mSubmitInterface:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    .line 176
    return-void
.end method
