.class public Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;
.super Landroid/support/v4/app/FragmentActivity;
.source "BioFragmentContainer.java"

# interfaces
.implements Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field protected mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

.field protected mBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;

.field protected mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field protected mFragmentManager:Lcn;

.field protected mLocalBroadcastManager:Ldq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 119
    new-instance v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer$1;-><init>(Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public backward(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mFragmentManager:Lcn;

    invoke-virtual {v0}, Lcn;->e()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mFragmentManager:Lcn;

    invoke-virtual {v0}, Lcn;->c()V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mFragmentManager:Lcn;

    invoke-virtual {v0}, Lcn;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mFragmentManager:Lcn;

    invoke-virtual {v1}, Lcn;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;

    .line 74
    :cond_0
    return-void
.end method

.method protected commandFinished()V
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "commandFinished"

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->finishActivity(Z)V

    .line 147
    return-void
.end method

.method public finish(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->finish()V

    .line 106
    return-void
.end method

.method public finishActivity(Z)V
    .locals 2
    .param p1, "auto"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "finishActivity:param: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " remote:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->isAutoClose()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 162
    if-eqz p1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->isAutoClose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string/jumbo v0, "finishActivity end1"

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->finish()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const-string/jumbo v0, "finishActivity end2"

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->finish()V

    goto :goto_0
.end method

.method public forward(Landroid/os/Bundle;Lcom/alipay/mobile/security/bio/workspace/BioFragment;)V
    .locals 4
    .param p1, "arg"    # Landroid/os/Bundle;
    .param p2, "fragment"    # Lcom/alipay/mobile/security/bio/workspace/BioFragment;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mFragmentManager:Lcn;

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 80
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v2, Lige$c;->bio_framework_container:I

    invoke-virtual {v1, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 81
    iput-object p2, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "backStack":Z
    if-eqz p1, :cond_0

    .line 86
    const-string/jumbo v2, "BACK_STACK"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    :cond_0
    if-eqz v0, :cond_1

    .line 90
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    return-object v0
.end method

.method protected getUniqueID()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 111
    .local v1, "uuid":Ljava/util/UUID;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceStatearg"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v6, Lige$d;->bio_framework_main:I

    invoke-virtual {p0, v6}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->setContentView(I)V

    .line 38
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mLocalBroadcastManager:Ldq;

    .line 41
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.alipay.mobile.security.bio.autoclose"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "sampleIntentFilter":Landroid/content/IntentFilter;
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.alipay.mobile.security.bio.server.success"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    .local v5, "serverSuccessFilter":Landroid/content/IntentFilter;
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.alipay.mobile.security.bio.server.fail"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    .local v3, "serverFailFilter":Landroid/content/IntentFilter;
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.alipay.mobile.security.bio.server.retry"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, "serverRetryFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mLocalBroadcastManager:Ldq;

    iget-object v7, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 47
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mLocalBroadcastManager:Ldq;

    iget-object v7, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 48
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mLocalBroadcastManager:Ldq;

    iget-object v7, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 49
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mLocalBroadcastManager:Ldq;

    iget-object v7, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->getSupportFragmentManager()Lcn;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mFragmentManager:Lcn;

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "com.alipay.mobile.security.bio.action.intent.app"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 53
    invoke-static {v6, v7}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    iput-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 57
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v6}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getRemoteURL()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "remoteUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v7, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;->setRemoteUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "remoteUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mLocalBroadcastManager:Ldq;

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 141
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 142
    return-void
.end method

.method public onReceiveAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    return-void
.end method

.method public sendResponse(I)V
    .locals 2
    .param p1, "error"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->sendResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public sendResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
    .locals 6
    .param p1, "res"    # Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.alipay.mobile.security.bio.action.callback"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/alipay/mobile/security/bio/api/BioResponse;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/api/BioResponse;-><init>()V

    .line 209
    .local v0, "bioResponse":Lcom/alipay/mobile/security/bio/api/BioResponse;
    iget-boolean v4, p1, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->isSucess:Z

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setSuccess(Z)V

    .line 210
    iget-object v4, p1, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->token:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setToken(Ljava/lang/String;)V

    .line 211
    iget-object v4, p1, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->resultMessage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setResultMessage(Ljava/lang/String;)V

    .line 212
    iget v4, p1, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->errorCode:I

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setResult(I)V

    .line 213
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setTag(Ljava/lang/String;)V

    .line 214
    iget-object v4, p1, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->ext:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 215
    iget-object v4, p1, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->ext:Ljava/util/Map;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setExt(Ljava/util/Map;)V

    .line 217
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "json":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "response json:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v4, "com.alipay.mobile.security.bio.action.intent.rev"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 223
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mLocalBroadcastManager:Ldq;

    invoke-virtual {v4, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 226
    return-void
.end method

.method public sendResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "other"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.alipay.mobile.security.bio.action.callback"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/alipay/mobile/security/bio/api/BioResponse;

    invoke-direct {v2}, Lcom/alipay/mobile/security/bio/api/BioResponse;-><init>()V

    .line 183
    .local v2, "res":Lcom/alipay/mobile/security/bio/api/BioResponse;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setSuccess(Z)V

    .line 184
    invoke-virtual {v2, p2}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setResult(I)V

    .line 185
    invoke-virtual {v2, p3}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setResultMessage(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setTag(Ljava/lang/String;)V

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "com.alipay.mobile.security.bio.action.intent.rev"

    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 191
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mLocalBroadcastManager:Ldq;

    invoke-virtual {v3, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 192
    return-void
.end method

.method public verifyCallBackEvent()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method
