.class public Lcom/alibaba/laiwang/alive/d;
.super Lcom/alibaba/laiwang/alive/g;
.source "HwPushChannel.java"


# static fields
.field private static d:Lcom/alibaba/laiwang/alive/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/laiwang/alive/g;-><init>()V

    .line 25
    return-void
.end method

.method public static declared-synchronized c()Lcom/alibaba/laiwang/alive/d;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/alibaba/laiwang/alive/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/laiwang/alive/d;->d:Lcom/alibaba/laiwang/alive/d;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alibaba/laiwang/alive/d;

    invoke-direct {v0}, Lcom/alibaba/laiwang/alive/d;-><init>()V

    sput-object v0, Lcom/alibaba/laiwang/alive/d;->d:Lcom/alibaba/laiwang/alive/d;

    .line 30
    :cond_0
    sget-object v0, Lcom/alibaba/laiwang/alive/d;->d:Lcom/alibaba/laiwang/alive/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "receiver"    # Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/alibaba/laiwang/alive/d;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/alive/d;->b(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 38
    :cond_1
    :try_start_1
    iput-object p3, p0, Lcom/alibaba/laiwang/alive/d;->j:Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

    .line 39
    iget-object v1, p0, Lcom/alibaba/laiwang/alive/d;->l:Lcom/alibaba/laiwang/alive/i;

    sget-object v2, Lcom/alibaba/laiwang/alive/i;->r:Lcom/alibaba/laiwang/alive/i;

    if-eq v1, v2, :cond_0

    .line 40
    const-string/jumbo v1, "[TAG] XPN"

    const-string/jumbo v2, "[XPN] start hw push"

    const-string/jumbo v3, "base"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/d;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    sget-object v1, Lcom/alibaba/laiwang/alive/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/pushagent/PushReceiver;->getToken(Landroid/content/Context;)V

    .line 47
    sget-object v1, Lcom/alibaba/laiwang/alive/d;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/PushReceiver;->enableReceiveNotifyMsg(Landroid/content/Context;Z)V

    .line 48
    sget-object v1, Lcom/alibaba/laiwang/alive/d;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/PushReceiver;->enableReceiveNormalMsg(Landroid/content/Context;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "HwPushChannel"

    const-string/jumbo v2, "unreg hw push err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected b(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {p1}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportHuaweiPush(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized stop()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/alibaba/laiwang/alive/d;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/alibaba/laiwang/alive/d;->b(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    :try_start_1
    sget-object v2, Lcom/alibaba/laiwang/alive/d;->k:Lcom/alibaba/laiwang/alive/h;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/d;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/laiwang/alive/h;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "regId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start unreg hw push regId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_1
    const-string/jumbo v2, "[TAG] XPN"

    const-string/jumbo v3, "[XPN] stop hw push"

    const-string/jumbo v4, "base"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v2, Lcom/alibaba/laiwang/alive/d;->k:Lcom/alibaba/laiwang/alive/h;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/d;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/laiwang/alive/h;->remove(Ljava/lang/String;)V

    .line 66
    sget-object v2, Lcom/alibaba/laiwang/alive/d;->k:Lcom/alibaba/laiwang/alive/h;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "xpn_key_reg_time"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/d;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/laiwang/alive/h;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    sget-object v2, Lcom/alibaba/laiwang/alive/d;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/huawei/android/pushagent/PushReceiver;->deregisterToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    sget-object v2, Lcom/alibaba/laiwang/alive/d;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/PushReceiver;->enableReceiveNotifyMsg(Landroid/content/Context;Z)V

    .line 70
    sget-object v2, Lcom/alibaba/laiwang/alive/d;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/PushReceiver;->enableReceiveNormalMsg(Landroid/content/Context;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :goto_1
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/alibaba/laiwang/alive/d;->j:Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    .line 79
    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/alive/d;->c(Ljava/lang/String;)V

    .line 81
    :cond_2
    invoke-super {p0}, Lcom/alibaba/laiwang/alive/g;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 58
    .end local v1    # "regId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 71
    .restart local v1    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "HwPushChannel"

    const-string/jumbo v3, "unreg hw push err"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
