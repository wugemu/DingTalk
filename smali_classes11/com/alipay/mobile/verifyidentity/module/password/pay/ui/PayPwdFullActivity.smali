.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;
.super Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;
.source "PayPwdFullActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected initViewHeight()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 76
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->b:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->mViewHeight:I

    .line 77
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mViewHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->mViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "102"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->notifyCancel(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->mIsLogicInterrupted:Z

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 32
    :cond_0
    sget v0, Ligh$g;->activity_paypwd_full:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->setContentView(I)V

    .line 33
    sget v0, Ligh$f;->paypwd_bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->mRoot:Landroid/view/View;

    .line 34
    sget v0, Ligh$f;->pwd_wrapper:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    .line 35
    sget v0, Ligh$f;->auth_titleBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->b:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    .line 36
    sget v0, Ligh$f;->keyboard_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 37
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->mRoot:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initViewHeight()V

    .line 1081
    sget v1, Ligh$f;->pwd_titlebar:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 1082
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setVisibility(I)V

    .line 1085
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 42
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initSubtitle()V

    .line 43
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initKeyBoard(Landroid/view/ViewGroup;)V

    .line 44
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initInput()V

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initProgress()V

    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initContent()V

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initGoOther()V

    goto :goto_0

    .line 1089
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1091
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->b:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setTitleText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->onStart()V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->showKeyBoardDelay(J)V

    .line 56
    :cond_0
    return-void
.end method
