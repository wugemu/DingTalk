.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;
.super Ljava/lang/Object;
.source "PwdCommonHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field protected mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

.field mNotifyResultHandler:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;

.field public mPlugin:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

.field public sourceToPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    .line 41
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/verifyidentity/module/MicroModule;Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 46
    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mPlugin:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    .line 47
    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mNotifyResultHandler:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mPlugin:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mPlugin:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->updateVerifyStatus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addLogicModuleName(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    const-string/jumbo v0, "PAYMENT_PASSWORD_PLUS"

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->sourceToPwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "PAYMENT_PASSWORD_PLUS"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setLogicModuleName(Ljava/lang/String;)V

    .line 156
    :cond_0
    return-object p1
.end method

.method public doNextStep(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    const-string/jumbo v1, "next step"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;-><init>()V

    .line 111
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setMICRpcResponse(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 115
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 116
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v1, "1001"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getLogicModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->sourceToPwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->sourceToPwd:Ljava/lang/String;

    goto :goto_0
.end method

.method public goGetBackPPW()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    :try_start_0
    const-string/jumbo v0, "alipays://platformapi/startapp?appId=20000013&preAuth=YES"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ligh$h;->pwd_install:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyCancel()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->notifyCancel(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public notifyCancel(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cancel [subcode]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v1, "1003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 141
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "subCode"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 144
    return-void
.end method

.method public notifyError()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    const-string/jumbo v1, "error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v1, "2002"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 122
    return-void
.end method

.method public notifyRPCError()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    const-string/jumbo v1, "rpc error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v1, "2003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 128
    return-void
.end method

.method public notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mNotifyResultHandler:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mNotifyResultHandler:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 150
    :cond_0
    return-void
.end method

.method public processError(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 62
    const-string/jumbo v0, "PPW_LOCK_FIND"

    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    const-string/jumbo v1, "lock findable"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Ligh$h;->pwd_find_later:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$1;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    .line 71
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Ligh$h;->pwd_find_now:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$2;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$2;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;)V

    .line 64
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 93
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string/jumbo v0, "PPW_LOCK"

    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    const-string/jumbo v1, "lock notify"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Ligh$h;->i_know:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$3;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$3;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 88
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unhandled error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Ligh$h;->verifyidentity_wrong_data:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->toast(Ljava/lang/String;I)V

    .line 90
    const-string/jumbo v0, "abort"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->doNextStep(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    goto :goto_1
.end method

.method public writeAddPWDBehavorLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 181
    const-string/jumbo v0, "UC-MobileIC-161201-1"

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->writeBehavorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method protected writeBehavorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 173
    const-string/jumbo v0, "module"

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->getLogicModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v0, "code"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v0, "binIndx"

    invoke-interface {v7, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v2, "20000666"

    const-string/jumbo v3, "hsbmts"

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 177
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p1

    .line 176
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 178
    return-void
.end method

.method public writePWDErrorBehavorLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    const-string/jumbo v0, "UC-MobileIC-161201-2"

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->writeBehavorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method
