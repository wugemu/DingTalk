.class public Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;
.super Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;
.source "SmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:I

.field private k:I

.field private l:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

.field private m:I

.field private n:Landroid/graphics/Rect;

.field private o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->m:I

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->n:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 455
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b()V

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v5, "2002"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 458
    return-void
.end method

.method private a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 473
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "next"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b()V

    .line 475
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;-><init>()V

    .line 476
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setMICRpcResponse(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 477
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 478
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 402
    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 404
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;

    invoke-static {p1, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;

    move-object v2, v0

    .line 406
    :goto_0
    if-eqz v2, :cond_0

    const-string/jumbo v0, "VALIDATECODE_SEND_SUCCESS"

    iget-object v3, v2, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "resend success"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->j:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setCountDown(I)V

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->startCountDown()V

    .line 410
    const/4 v0, 0x1

    .line 413
    :goto_1
    return v0

    .line 4417
    :cond_0
    if-eqz v2, :cond_2

    const-string/jumbo v0, "VALIDATECODE_SEND_TIMES_LIMIT"

    iget-object v3, v2, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4418
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "resend times limit"

    invoke-static {v0, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4419
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->enableResend()V

    .line 4420
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setEnabled(Z)V

    .line 4421
    iget-object v0, v2, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4422
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Ligh$h;->verifyidentity_wrong_data:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4423
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Ligh$h;->i_know:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$9;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$9;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    .line 4428
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    .line 4423
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    :goto_3
    move v0, v8

    .line 413
    goto :goto_1

    .line 4422
    :cond_1
    iget-object v2, v2, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->message:Ljava/lang/String;

    goto :goto_2

    .line 4430
    :cond_2
    sget-object v3, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "resend wrong "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_4

    const-string/jumbo v0, "null"

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4431
    if-eqz v2, :cond_3

    iget-object v0, v2, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4432
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Ligh$h;->verifyidentity_wrong_data:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4433
    :goto_5
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Ligh$h;->i_know:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$10;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$10;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    .line 4438
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    .line 4433
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 4439
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->enableResend()V

    goto :goto_3

    .line 4430
    :cond_4
    iget-object v0, v2, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->code:Ljava/lang/String;

    goto :goto_4

    .line 4432
    :cond_5
    iget-object v2, v2, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->message:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object v2, v1

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->n:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    .locals 3

    .prologue
    .line 45
    .line 5353
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setEnabled(Z)V

    .line 5354
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    const-string/jumbo v2, "RPC"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->l:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->l:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 6318
    iget-boolean v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifySuccess:Z

    if-eqz v0, :cond_0

    .line 6319
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "verify success"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6320
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 6345
    :goto_0
    return-void

    .line 6322
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->clearInput()V

    .line 6323
    const-string/jumbo v0, "VALIDATECODE_FAILURE"

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6324
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "verify wrong normal"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6325
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6326
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ligh$h;->verifyidentity_wrong_data:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6325
    :goto_1
    invoke-virtual {p0, v0, v5}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 6326
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    goto :goto_1

    .line 6328
    :cond_2
    const-string/jumbo v0, "VALIDATECODE_EXPIRED"

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6329
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "verify wrong expired"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6330
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6331
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ligh$h;->verifyidentity_wrong_data:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6330
    :goto_2
    invoke-virtual {p0, v0, v5}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->toast(Ljava/lang/String;I)V

    .line 6333
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->enableResend()V

    goto :goto_0

    .line 6331
    :cond_3
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    goto :goto_2

    .line 6334
    :cond_4
    const-string/jumbo v0, "VALIDATECODE_VALIDATE_TIMES_LIMIT"

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6335
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "verify wrong times limit"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6336
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6337
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Ligh$h;->verifyidentity_wrong_data:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6339
    :goto_3
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Ligh$h;->i_know:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$7;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$7;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 6344
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    .line 6339
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 6337
    :cond_5
    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    goto :goto_3

    .line 6346
    :cond_6
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verify wrong "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6347
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    goto/16 :goto_0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->m:I

    return v0
.end method

.method static synthetic access$2000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a()V

    return-void
.end method

.method static synthetic access$202(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->m:I

    return p1
.end method

.method static synthetic access$2100(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Z
    .locals 2

    .prologue
    .line 6393
    iget-boolean v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->success:Z

    if-nez v0, :cond_0

    .line 6394
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "resend fail"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6395
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 6396
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 6398
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b()V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    .locals 3

    .prologue
    .line 45
    .line 5253
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    monitor-enter v1

    .line 5255
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 5256
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Duplicate rpc request! Give up this one!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5257
    monitor-exit v1

    .line 5268
    :goto_0
    return-void

    .line 5259
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5261
    :try_start_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 5262
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;)V

    const-string/jumbo v2, "RPC"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5264
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->dismissProgressDialog()V

    .line 5265
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    monitor-enter v1

    .line 5266
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 5267
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5259
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->k:I

    return v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    .line 485
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 445
    .line 4467
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "cancel"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4468
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b()V

    .line 4469
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v5, "1003"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 446
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget v0, Ligh$g;->activity_sms:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 98
    if-nez v4, :cond_0

    .line 99
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "no intent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a()V

    .line 102
    :cond_0
    const-string/jumbo v0, "verifyAction"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "no action"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a()V

    .line 1116
    :cond_1
    sget v0, Ligh$f;->wrapper:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->h:Landroid/view/View;

    .line 1117
    sget v0, Ligh$f;->sms_scroll:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->i:Landroid/view/View;

    .line 1118
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1242
    sget v0, Ligh$f;->sms_phone:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->d:Landroid/widget/TextView;

    .line 1244
    const-string/jumbo v0, "smsPhone"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1246
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "no phone number"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a()V

    .line 1249
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2220
    sget v0, Ligh$f;->sms_tip:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->c:Landroid/widget/TextView;

    .line 2222
    const-string/jumbo v0, "smsTip"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2224
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ligh$h;->sms_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2226
    :cond_3
    const-string/jumbo v1, "smsHighlight"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2227
    if-nez v1, :cond_4

    .line 2228
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ligh$b;->sms_highlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2230
    :cond_4
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2231
    array-length v6, v1

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_6

    aget-object v7, v1, v2

    .line 2232
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 2233
    const/4 v9, -0x1

    if-eq v9, v8, :cond_5

    .line 2234
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Ligh$c;->linkColorBlue:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 2235
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v8

    const/16 v10, 0x11

    .line 2234
    invoke-virtual {v5, v9, v8, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2231
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2238
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3176
    sget v0, Ligh$f;->sms_submit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    .line 3177
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$4;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3182
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4156
    sget v0, Ligh$f;->sms_other:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g:Landroid/widget/TextView;

    .line 4158
    const-string/jumbo v0, "smsOthers"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4159
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4160
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4186
    :goto_1
    sget v0, Ligh$f;->sms_input:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    .line 4188
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    sget v1, Ligh$h;->sms_input_hint:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setHint(I)V

    .line 4189
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->requestFocus()Z

    .line 4191
    const-string/jumbo v0, "smsCodeCount"

    const/4 v1, 0x6

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->k:I

    .line 4192
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$5;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4205
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->k:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setMaxCodeCount(I)V

    .line 4207
    const-string/jumbo v0, "smsCountDown"

    const/16 v1, 0x3c

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->j:I

    .line 4208
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->j:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setCountDown(I)V

    .line 4209
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$6;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setResendClickListener(Landroid/view/View$OnClickListener;)V

    .line 4214
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->startCountDown()V

    .line 4216
    const-string/jumbo v0, "resendResponse"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a(Ljava/lang/String;)Z

    .line 113
    return-void

    .line 4171
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onDestroy()V

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onStart()V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$2;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onStop()V

    .line 139
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "got errors when hideKeyboard onStop()"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
