.class public Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private isCleanIconShowing:Z

.field private mActivity:Landroid/app/Activity;

.field private mBizId:I

.field private mBottom:I

.field private mButtonOk:Landroid/widget/Button;

.field private mButtonOkVerticalLine:Landroid/view/View;

.field private mCleanDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditText:Landroid/widget/EditText;

.field private mEncryptRandomString:Ljava/lang/String;

.field private mIsSimplePassword:Z

.field private mLeft:I

.field private mLocalView:Landroid/view/View;

.field private mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mRight:I

.field private mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

.field private mTop:I

.field private mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

.field private rsaPublicKey:Ljava/lang/String;

.field private util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isSimplePassword"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    .line 30
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .line 32
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOkVerticalLine:Landroid/view/View;

    .line 33
    invoke-static {}, Lcom/alipay/android/app/safepaybase/util/EditTextManager;->getEditTextUtils()Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    .line 34
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    .line 35
    iput-boolean v2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBizId:I

    .line 37
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    .line 38
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 39
    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->rsaPublicKey:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEncryptRandomString:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 42
    iput-boolean v2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->isCleanIconShowing:Z

    .line 43
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mActivity:Landroid/app/Activity;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBizId:I

    .line 53
    iput-boolean p2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    .line 54
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->initView(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->initPwdInputView()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBizId:I

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/util/EditTextUtil;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->setCleanIcon()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->rsaPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEncryptRandomString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-object v0
.end method

.method private initPwdInputView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 59
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v1, Liid$b;->common_input_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setBizId(I)V

    .line 97
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, -0x1

    sget v1, Liid$a;->input_clean_icon:I

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getPaddingDrawable(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;-><init>(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private setCleanIcon()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->isCleanIconShowing:Z

    .line 244
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 247
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->isCleanIconShowing:Z

    .line 248
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public clearText()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->clearText()V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->clear(I)V

    .line 194
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    return-object v0
.end method

.method public getEditContent()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBizId:I

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->rsaPublicKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEncryptRandomString:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->getText(ILjava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    goto :goto_0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    sget v0, Liid$c;->safe_input_widget:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v1, Liid$b;->input_et_password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$2;-><init>(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v1, Liid$b;->spwd_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .line 146
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setmSubmitInterface(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v1, Liid$b;->button_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    .line 150
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;-><init>(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 162
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 163
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v1, Liid$b;->button_ok_verticalline:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOkVerticalLine:Landroid/view/View;

    .line 165
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 214
    iget-boolean v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->isCleanIconShowing:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    .line 215
    iget-object v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getWidth()I

    move-result v3

    .line 216
    .local v3, "width":I
    iget-object v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    .line 217
    .local v2, "height":I
    iget-object v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 218
    .local v1, "dw":I
    iget-object v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 219
    .local v0, "dh":I
    sub-int v7, v3, v1

    div-int/lit8 v8, v1, 0x4

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLeft:I

    .line 220
    sub-int v7, v2, v0

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mTop:I

    .line 221
    iget v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLeft:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mRight:I

    .line 222
    iget v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mTop:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBottom:I

    .line 225
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_0
    iget v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLeft:I

    if-lez v7, :cond_2

    iget-boolean v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->isCleanIconShowing:Z

    if-eqz v7, :cond_2

    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 227
    .local v4, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 228
    .local v5, "y":F
    iget v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLeft:I

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mRight:I

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_2

    iget v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mTop:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBottom:I

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_2

    .line 229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->clearText()V

    .line 235
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_1
    :goto_0
    return v6

    :cond_2
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6, p2}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0
.end method

.method public setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V
    .locals 1
    .param p1, "randomString"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEncryptRandomString:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 116
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setNeedComfirm(Z)V
    .locals 2
    .param p1, "needComfirm"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 199
    if-nez p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOkVerticalLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public setOkButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    goto :goto_0
.end method

.method public setRsaPublicKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->rsaPublicKey:Ljava/lang/String;

    .line 108
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setRsaPublicKey(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method public setUserConfirmListener(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    .line 101
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setmSubmitInterface(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V

    .line 104
    :cond_0
    return-void
.end method
