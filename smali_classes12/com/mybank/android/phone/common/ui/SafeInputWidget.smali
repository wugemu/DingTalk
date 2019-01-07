.class public Lcom/mybank/android/phone/common/ui/SafeInputWidget;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;


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

.field private mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

.field private mTop:I

.field private mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

.field private rsaPublicKey:Ljava/lang/String;

.field private util:Ljfp;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isSimplePassword"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    .line 28
    iput-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    .line 30
    iput-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mButtonOkVerticalLine:Landroid/view/View;

    .line 31
    invoke-static {}, Ljfo;->a()Ljfp;

    move-result-object v0

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->util:Ljfp;

    .line 32
    iput-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mLocalView:Landroid/view/View;

    .line 33
    iput-boolean v2, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mIsSimplePassword:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mBizId:I

    .line 35
    iput-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    .line 36
    iput-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 37
    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->rsaPublicKey:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEncryptRandomString:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 40
    iput-boolean v2, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->isCleanIconShowing:Z

    .line 41
    iput-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mActivity:Landroid/app/Activity;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mBizId:I

    .line 51
    iput-boolean p2, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mIsSimplePassword:Z

    .line 52
    invoke-virtual {p0, p1}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->initView(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->initPwdInputView()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    .prologue
    .line 24
    iget v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mBizId:I

    return v0
.end method

.method static synthetic access$100(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Ljfp;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->util:Ljfp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->setCleanIcon()V

    return-void
.end method

.method static synthetic access$400(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->rsaPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEncryptRandomString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-object v0
.end method

.method private initPwdInputView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 57
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v1, Ljfw$b;->common_input_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-virtual {v0, v3}, Lcom/mybank/android/phone/common/ui/SimplePassword;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    iget v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/ui/SimplePassword;->setBizId(I)V

    .line 95
    :goto_0
    return-void

    .line 63
    :cond_0
    sget v0, Ljfw$a;->input_clean_icon:I

    iget-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Ljfq;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    new-instance v1, Ljfn;

    invoke-direct {v1}, Ljfn;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 66
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-virtual {v0, v2}, Lcom/mybank/android/phone/common/ui/SimplePassword;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/mybank/android/phone/common/ui/SafeInputWidget$1;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget$1;-><init>(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)V

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

    .line 237
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->isCleanIconShowing:Z

    .line 242
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->isCleanIconShowing:Z

    .line 246
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

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
    .line 186
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    .line 2189
    iget-object v1, v0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2190
    iget-object v0, v0, Lcom/mybank/android/phone/common/ui/SimplePassword;->a:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->util:Ljfp;

    iget v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mBizId:I

    .line 3060
    iget-object v0, v0, Ljfp;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mLocalView:Landroid/view/View;

    return-object v0
.end method

.method public getEditContent()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->util:Ljfp;

    iget v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mBizId:I

    iget-object v2, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEncryptRandomString:Ljava/lang/String;

    iget-object v3, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-virtual {v0, v1, v2, v3}, Ljfp;->a(ILjava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-virtual {v0}, Lcom/mybank/android/phone/common/ui/SimplePassword;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    goto :goto_0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    sget v0, Ljfw$c;->mybank_safe_input_widget:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mLocalView:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v1, Ljfw$b;->input_et_password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    .line 135
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/mybank/android/phone/common/ui/SafeInputWidget$2;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget$2;-><init>(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v1, Ljfw$b;->spwd_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mybank/android/phone/common/ui/SimplePassword;

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    .line 144
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    iget-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/ui/SimplePassword;->setmSubmitInterface(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V

    .line 147
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v1, Ljfw$b;->button_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    .line 148
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    new-instance v1, Lcom/mybank/android/phone/common/ui/SafeInputWidget$3;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget$3;-><init>(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 160
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 161
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v1, Ljfw$b;->button_ok_verticalline:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mButtonOkVerticalLine:Landroid/view/View;

    .line 163
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

    .line 212
    iget-boolean v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->isCleanIconShowing:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    .line 213
    iget-object v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getWidth()I

    move-result v3

    .line 214
    .local v3, "width":I
    iget-object v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    .line 215
    .local v2, "height":I
    iget-object v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 216
    .local v1, "dw":I
    iget-object v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 217
    .local v0, "dh":I
    sub-int v7, v3, v1

    div-int/lit8 v8, v1, 0x4

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mLeft:I

    .line 218
    sub-int v7, v2, v0

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mTop:I

    .line 219
    iget v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mLeft:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mRight:I

    .line 220
    iget v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mTop:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mBottom:I

    .line 223
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_0
    iget v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mLeft:I

    if-lez v7, :cond_2

    iget-boolean v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->isCleanIconShowing:Z

    if-eqz v7, :cond_2

    .line 224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 225
    .local v4, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 226
    .local v5, "y":F
    iget v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mLeft:I

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mRight:I

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_2

    iget v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mTop:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mBottom:I

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_2

    .line 227
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->clearText()V

    .line 233
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_1
    :goto_0
    return v6

    :cond_2
    iget-object v6, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6, p2}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0
.end method

.method public setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V
    .locals 1
    .param p1, "randomString"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEncryptRandomString:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 114
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    .line 1207
    iput-object p1, v0, Lcom/mybank/android/phone/common/ui/SimplePassword;->b:Ljava/lang/String;

    .line 1208
    iput-object p2, v0, Lcom/mybank/android/phone/common/ui/SimplePassword;->c:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 117
    :cond_0
    return-void
.end method

.method public setNeedConfirmButton(Z)V
    .locals 2
    .param p1, "needComfirm"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 197
    if-nez p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mButtonOkVerticalLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public setOkButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-virtual {v0, p1}, Lcom/mybank/android/phone/common/ui/SimplePassword;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setOnConfirmListener(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    .line 99
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    iget-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/ui/SimplePassword;->setmSubmitInterface(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-virtual {v0, p1}, Lcom/mybank/android/phone/common/ui/SimplePassword;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    goto :goto_0
.end method

.method public setRsaPublicKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->rsaPublicKey:Ljava/lang/String;

    .line 106
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->mSimpleEditText:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-virtual {v0, p1}, Lcom/mybank/android/phone/common/ui/SimplePassword;->setRsaPublicKey(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method
