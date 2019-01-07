.class public Lcom/alibaba/laiwang/alive/j;
.super Lcom/alibaba/laiwang/alive/g;
.source "XiaomiPushChannel.java"


# static fields
.field private static u:Lcom/alibaba/laiwang/alive/j;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/laiwang/alive/g;-><init>()V

    .line 31
    return-void
.end method

.method public static declared-synchronized d()Lcom/alibaba/laiwang/alive/j;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/alibaba/laiwang/alive/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/laiwang/alive/j;->u:Lcom/alibaba/laiwang/alive/j;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alibaba/laiwang/alive/j;

    invoke-direct {v0}, Lcom/alibaba/laiwang/alive/j;-><init>()V

    sput-object v0, Lcom/alibaba/laiwang/alive/j;->u:Lcom/alibaba/laiwang/alive/j;

    .line 27
    :cond_0
    sget-object v0, Lcom/alibaba/laiwang/alive/j;->u:Lcom/alibaba/laiwang/alive/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
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
    .line 35
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/alibaba/laiwang/alive/j;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/alive/j;->b(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 37
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    iput-object p3, p0, Lcom/alibaba/laiwang/alive/j;->j:Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

    .line 41
    iget-object v1, p0, Lcom/alibaba/laiwang/alive/j;->l:Lcom/alibaba/laiwang/alive/i;

    sget-object v2, Lcom/alibaba/laiwang/alive/i;->r:Lcom/alibaba/laiwang/alive/i;

    if-eq v1, v2, :cond_0

    .line 42
    const-string/jumbo v1, "[TAG] XPN"

    const-string/jumbo v2, "[XPN] start mi push"

    const-string/jumbo v3, "base"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/j;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    sget-object v1, Lcom/alibaba/laiwang/alive/j;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Ljxf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string/jumbo v1, "XiaomiPush"

    const-string/jumbo v2, "reg mi push err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 35
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
    .line 84
    invoke-static {p1}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportMIUIPush(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

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
    sget-object v2, Lcom/alibaba/laiwang/alive/j;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/alibaba/laiwang/alive/j;->b(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 80
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    .line 63
    const-string/jumbo v2, "[TAG] XPN"

    const-string/jumbo v3, "[XPN] stop mi push"

    const-string/jumbo v4, "base"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v2, Lcom/alibaba/laiwang/alive/j;->k:Lcom/alibaba/laiwang/alive/h;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/j;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/laiwang/alive/h;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "regId":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/laiwang/alive/j;->k:Lcom/alibaba/laiwang/alive/h;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/j;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/laiwang/alive/h;->remove(Ljava/lang/String;)V

    .line 66
    sget-object v2, Lcom/alibaba/laiwang/alive/j;->k:Lcom/alibaba/laiwang/alive/h;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "xpn_key_reg_time"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/j;->getType()I

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
    sget-object v2, Lcom/alibaba/laiwang/alive/j;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljxf;->g(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :goto_1
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/alibaba/laiwang/alive/j;->j:Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    .line 77
    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/alive/j;->c(Ljava/lang/String;)V

    .line 79
    :cond_1
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

    .line 69
    .restart local v1    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "XiaomiPush"

    const-string/jumbo v3, "unreg mi push err"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
