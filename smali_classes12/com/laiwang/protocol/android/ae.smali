.class public Lcom/laiwang/protocol/android/ae;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/ae$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Lcom/laiwang/protocol/android/ae$a;

.field private static d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/laiwang/protocol/android/ae;->a:Z

    .line 18
    sput-boolean v0, Lcom/laiwang/protocol/android/ae;->b:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    :goto_0
    return-wide v0

    .line 139
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/laiwang/protocol/android/ae$a;
    .locals 8

    .prologue
    .line 39
    const-class v5, Lcom/laiwang/protocol/android/ae;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lcom/laiwang/protocol/android/ae;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 40
    const/4 v3, 0x0

    .line 62
    .local v2, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :goto_0
    monitor-exit v5

    return-object v3

    .line 41
    .end local v2    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :cond_0
    :try_start_1
    sget-object v4, Lcom/laiwang/protocol/android/ae;->c:Lcom/laiwang/protocol/android/ae$a;

    if-eqz v4, :cond_1

    .line 42
    sget-object v3, Lcom/laiwang/protocol/android/ae;->c:Lcom/laiwang/protocol/android/ae$a;

    goto :goto_0

    .line 43
    :cond_1
    sget-boolean v4, Lcom/laiwang/protocol/android/ae;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 45
    :try_start_2
    sget-object v4, Lcom/laiwang/protocol/android/ae;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v2

    .line 46
    .restart local v2    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    .line 48
    .local v0, "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    if-eqz v0, :cond_2

    .line 49
    new-instance v3, Lcom/laiwang/protocol/android/ae$a;

    invoke-direct {v3}, Lcom/laiwang/protocol/android/ae$a;-><init>()V

    .line 50
    .local v3, "session":Lcom/laiwang/protocol/android/ae$a;
    const-string/jumbo v4, "LWS_SID"

    invoke-interface {v0, v4}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Lcom/laiwang/protocol/android/ae$a;->a:[B

    .line 51
    const-string/jumbo v4, "LWS_SYM_KEY"

    invoke-interface {v0, v4}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Lcom/laiwang/protocol/android/ae$a;->b:[B

    .line 52
    const-string/jumbo v4, "LWS_SYM_CIP"

    invoke-interface {v0, v4}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/laiwang/protocol/android/ae;->b(Ljava/lang/String;)S

    move-result v4

    iput-short v4, v3, Lcom/laiwang/protocol/android/ae$a;->c:S

    .line 53
    const-string/jumbo v4, "LWS_EXP_TIM"

    invoke-interface {v0, v4}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/laiwang/protocol/android/ae;->a(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/laiwang/protocol/android/ae$a;->d:J

    .line 54
    sput-object v3, Lcom/laiwang/protocol/android/ae;->c:Lcom/laiwang/protocol/android/ae$a;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 58
    .end local v0    # "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v3    # "session":Lcom/laiwang/protocol/android/ae$a;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[session] get session err from guard "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 62
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    sget-object v3, Lcom/laiwang/protocol/android/ae;->c:Lcom/laiwang/protocol/android/ae$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 26
    const-class v1, Lcom/laiwang/protocol/android/ae;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/laiwang/protocol/android/ae;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 35
    :goto_0
    monitor-exit v1

    return-void

    .line 28
    :cond_0
    :try_start_1
    sput-object p0, Lcom/laiwang/protocol/android/ae;->d:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    const-string/jumbo v0, "com.taobao.wireless.security.sdk.SecurityGuardManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/laiwang/protocol/android/ae;->b:Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v0, "[session] not support security guard"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/laiwang/protocol/android/ae$a;)V
    .locals 8
    .param p0, "session"    # Lcom/laiwang/protocol/android/ae$a;

    .prologue
    .line 66
    const-class v4, Lcom/laiwang/protocol/android/ae;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/laiwang/protocol/android/ae;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 68
    :cond_1
    if-eqz p0, :cond_0

    .line 70
    :try_start_1
    sput-object p0, Lcom/laiwang/protocol/android/ae;->c:Lcom/laiwang/protocol/android/ae$a;

    .line 71
    sget-boolean v3, Lcom/laiwang/protocol/android/ae;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 73
    :try_start_2
    sget-object v3, Lcom/laiwang/protocol/android/ae;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v2

    .line 74
    .local v2, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    .line 76
    .local v0, "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v3, "LWS_SID"

    iget-object v5, p0, Lcom/laiwang/protocol/android/ae$a;->a:[B

    invoke-interface {v0, v3, v5}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putByteArray(Ljava/lang/String;[B)I

    .line 78
    const-string/jumbo v3, "LWS_SYM_KEY"

    iget-object v5, p0, Lcom/laiwang/protocol/android/ae$a;->b:[B

    invoke-interface {v0, v3, v5}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putByteArray(Ljava/lang/String;[B)I

    .line 79
    const-string/jumbo v3, "LWS_SYM_CIP"

    iget-short v5, p0, Lcom/laiwang/protocol/android/ae$a;->c:S

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string/jumbo v3, "LWS_EXP_TIM"

    iget-wide v6, p0, Lcom/laiwang/protocol/android/ae$a;->d:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 83
    .end local v0    # "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v2    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[session] put session err to guard "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 66
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized a([B)V
    .locals 7
    .param p0, "sessionId"    # [B

    .prologue
    .line 94
    const-class v5, Lcom/laiwang/protocol/android/ae;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lcom/laiwang/protocol/android/ae;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 133
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 96
    :cond_1
    const/4 v2, 0x0

    .line 97
    .local v2, "localSid":[B
    :try_start_1
    sget-object v4, Lcom/laiwang/protocol/android/ae;->c:Lcom/laiwang/protocol/android/ae$a;

    if-nez v4, :cond_4

    .line 98
    sget-boolean v4, Lcom/laiwang/protocol/android/ae;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 100
    :try_start_2
    sget-object v4, Lcom/laiwang/protocol/android/ae;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v3

    .line 101
    .local v3, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v3, :cond_2

    .line 102
    invoke-virtual {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    .line 103
    .local v0, "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    if-eqz v0, :cond_2

    .line 104
    const-string/jumbo v4, "LWS_SID"

    invoke-interface {v0, v4}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getByteArray(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 114
    .end local v0    # "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v3    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    :try_start_3
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    :cond_3
    const/4 v4, 0x0

    sput-object v4, Lcom/laiwang/protocol/android/ae;->c:Lcom/laiwang/protocol/android/ae$a;

    .line 116
    sget-boolean v4, Lcom/laiwang/protocol/android/ae;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    .line 118
    :try_start_4
    sget-object v4, Lcom/laiwang/protocol/android/ae;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v3

    .line 119
    .restart local v3    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    .line 121
    .restart local v0    # "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    if-eqz v0, :cond_0

    .line 122
    const-string/jumbo v4, "LWS_SID"

    invoke-interface {v0, v4}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeByteArray(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v4, "LWS_SYM_KEY"

    invoke-interface {v0, v4}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeByteArray(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v4, "LWS_SYM_CIP"

    invoke-interface {v0, v4}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeString(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v4, "LWS_EXP_TIM"

    invoke-interface {v0, v4}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeString(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 128
    .end local v0    # "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v3    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[session] clear session err from guard "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 94
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "localSid":[B
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 107
    .restart local v2    # "localSid":[B
    :catch_1
    move-exception v1

    .line 108
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[session] get session err from guard "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_4
    sget-object v4, Lcom/laiwang/protocol/android/ae;->c:Lcom/laiwang/protocol/android/ae$a;

    iget-object v2, v4, Lcom/laiwang/protocol/android/ae$a;->a:[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)S
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    :goto_0
    return v0

    .line 149
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method
