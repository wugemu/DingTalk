.class public Lcom/alibaba/laiwang/alive/c;
.super Lcom/alibaba/laiwang/alive/g;
.source "FCMChannel.java"


# static fields
.field private static c:Lcom/alibaba/laiwang/alive/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/laiwang/alive/g;-><init>()V

    .line 31
    return-void
.end method

.method public static declared-synchronized b()Lcom/alibaba/laiwang/alive/c;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/alibaba/laiwang/alive/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/laiwang/alive/c;->c:Lcom/alibaba/laiwang/alive/c;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alibaba/laiwang/alive/c;

    invoke-direct {v0}, Lcom/alibaba/laiwang/alive/c;-><init>()V

    sput-object v0, Lcom/alibaba/laiwang/alive/c;->c:Lcom/alibaba/laiwang/alive/c;

    .line 27
    :cond_0
    sget-object v0, Lcom/alibaba/laiwang/alive/c;->c:Lcom/alibaba/laiwang/alive/c;
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
.method public a(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    :try_start_0
    const-string/jumbo v3, "[TAG] XPN"

    const-string/jumbo v4, "FCMChannel disableChannel"

    invoke-static {v3, v4}, Lcom/alibaba/laiwang/alive/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 112
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/alibaba/laiwang/xpn/fcm/DDFirebaseInstanceIdService;

    invoke-direct {v0, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, "component":Landroid/content/ComponentName;
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 115
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/google/firebase/iid/FirebaseInstanceIdService;

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v1, "idComponent":Landroid/content/ComponentName;
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "idComponent":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v3

    const-string/jumbo v3, "[TAG] XPN"

    const-string/jumbo v4, "FCMChannel disableChannel service err"

    invoke-static {v3, v4}, Lcom/alibaba/laiwang/alive/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "receiver"    # Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "[TAG] XPN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FCMChannel start enable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alibaba/laiwang/alive/c;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/alibaba/laiwang/alive/c;->b(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/alive/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/alibaba/laiwang/alive/c;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/alive/c;->b(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :cond_1
    :try_start_1
    iput-object p3, p0, Lcom/alibaba/laiwang/alive/c;->j:Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

    .line 48
    iget-object v1, p0, Lcom/alibaba/laiwang/alive/c;->l:Lcom/alibaba/laiwang/alive/i;

    sget-object v2, Lcom/alibaba/laiwang/alive/i;->r:Lcom/alibaba/laiwang/alive/i;

    if-ne v1, v2, :cond_2

    .line 49
    const-string/jumbo v1, "[TAG] XPN"

    const-string/jumbo v2, "FCMChannel start state success"

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/alive/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 52
    :cond_2
    :try_start_2
    const-string/jumbo v1, "[TAG] XPN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FCMChannel start isExpired() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/c;->isExpired()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/alive/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/c;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const-string/jumbo v1, "[TAG] XPN"

    const-string/jumbo v2, "FCMChannel start expire"

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/alive/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "token":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    const-string/jumbo v1, "[TAG] XPN"

    const-string/jumbo v2, "FCMChannel start token is not null"

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/alive/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/alive/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_3
    const-string/jumbo v1, "[TAG] XPN"

    const-string/jumbo v2, "FCMChannel start token is null"

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/alive/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-static {p1}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportFCM(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected getKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "xpn_key_regid"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/c;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x8

    return v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/laiwang/alive/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/laiwang/alive/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/alibaba/laiwang/alive/g;->init(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "[TAG] XPN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FCMChannel stop begin isEnable = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alibaba/laiwang/alive/c;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/alibaba/laiwang/alive/c;->b(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/laiwang/alive/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v2, Lcom/alibaba/laiwang/alive/c;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/alibaba/laiwang/alive/c;->b(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 90
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    sget-object v2, Lcom/alibaba/laiwang/alive/c;->k:Lcom/alibaba/laiwang/alive/h;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/c;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/laiwang/alive/h;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "regId":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/laiwang/alive/c;->k:Lcom/alibaba/laiwang/alive/h;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/c;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/laiwang/alive/h;->remove(Ljava/lang/String;)V

    .line 77
    sget-object v2, Lcom/alibaba/laiwang/alive/c;->k:Lcom/alibaba/laiwang/alive/h;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "xpn_key_reg_time"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/laiwang/alive/c;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/laiwang/alive/h;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->deleteInstanceId()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :goto_1
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/alibaba/laiwang/alive/c;->j:Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

    .line 85
    const-string/jumbo v2, "XPN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FCMChannel start unreg device regId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/laiwang/alive/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/alive/c;->c(Ljava/lang/String;)V

    .line 89
    :cond_1
    invoke-super {p0}, Lcom/alibaba/laiwang/alive/g;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 71
    .end local v1    # "regId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 80
    .restart local v1    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "XPN"

    const-string/jumbo v3, "FCMChannel del fcm token err"

    invoke-static {v2, v3, v0}, Lcom/alibaba/laiwang/alive/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
