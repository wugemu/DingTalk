.class public Lcom/taobao/accs/internal/ACCSManagerImpl;
.super Ljava/lang/Object;
.source "ACCSManagerImpl.java"

# interfaces
.implements Ljhz;


# static fields
.field private static final TAG:Ljava/lang/String; = "ACCSManagerImpl"


# instance fields
.field private baseDataId:I

.field private mClientManager:Ljil;

.field private mMessageHandler:Ljip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    return-void
.end method

.method private static getIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "command"    # I

    .prologue
    .line 617
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getIntent null command:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " serviceEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "error":Ljava/lang/String;
    const-string/jumbo v2, "ACCSManagerImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    const/4 v1, 0x0

    .line 648
    .end local v0    # "error":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 627
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 628
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const-string/jumbo v2, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string/jumbo v2, "command"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private onResult(Landroid/content/Context;Lcom/taobao/accs/data/Message;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/taobao/accs/data/Message;
    .param p3, "errorCode"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mMessageHandler:Ljip;

    if-nez v0, :cond_0

    .line 225
    invoke-static {p1}, Ljip;->a(Landroid/content/Context;)Ljip;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mMessageHandler:Ljip;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mMessageHandler:Ljip;

    invoke-virtual {v0, p2, p3}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 228
    return-void
.end method

.method private sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "command"    # I
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "dataId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 674
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    const-string/jumbo v1, "command"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 677
    const-string/jumbo v1, "serviceId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string/jumbo v1, "dataId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string/jumbo v2, "errorCode"

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const/16 v1, 0xc8

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    invoke-static {p1, v0}, Ljiq;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 682
    return-void

    .line 679
    :cond_0
    const/16 v1, 0x12c

    goto :goto_0
.end method

.method private sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/taobao/accs/data/Message;
    .param p3, "command"    # I
    .param p4, "isForceBind"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0xc8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 176
    invoke-static {p1, v7}, Ljiu;->a(Landroid/content/Context;I)Ljiu;

    move-result-object v0

    .line 177
    .local v0, "connection":Ljiu;
    invoke-virtual {v0}, Ljiu;->a()V

    .line 178
    if-nez p2, :cond_1

    .line 179
    const-string/jumbo v2, "ACCSManagerImpl"

    const-string/jumbo v3, "message is null"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/taobao/accs/data/Message;->buildParameterError(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object p2

    .line 182
    const/4 v2, -0x2

    invoke-direct {p0, p1, p2, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->onResult(Landroid/content/Context;Lcom/taobao/accs/data/Message;I)V

    .line 220
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->startChannelService(Landroid/content/Context;)V

    .line 221
    return-void

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mClientManager:Ljil;

    if-nez v2, :cond_2

    .line 185
    invoke-static {p1}, Ljil;->a(Landroid/content/Context;)Ljil;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mClientManager:Ljil;

    .line 187
    :cond_2
    const/4 v1, 0x1

    .line 188
    .local v1, "needSend":Z
    packed-switch p3, :pswitch_data_0

    .line 215
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 216
    const-string/jumbo v2, "ACCSManagerImpl"

    const-string/jumbo v3, "sendControlMessage"

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "command"

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-virtual {v0, p2, v7}, Ljiu;->b(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_0

    .line 190
    :pswitch_0
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mClientManager:Ljil;

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljil;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p4, :cond_3

    .line 192
    const-string/jumbo v2, "ACCSManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isAppBinded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-direct {p0, p1, p2, v8}, Lcom/taobao/accs/internal/ACCSManagerImpl;->onResult(Landroid/content/Context;Lcom/taobao/accs/data/Message;I)V

    .line 194
    const/4 v1, 0x0

    goto :goto_1

    .line 198
    :pswitch_1
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mClientManager:Ljil;

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljil;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    const-string/jumbo v2, "ACCSManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isAppUnbinded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-direct {p0, p1, p2, v8}, Lcom/taobao/accs/internal/ACCSManagerImpl;->onResult(Landroid/content/Context;Lcom/taobao/accs/data/Message;I)V

    .line 202
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 206
    :pswitch_2
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mClientManager:Ljil;

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p4, :cond_3

    .line 208
    const-string/jumbo v2, "ACCSManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isUserBinded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "isForceBind"

    aput-object v5, v4, v6

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-direct {p0, p1, p2, v8}, Lcom/taobao/accs/internal/ACCSManagerImpl;->onResult(Landroid/content/Context;Lcom/taobao/accs/data/Message;I)V

    .line 211
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startChannelService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    :try_start_0
    new-instance v1, Lcom/taobao/accs/internal/ACCSManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/accs/internal/ACCSManagerImpl$1;-><init>(Lcom/taobao/accs/internal/ACCSManagerImpl;Landroid/content/Context;)V

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Ljin;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "ACCSManagerImpl"

    const-string/jumbo v2, "startChannelService"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "appSecret"    # Ljava/lang/String;
    .param p4, "ttid"    # Ljava/lang/String;
    .param p5, "appCallback"    # Ljia;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string/jumbo v6, "ACCSManagerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bindApp APPKEY:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/taobao/accs/data/Message;->buildParameterError(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v4

    .line 72
    .local v4, "paramErrorMsg":Lcom/taobao/accs/data/Message;
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 73
    const/16 v6, -0x11

    invoke-direct {p0, p1, v4, v6}, Lcom/taobao/accs/internal/ACCSManagerImpl;->onResult(Landroid/content/Context;Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 77
    :cond_2
    sget-object v6, Lcom/taobao/accs/client/AccsConfig;->d:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    sget-object v7, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->SECURITY_OFF:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    if-ne v6, v7, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 78
    const/16 v6, -0xf

    invoke-direct {p0, p1, v4, v6}, Lcom/taobao/accs/internal/ACCSManagerImpl;->onResult(Landroid/content/Context;Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 82
    :cond_3
    if-nez p5, :cond_4

    .line 83
    const/16 v6, -0x10

    invoke-direct {p0, p1, v4, v6}, Lcom/taobao/accs/internal/ACCSManagerImpl;->onResult(Landroid/content/Context;Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 87
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 88
    const/16 v6, -0xe

    invoke-direct {p0, p1, v4, v6}, Lcom/taobao/accs/internal/ACCSManagerImpl;->onResult(Landroid/content/Context;Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 90
    :cond_5
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 91
    const/4 v6, 0x0

    invoke-static {p1, p2, v6, p4}, Lcom/taobao/accs/utl/UtilityImpl;->setAppInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_6
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljim;->a(Ljia;)V

    .line 94
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljim;->a(Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->enableService(Landroid/content/Context;)V

    .line 102
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v6

    invoke-virtual {v6}, Ljim;->d()Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 110
    .local v0, "appVersion":Ljava/lang/String;
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->appVersionChanged(Landroid/content/Context;)Z

    move-result v2

    .line 111
    .local v2, "isforceBind":Z
    if-eqz v2, :cond_7

    .line 112
    const-string/jumbo v6, "fouce_bind"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    :cond_7
    const-string/jumbo v6, "appKey"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v6, "ttid"

    invoke-virtual {v1, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v6, "appVersion"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v6, "app_sercet"

    invoke-virtual {v1, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 119
    invoke-static {p1, v1}, Lcom/taobao/accs/data/Message;->buildBindApp(Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v3

    .line 120
    .local v3, "message":Lcom/taobao/accs/data/Message;
    const/4 v6, 0x1

    invoke-direct {p0, p1, v3, v6, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    .end local v3    # "message":Lcom/taobao/accs/data/Message;
    :cond_8
    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "accs"

    aput-object v8, v6, v7

    new-instance v7, Ljjn$a;

    invoke-direct {v7}, Ljjn$a;-><init>()V

    invoke-static {v6, v7}, Ljjn;->a([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 129
    invoke-static {}, Ljjn;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 131
    :catch_0
    move-exception v6

    :try_start_2
    const-string/jumbo v6, "ACCSManagerImpl"

    const-string/jumbo v7, "no orange sdk"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 134
    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v2    # "isforceBind":Z
    :catch_1
    move-exception v5

    .line 135
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "ACCSManagerImpl"

    const-string/jumbo v7, "bindApp exception"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v5, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljia;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "ttid"    # Ljava/lang/String;
    .param p4, "appCallback"    # Ljia;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    const-string/jumbo v3, "accs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V

    .line 62
    return-void
.end method

.method public bindService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x5

    .line 329
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 335
    invoke-static {p1, v4}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 336
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 337
    const/4 v3, 0x0

    invoke-direct {p0, p1, v4, p2, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 344
    const-string/jumbo v3, "appKey"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string/jumbo v3, "serviceId"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 348
    invoke-static {p1, v1}, Lcom/taobao/accs/data/Message;->buildBindService(Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v2

    .line 349
    .local v2, "message":Lcom/taobao/accs/data/Message;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_0

    .line 351
    .end local v2    # "message":Lcom/taobao/accs/data/Message;
    :cond_3
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public bindUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->bindUser(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 255
    return-void
.end method

.method public bindUser(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 259
    :try_start_0
    const-string/jumbo v5, "ACCSManagerImpl"

    const-string/jumbo v6, "bindUser"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "userId"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    move v2, p3

    .line 261
    .local v2, "isForce":Z
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 262
    const-string/jumbo v5, "ACCSManagerImpl"

    const-string/jumbo v6, "accs disabled"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    .end local v2    # "isForce":Z
    :goto_0
    return-void

    .line 266
    .restart local v2    # "isForce":Z
    :cond_0
    const/4 v5, 0x3

    invoke-static {p1, v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 267
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 268
    const-string/jumbo v5, "ACCSManagerImpl"

    const-string/jumbo v6, "intent null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isForce":Z
    :catch_0
    move-exception v4

    .line 296
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "ACCSManagerImpl"

    const-string/jumbo v6, "bindUser"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "isForce":Z
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 274
    const-string/jumbo v5, "ACCSManagerImpl"

    const-string/jumbo v6, "appKey null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->appVersionChanged(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p3, :cond_4

    .line 278
    :cond_3
    const-string/jumbo v5, "ACCSManagerImpl"

    const-string/jumbo v6, "force bind User"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    const/4 v2, 0x1

    .line 280
    const-string/jumbo v5, "fouce_bind"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    :cond_4
    const-string/jumbo v5, "appKey"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string/jumbo v5, "userInfo"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 286
    invoke-static {p1, v1}, Lcom/taobao/accs/data/Message;->buildBindUser(Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v3

    .line 287
    .local v3, "message":Lcom/taobao/accs/data/Message;
    const/4 v5, 0x3

    invoke-direct {p0, p1, v3, v5, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_0

    .line 289
    .end local v3    # "message":Lcom/taobao/accs/data/Message;
    :cond_5
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public cancel(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 730
    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljiu;->a(Landroid/content/Context;I)Ljiu;

    move-result-object v0

    .line 731
    .local v0, "connection":Ljiu;
    invoke-virtual {v0, p2}, Ljiu;->a(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public clearLoginInfo(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 725
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v0

    .line 1129
    const/4 v1, 0x0

    iput-object v1, v0, Ljim;->c:Ljic;

    .line 726
    return-void
.end method

.method public forceDisableService(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 653
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->focusDisableService(Landroid/content/Context;)V

    .line 654
    return-void
.end method

.method public forceEnableService(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 658
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->focusEnableService(Landroid/content/Context;)V

    .line 659
    return-void
.end method

.method public forceReConnectChannel()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2033
    sget-object v0, Lia$b;->a:Lia;

    .line 758
    invoke-virtual {v0}, Lia;->b()V

    .line 759
    invoke-virtual {p0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getChannelState()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getChannelState()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/32 v10, 0xea60

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 736
    invoke-virtual {p0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getUserUnit()Ljava/lang/String;

    move-result-object v3

    .line 737
    .local v3, "unitHost":Ljava/lang/String;
    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljiu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "centerHost":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 740
    .local v2, "channelState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v5

    invoke-virtual {v5, v0, v10, v11}, Lanet/channel/SessionCenter;->getThrowsException(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object v1

    .line 744
    .local v1, "centerSession":Lanet/channel/Session;
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v5

    invoke-virtual {v5, v3, v10, v11}, Lanet/channel/SessionCenter;->getThrowsException(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object v4

    .line 746
    .local v4, "unitSession":Lanet/channel/Session;
    if-eqz v1, :cond_0

    .line 747
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    :cond_0
    if-eqz v4, :cond_1

    .line 750
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    :cond_1
    const-string/jumbo v5, "ACCSManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getChannelState "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    return-object v2
.end method

.method public getUserUnit()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 764
    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v0

    .line 765
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 766
    const-string/jumbo v2, "ACCSManagerImpl"

    const-string/jumbo v3, "context is null"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    const/4 v1, 0x0

    .line 778
    :cond_0
    :goto_0
    return-object v1

    .line 769
    :cond_1
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v2

    invoke-static {v0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v3

    invoke-virtual {v3}, Ljim;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lka;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljiu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, "host":Ljava/lang/String;
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 776
    const-string/jumbo v2, "ACCSManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getUserUnit "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isChannelError(I)Z
    .locals 2
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 783
    .line 2135
    const/4 v0, 0x0

    .line 2136
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/16 v1, -0x9

    if-eq p1, v1, :cond_0

    const/16 v1, -0xb

    if-eq p1, v1, :cond_0

    const/4 v1, -0x7

    if-ne p1, v1, :cond_1

    .line 2140
    :cond_0
    const/4 v0, 0x1

    .line 783
    :cond_1
    return v0
.end method

.method public isNetworkReachable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 613
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public registerDataListener(Landroid/content/Context;Ljava/lang/String;Ljig;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "listener"    # Ljig;

    .prologue
    .line 798
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljim;->a(Ljava/lang/String;Ljig;)V

    .line 799
    return-void
.end method

.method public registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "serviceClassName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 788
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v0

    .line 2165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2166
    :cond_0
    :goto_0
    return-void

    .line 2168
    :cond_1
    iget-object v0, v0, Ljim;->l:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public sendBusinessAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "flags"    # S
    .param p5, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p6, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 807
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/taobao/accs/data/Message;->buildPushAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object v7

    .line 808
    .local v7, "ack":Lcom/taobao/accs/data/Message;
    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Ljiu;->a(Landroid/content/Context;I)Ljiu;

    move-result-object v0

    invoke-virtual {v0, v7, v3}, Ljiu;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 810
    return-void
.end method

.method public sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 400
    :try_start_0
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v2

    .line 401
    .local v2, "disable":Z
    if-nez v2, :cond_0

    if-nez p2, :cond_2

    .line 403
    :cond_0
    if-eqz v2, :cond_1

    .line 404
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "send_fail"

    iget-object v8, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v9, "1"

    const-string/jumbo v10, "accs disable"

    invoke-static {v6, v7, v8, v9, v10}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :goto_0
    const-string/jumbo v6, "ACCSManagerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "send data dataInfo null or disable:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    .end local v2    # "disable":Z
    :goto_1
    return-object v5

    .line 406
    .restart local v2    # "disable":Z
    :cond_1
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "send_fail"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "1"

    const-string/jumbo v10, "data null"

    invoke-static {v6, v7, v8, v9, v10}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    .end local v2    # "disable":Z
    :catch_0
    move-exception v4

    .line 434
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "accs"

    const-string/jumbo v6, "send_fail"

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v8, "1"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "data "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string/jumbo v5, "ACCSManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "send data dataid:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 438
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_2
    iget-object v5, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    goto :goto_1

    .line 412
    .restart local v2    # "disable":Z
    :cond_2
    :try_start_1
    iget-object v6, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 413
    const-class v6, Lcom/taobao/accs/internal/ACCSManagerImpl;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    :try_start_2
    iget v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    .line 415
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 416
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    :cond_3
    :try_start_3
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 421
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "send_fail"

    iget-object v8, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v9, "1"

    const-string/jumbo v10, "data appkey null"

    invoke-static {v6, v7, v8, v9, v10}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string/jumbo v6, "ACCSManagerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "send data appkey null dataid:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 416
    .end local v0    # "appKey":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5

    .line 425
    .restart local v0    # "appKey":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    invoke-static {p1, v5}, Ljiu;->a(Landroid/content/Context;I)Ljiu;

    move-result-object v1

    .line 426
    .local v1, "connection":Ljiu;
    invoke-virtual {v1}, Ljiu;->a()V

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v0, p2}, Lcom/taobao/accs/data/Message;->buildSendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;)Lcom/taobao/accs/data/Message;

    move-result-object v3

    .line 429
    .local v3, "message":Lcom/taobao/accs/data/Message;
    invoke-virtual {v3}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 430
    invoke-virtual {v3}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 432
    :cond_5
    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Ljiu;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2
.end method

.method public sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "dataId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 383
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "dataId"    # Ljava/lang/String;
    .param p6, "target"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 389
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "dataId"    # Ljava/lang/String;
    .param p6, "target"    # Ljava/lang/String;
    .param p7, "host"    # Ljava/net/URL;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 394
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 395
    .local v0, "dataInfo":Lcom/taobao/accs/ACCSManager$AccsRequest;
    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "response"    # Lcom/taobao/accs/ACCSManager$AccsRequest;
    .param p3, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 506
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 507
    :cond_0
    :try_start_0
    const-string/jumbo v8, "ACCSManagerImpl"

    const-string/jumbo v9, "sendPushResponse input null"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "context"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "response"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object p2, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "extraInfo"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    aput-object p3, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    const-string/jumbo v8, "accs"

    const-string/jumbo v9, "send_fail"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1"

    const-string/jumbo v12, "sendPushResponse null"

    invoke-static {v8, v9, v10, v11, v12}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/4 v8, 0x0

    .line 608
    :goto_0
    return-object v8

    .line 512
    :cond_1
    const-string/jumbo v8, "accs"

    const-string/jumbo v9, "send_fail"

    const-string/jumbo v10, "push response total"

    invoke-static {v8, v9, v10}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v2

    .line 515
    .local v2, "disable":Z
    if-eqz v2, :cond_2

    .line 516
    const-string/jumbo v8, "accs"

    const-string/jumbo v9, "send_fail"

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v11, "1"

    const-string/jumbo v12, "sendPushResponse accs disable"

    invoke-static {v8, v9, v10, v11, v12}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/4 v8, 0x0

    goto :goto_0

    .line 520
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "appKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 522
    const-string/jumbo v8, "accs"

    const-string/jumbo v9, "send_fail"

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v11, "1"

    const-string/jumbo v12, "sendPushResponse appkey null"

    invoke-static {v8, v9, v10, v11, v12}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string/jumbo v8, "ACCSManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sendPushResponse appkey null dataid:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    const/4 v8, 0x0

    goto :goto_0

    .line 527
    :cond_3
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 528
    const-class v9, Lcom/taobao/accs/internal/ACCSManagerImpl;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :try_start_1
    iget v8, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    .line 530
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 531
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    :cond_4
    if-nez p3, :cond_5

    .line 535
    :try_start_2
    new-instance v3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {v3}, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;-><init>()V

    .end local p3    # "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .local v3, "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    move-object/from16 p3, v3

    .line 537
    .end local v3    # "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .restart local p3    # "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    :cond_5
    const/4 v8, 0x0

    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 538
    const/4 v6, 0x1

    .line 541
    .local v6, "sendbyInapp":Z
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    if-nez v8, :cond_7

    .line 542
    invoke-static {p1}, Ljir;->a(Landroid/content/Context;)Ljir$a;

    move-result-object v8

    iget-object v5, v8, Ljir$a;->a:Ljava/lang/String;

    .line 543
    .local v5, "pkg":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "pkg":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p3

    iput-object v5, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    .line 547
    :cond_7
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 548
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "https://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljiu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p3

    iput-object v8, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    .line 549
    const-string/jumbo v8, "ACCSManagerImpl"

    const-string/jumbo v9, "response.host null, set channel host default"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    :cond_8
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 555
    invoke-static {p1}, Ljiu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 556
    const/4 v6, 0x0

    .line 559
    :cond_9
    const-string/jumbo v8, "ACCSManagerImpl"

    const-string/jumbo v9, "sendPushResponse"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "sendbyInapp"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "host"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "pkg"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "dataId"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    if-eqz v6, :cond_b

    .line 562
    const-string/jumbo v8, "ACCSManagerImpl"

    const-string/jumbo v9, "sendPushResponse inapp by"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "app"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 564
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, p1, v0, v8, v9}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 608
    .end local v1    # "appKey":Ljava/lang/String;
    .end local v2    # "disable":Z
    .end local v6    # "sendbyInapp":Z
    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 531
    .restart local v1    # "appKey":Ljava/lang/String;
    .restart local v2    # "disable":Z
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 603
    .end local v1    # "appKey":Ljava/lang/String;
    .end local v2    # "disable":Z
    :catch_0
    move-exception v7

    .line 604
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "accs"

    const-string/jumbo v9, "send_fail"

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v11, "1"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "push response "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v9, v10, v11, v12}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string/jumbo v8, "ACCSManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sendPushResponse dataid:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v7, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 566
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v1    # "appKey":Ljava/lang/String;
    .restart local v2    # "disable":Z
    .restart local v6    # "sendbyInapp":Z
    :cond_a
    :try_start_5
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "com.taobao.accs.intent.action.SEND"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    const-string/jumbo v9, "com.taobao.accs.data.MsgDistributeService"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    const-string/jumbo v8, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string/jumbo v8, "reqdata"

    move-object/from16 v0, p2

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 570
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 574
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_b
    const/16 v8, 0x64

    invoke-static {p1, v8}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v4

    .line 575
    .restart local v4    # "intent":Landroid/content/Intent;
    if-nez v4, :cond_c

    .line 576
    const-string/jumbo v8, "accs"

    const-string/jumbo v9, "send_fail"

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v11, "1"

    const-string/jumbo v12, "push response intent null"

    invoke-static {v8, v9, v10, v11, v12}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/16 v8, 0x64

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string/jumbo v8, "ACCSManagerImpl"

    const-string/jumbo v9, "sendPushResponse input null"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "context"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "response"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object p2, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "extraInfo"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    aput-object p3, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 581
    :cond_c
    const-string/jumbo v8, "ACCSManagerImpl"

    const-string/jumbo v9, "sendPushResponse channel by"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "app"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    const-string/jumbo v9, "com.taobao.accs.ChannelService"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string/jumbo v8, "send_type"

    sget-object v9, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 584
    const-string/jumbo v8, "appKey"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string/jumbo v8, "userInfo"

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string/jumbo v8, "serviceId"

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const-string/jumbo v8, "data"

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 588
    const-string/jumbo v8, "dataId"

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 591
    const-string/jumbo v8, "businessId"

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    :cond_d
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 594
    const-string/jumbo v8, "extTag"

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    :cond_e
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-eqz v8, :cond_f

    .line 597
    const-string/jumbo v8, "target"

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    :cond_f
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 499
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/taobao/accs/ACCSManager$AccsRequest;
    .param p3, "sourcePkg"    # Ljava/lang/String;
    .param p4, "autoUnit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 456
    if-nez p2, :cond_0

    .line 457
    :try_start_0
    const-string/jumbo v7, "ACCSManagerImpl"

    const-string/jumbo v8, "sendRequest request null"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    const-string/jumbo v7, "accs"

    const-string/jumbo v8, "send_fail"

    const/4 v9, 0x0

    const-string/jumbo v10, "1"

    const-string/jumbo v11, "request null"

    invoke-static {v7, v8, v9, v10, v11}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v7, 0x0

    .line 495
    :goto_0
    return-object v7

    .line 461
    :cond_0
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v3

    .line 462
    .local v3, "disable":Z
    if-eqz v3, :cond_1

    .line 463
    const-string/jumbo v7, "ACCSManagerImpl"

    const-string/jumbo v8, "sendRequest disable"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    const-string/jumbo v7, "accs"

    const-string/jumbo v8, "send_fail"

    iget-object v9, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v10, "1"

    const-string/jumbo v11, "accs disable"

    invoke-static {v7, v8, v9, v10, v11}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v7, 0x0

    goto :goto_0

    .line 468
    :cond_1
    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 469
    const-class v8, Lcom/taobao/accs/internal/ACCSManagerImpl;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :try_start_1
    iget v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    .line 471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 472
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "appKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 477
    const-string/jumbo v7, "accs"

    const-string/jumbo v8, "send_fail"

    iget-object v9, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v10, "1"

    const-string/jumbo v11, "request appkey null"

    invoke-static {v7, v8, v9, v10, v11}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string/jumbo v7, "ACCSManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sendRequest appkey null dataid:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 479
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 472
    .end local v1    # "appKey":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 490
    .end local v3    # "disable":Z
    :catch_0
    move-exception v6

    .line 491
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "accs"

    const-string/jumbo v8, "send_fail"

    iget-object v9, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v10, "1"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "request "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v8, v9, v10, v11}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string/jumbo v7, "ACCSManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sendRequest dataid:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v6, v9}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 495
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_1
    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    goto/16 :goto_0

    .line 481
    .restart local v1    # "appKey":Ljava/lang/String;
    .restart local v3    # "disable":Z
    :cond_3
    const/4 v7, 0x1

    :try_start_5
    invoke-static {p1, v7}, Ljiu;->a(Landroid/content/Context;I)Ljiu;

    move-result-object v2

    .line 482
    .local v2, "connection":Ljiu;
    invoke-virtual {v2}, Ljiu;->a()V

    .line 483
    if-nez p3, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, "pkg":Ljava/lang/String;
    :goto_2
    move/from16 v0, p4

    invoke-static {p1, v5, v1, p2, v0}, Lcom/taobao/accs/data/Message;->buildRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v4

    .line 486
    .local v4, "message":Lcom/taobao/accs/data/Message;
    invoke-virtual {v4}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 487
    invoke-virtual {v4}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 489
    :cond_4
    const/4 v7, 0x1

    invoke-virtual {v2, v4, v7}, Ljiu;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .end local v4    # "message":Lcom/taobao/accs/data/Message;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_5
    move-object/from16 v5, p3

    .line 483
    goto :goto_2
.end method

.method public sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "request"    # [B
    .param p5, "dataId"    # Ljava/lang/String;
    .param p6, "target"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 444
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "request"    # [B
    .param p5, "dataId"    # Ljava/lang/String;
    .param p6, "target"    # Ljava/lang/String;
    .param p7, "host"    # Ljava/net/URL;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 450
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 451
    .local v0, "requestInfo":Lcom/taobao/accs/ACCSManager$AccsRequest;
    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setLoginInfo(Landroid/content/Context;Ljic;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loginInfoImpl"    # Ljic;

    .prologue
    .line 721
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v0

    .line 1123
    if-eqz p2, :cond_0

    .line 1124
    iput-object p2, v0, Ljim;->c:Ljic;

    .line 722
    :cond_0
    return-void
.end method

.method public setMode(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 663
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getMode(Landroid/content/Context;)I

    move-result v0

    .line 665
    .local v0, "preMode":I
    if-eq v0, p2, :cond_0

    .line 666
    invoke-static {p1, p2}, Lcom/taobao/accs/utl/UtilityImpl;->setMode(Landroid/content/Context;I)V

    .line 667
    invoke-static {p1}, Ljil;->a(Landroid/content/Context;)Ljil;

    move-result-object v1

    const-string/jumbo v2, "ACCS_BIND"

    invoke-virtual {v1, v2}, Ljil;->e(Ljava/lang/String;)V

    .line 668
    invoke-static {p1}, Ljil;->a(Landroid/content/Context;)Ljil;

    move-result-object v1

    const-string/jumbo v2, "AGOO_BIND"

    invoke-virtual {v1, v2}, Ljil;->e(Ljava/lang/String;)V

    .line 669
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->killService(Landroid/content/Context;)V

    .line 671
    :cond_0
    return-void
.end method

.method public setProxy(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 686
    const-string/jumbo v1, "ACCS_SDK"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 687
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 688
    const-string/jumbo v1, "proxy_host"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 690
    :cond_0
    const-string/jumbo v1, "proxy_port"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 691
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 692
    return-void
.end method

.method public startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "appSecret"    # Ljava/lang/String;
    .param p4, "ttid"    # Ljava/lang/String;
    .param p5, "appCallback"    # Ljia;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 703
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljim;->a(Ljia;)V

    .line 704
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljim;->a(Ljava/lang/String;)V

    .line 705
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 706
    const-string/jumbo v1, "ACCSManagerImpl"

    const-string/jumbo v2, "inapp only init in main process!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    const-string/jumbo v1, "ACCSManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startInAppConnection APPKEY:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 713
    const/4 v1, 0x0

    invoke-static {p1, p2, v1, p4}, Lcom/taobao/accs/utl/UtilityImpl;->setAppInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :cond_2
    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljiu;->a(Landroid/content/Context;I)Ljiu;

    move-result-object v0

    .line 717
    .local v0, "connection":Ljiu;
    invoke-virtual {v0}, Ljiu;->a()V

    goto :goto_0
.end method

.method public startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljia;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "ttid"    # Ljava/lang/String;
    .param p4, "appCallback"    # Ljia;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 697
    const-string/jumbo v3, "accs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V

    .line 699
    return-void
.end method

.method public unRegisterDataListener(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 803
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v0

    .line 2190
    iget-object v0, v0, Ljim;->m:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    return-void
.end method

.method public unRegisterSerivce(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 793
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v0

    .line 2172
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2175
    iget-object v0, v0, Ljim;->l:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_0
    return-void
.end method

.method public unbindApp(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 231
    const-string/jumbo v2, "ACCSManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unbindApp"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-static {p1, v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 238
    invoke-direct {p0, p1, v5, v7, v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 242
    invoke-static {p1, v0}, Lcom/taobao/accs/data/Message;->buildUnbindApp(Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v1

    .line 243
    .local v1, "message":Lcom/taobao/accs/data/Message;
    invoke-direct {p0, p1, v1, v5, v6}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_0

    .line 245
    .end local v1    # "message":Lcom/taobao/accs/data/Message;
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public unbindService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x6

    .line 357
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-static {p1, v4}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 361
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 362
    const/4 v3, 0x0

    invoke-direct {p0, p1, v4, p2, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    const-string/jumbo v3, "appKey"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string/jumbo v3, "serviceId"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 373
    invoke-static {p1, v1}, Lcom/taobao/accs/data/Message;->buildUnbindService(Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v2

    .line 374
    .local v2, "message":Lcom/taobao/accs/data/Message;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_0

    .line 376
    .end local v2    # "message":Lcom/taobao/accs/data/Message;
    :cond_3
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public unbindUser(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 302
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    invoke-static {p1, v4}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 309
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 310
    invoke-direct {p0, p1, v4, v5, v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 317
    const-string/jumbo v3, "appKey"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    invoke-static {p1, v1}, Lcom/taobao/accs/data/Message;->buildUnbindUser(Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v2

    .line 321
    .local v2, "message":Lcom/taobao/accs/data/Message;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_0

    .line 323
    .end local v2    # "message":Lcom/taobao/accs/data/Message;
    :cond_3
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
