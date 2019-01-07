.class public final Lia;
.super Ljava/lang/Object;
.source "AccsSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lia$b;,
        Lia$a;
    }
.end annotation


# instance fields
.field public a:Lanet/channel/SessionCenter;

.field public volatile b:Lia$a;

.field public c:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v0

    iput-object v0, p0, Lia;->a:Lanet/channel/SessionCenter;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lia;->b:Lia$a;

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lia;->c:[Ljava/lang/String;

    .line 41
    invoke-static {}, Lic;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lia$1;

    invoke-direct {v0, p0}, Lia$1;-><init>(Lia;)V

    iput-object v0, p0, Lia;->b:Lia$a;

    .line 76
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lia;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string/jumbo v1, "awcn.AccsSessionManager"

    const-string/jumbo v2, "closeSessions!!!!!!"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "host"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {p0}, Lig;->a(Ljava/lang/String;)Lig;

    move-result-object v0

    .line 151
    .local v0, "sr":Lig;
    invoke-virtual {v0, v6}, Lig;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lia;->b:Lia$a;

    if-nez v4, :cond_1

    .line 84
    const-string/jumbo v4, "awcn.AccsSessionManager"

    const-string/jumbo v5, "call back is null"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :cond_1
    :try_start_1
    iget-object v4, p0, Lia;->b:Lia$a;

    .line 88
    iget-object v4, p0, Lia;->c:[Ljava/lang/String;

    array-length v4, v4

    if-eq v4, v6, :cond_2

    .line 89
    iget-object v4, p0, Lia;->c:[Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lia;->c:[Ljava/lang/String;

    .line 1134
    :cond_2
    invoke-static {}, Lic;->j()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1135
    const-string/jumbo v4, "awcn.AccsSessionManager"

    const-string/jumbo v5, "app is background not need check accs session, return"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "bg"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .local v1, "isNeedCheckSession":Z
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lia;->c:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 95
    iget-object v4, p0, Lia;->c:[Ljava/lang/String;

    aget-object v3, v4, v0

    .line 96
    .local v3, "oldKey":Ljava/lang/String;
    iget-object v4, p0, Lia;->b:Lia$a;

    invoke-interface {v4, v0}, Lia$a;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "newKey":Ljava/lang/String;
    if-nez v2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 98
    :cond_4
    invoke-static {v3}, Lia;->a(Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lia;->c:[Ljava/lang/String;

    aput-object v2, v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_5
    if-eqz v1, :cond_6

    .line 107
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 108
    iget-object v4, p0, Lia;->a:Lanet/channel/SessionCenter;

    sget-object v5, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v2, v5, v6, v7}, Lanet/channel/SessionCenter;->getInternal(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1138
    .end local v0    # "i":I
    .end local v1    # "isNeedCheckSession":Z
    .end local v2    # "newKey":Ljava/lang/String;
    .end local v3    # "oldKey":Ljava/lang/String;
    :cond_7
    :try_start_3
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->f()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1139
    const-string/jumbo v4, "awcn.AccsSessionManager"

    const-string/jumbo v5, "network is not available, not need check accs session, return"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "network"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->f()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_8
    move v1, v5

    .line 1142
    goto :goto_0

    .line 111
    .restart local v0    # "i":I
    .restart local v1    # "isNeedCheckSession":Z
    .restart local v2    # "newKey":Ljava/lang/String;
    .restart local v3    # "oldKey":Ljava/lang/String;
    :catch_0
    move-exception v4

    :try_start_4
    const-string/jumbo v4, "start unit session failed"

    const/4 v5, 0x0

    const-string/jumbo v6, "host"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized a(Z)V
    .locals 7
    .param p1, "recreate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string/jumbo v1, "awcn.AccsSessionManager"

    const-string/jumbo v2, "forceCloseSession"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "reCreate"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lia;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 125
    iget-object v1, p0, Lia;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lia;->a(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lia;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    if-eqz p1, :cond_2

    .line 129
    invoke-virtual {p0}, Lia;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_2
    monitor-exit p0

    return-void

    .line 121
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lia;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
