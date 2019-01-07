.class public abstract Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;
.super Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;
.source "PayPwdCommonActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field protected isShowGetBackPwd:Z

.field protected mAPLinearLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

.field protected mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

.field protected mBack:Lcom/alipay/mobile/verifyidentity/ui/APImageView;

.field protected mContent:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field protected mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

.field protected mLoading:Landroid/graphics/drawable/AnimationDrawable;

.field protected mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field protected mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field protected mPwdInputLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

.field protected mRoot:Landroid/view/View;

.field protected mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

.field protected mSubtitle:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field protected mTick:Landroid/widget/ImageView;

.field protected mTitle:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field protected mUser:Ljava/lang/String;

.field protected mViewHeight:I

.field protected mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

.field protected processBarMarginTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;-><init>()V

    .line 63
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->processBarMarginTop:I

    .line 67
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isShowGetBackPwd:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1326
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updatePubKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u670d\u52a1\u7aef\u6ca1\u6709\u63d0\u4f9b\u65b0\u7684\u516c\u94a5\uff0c\u4e0d\u66f4\u65b0"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    :goto_0
    return-void

    .line 1331
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->generatePubKey(Ljava/lang/String;)V

    .line 1332
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mPubKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->setRsaPublicKey(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected clearInputContent()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->clearText()V

    .line 373
    return-void
.end method

.method protected hideKeyboard()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 367
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "hideKeyboard()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    .line 369
    return-void
.end method

.method protected initContent()V
    .locals 2

    .prologue
    .line 158
    sget v0, Ligh$f;->paypwd_content:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mContent:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 159
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "footRemark"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mContent:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mContent:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 164
    :cond_0
    return-void
.end method

.method protected initGoOther()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    sget v0, Ligh$f;->paypwd_other:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 115
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isFindPPW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isShowGetBackPwd:Z

    .line 116
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "hasOthers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pwd_other"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 132
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u663e\u793a\u9009\u62e9\u5176\u5b83\u65b9\u5f0f\u5165\u53e3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isShowGetBackPwd:Z

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pwd_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$3;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 152
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u5728\u4e0d\u663e\u793a\u5176\u5b83\u65b9\u5f0f\u5165\u53e3\u7684\u60c5\u51b5\u4e0b\uff0c\u6839\u636e\u9700\u8981\uff0c\u663e\u793a\u5fd8\u8bb0\u5bc6\u7801\u5165\u53e3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    sget v1, Ligh$h;->pwd_forget_in_layout:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(I)V

    goto :goto_1
.end method

.method protected initInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isSimplePwd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    .line 184
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->initPwdInput()V

    .line 1211
    iput v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->processBarMarginTop:I

    .line 1212
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processBarMarginTop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->processBarMarginTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    sget v0, Ligh$f;->progress_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 1214
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1215
    iget v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->processBarMarginTop:I

    if-lez v2, :cond_1

    .line 1216
    iget v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->processBarMarginTop:I

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1220
    :goto_1
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    return-void

    .line 182
    :cond_0
    iput-boolean v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    goto :goto_0

    .line 1218
    :cond_1
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method protected initKeyBoard(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 195
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "initKeyBoard and new AlipayKeyboard"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeKeyboard(Landroid/widget/FrameLayout;)V

    .line 198
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 202
    return-void
.end method

.method protected initProgress()V
    .locals 2

    .prologue
    .line 167
    sget v0, Ligh$f;->pwd_input_area:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAPLinearLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    .line 168
    sget v0, Ligh$f;->paypwd_progress_new:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    const v1, -0xef7117

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->setBarColor(I)V

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->start()V

    .line 171
    sget v0, Ligh$f;->template_pay_success:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mTick:Landroid/widget/ImageView;

    .line 172
    sget v0, Ligh$f;->paypwd_progress_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 173
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "loadingTip"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method protected initPwdInput()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 252
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initSixPwd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget v0, Ligh$f;->paypwd_sixpwd_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mPwdInputLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    .line 254
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdInputAdapter;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdInputAdapter;-><init>()V

    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdInputAdapter;->getVISafeInput(Landroid/app/Activity;ZLandroid/content/Intent;)Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->setOnConfirmListener(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$5;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$6;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mPubKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->setRsaPublicKey(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mTimestamp:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 1229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 1231
    :try_start_0
    const-class v0, Landroid/widget/EditText;

    .line 1232
    const-string/jumbo v2, "setShowSoftInputOnFocus"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1234
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1235
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/EditText;

    .line 1241
    const-string/jumbo v2, "setSoftInputShownOnFocus"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1243
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1244
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 305
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mPwdInputLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    invoke-interface {v1}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;->addView(Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mPwdInputLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;->setVisibility(I)V

    .line 307
    return-void

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    sget-object v2, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "setSafeKeyboardPwdInput"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1245
    :catch_1
    move-exception v0

    .line 1246
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "setSafeKeyboardPwdInput"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected initSubtitle()V
    .locals 2

    .prologue
    .line 310
    sget v0, Ligh$f;->paypwd_subtitle:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSubtitle:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 311
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "subtitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSubtitle:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSubtitle:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 320
    :goto_0
    return-void

    .line 317
    :cond_0
    sget v0, Ligh$f;->blank_margin_bottom:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 318
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 429
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->hideKeyboard()V

    .line 432
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "msp keyboard is showing"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    .line 435
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 438
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNetError()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getPluginOrProxyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->clearInputContent()V

    .line 407
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->showProgress(I)V

    .line 408
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->showKeyboard()V

    .line 425
    :goto_0
    return-void

    .line 411
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Ligh$h;->network_unavailable:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Ligh$h;->retry:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$10;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$10;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    .line 420
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Ligh$h;->give_up:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$11;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$11;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    const/4 v0, 0x0

    .line 424
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    .line 411
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method protected onPwdError(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isShowGetBackPwd:Z

    if-nez v0, :cond_0

    move-object v3, v1

    .line 382
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isShowGetBackPwd:Z

    if-nez v0, :cond_1

    move-object v4, v1

    .line 389
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Ligh$h;->pwd_input_again:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$9;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$9;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    const/4 v0, 0x0

    .line 396
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    .line 381
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 397
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Ligh$h;->pwd_forget:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$8;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$8;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    goto :goto_1
.end method

.method protected showKeyBoardDelay(J)V
    .locals 3

    .prologue
    .line 341
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$7;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    return-void
.end method

.method protected showKeyboard()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 353
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "showKeyboard isSimplePwd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    invoke-interface {v2}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;J)V

    .line 361
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    invoke-interface {v2}, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;J)V

    goto :goto_0
.end method

.method protected showProgress(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 74
    if-nez p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAPLinearLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->start()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAPLinearLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mLoading:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mLoading:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mLoading:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0
.end method

.method protected startAnimationDone()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 87
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "animation done"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mTick:Landroid/widget/ImageView;

    sget v1, Ligh$e;->pwd_success_blue_notice:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mTick:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mTick:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mLoading:Landroid/graphics/drawable/AnimationDrawable;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mLoading:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 99
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pwd_PASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "FAIL to start success animation!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ligh$h;->pwd_verify_success:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
