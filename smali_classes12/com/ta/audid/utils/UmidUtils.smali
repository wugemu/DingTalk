.class public Lcom/ta/audid/utils/UmidUtils;
.super Ljava/lang/Object;
.source "UmidUtils.java"


# static fields
.field private static mUmidToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, ""

    sput-object v0, Lcom/ta/audid/utils/UmidUtils;->mUmidToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getUmidToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-class v8, Lcom/ta/audid/utils/UmidUtils;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/ta/audid/utils/UmidUtils;->mUmidToken:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 22
    sget-object v6, Lcom/ta/audid/utils/UmidUtils;->mUmidToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    :goto_0
    monitor-exit v8

    return-object v6

    .line 26
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 27
    .local v4, "time":J
    invoke-static {p0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getUMIDComp()Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    move-result-object v3

    .line 28
    .local v3, "umidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->initUMIDSync(I)I

    move-result v0

    .line 29
    .local v0, "errorCode":I
    const/16 v7, 0xc8

    if-eq v0, v7, :cond_2

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v1, "pro":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "errorCode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v7, "umid"

    invoke-static {v7, v1}, Lcom/ta/audid/utils/UtUtils;->sendUtdidMonitorEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    .end local v1    # "pro":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v7, ""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v9}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->getSecurityToken(I)Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "umidtoken":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0x18

    if-eq v7, v9, :cond_0

    .line 40
    sput-object v6, Lcom/ta/audid/utils/UmidUtils;->mUmidToken:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    .end local v0    # "errorCode":I
    .end local v3    # "umidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    .end local v4    # "time":J
    .end local v6    # "umidtoken":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 43
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v7, ""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v7, v9}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const-string/jumbo v6, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 21
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method
