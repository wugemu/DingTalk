.class public Lcom/laiwang/protocol/android/ck;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/laiwang/protocol/android/ck;->a:Z

    .line 20
    :try_start_0
    const-string/jumbo v0, "com.taobao.wireless.security.sdk.SecurityGuardManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/laiwang/protocol/android/ck;->a:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object v4

    .line 30
    :cond_1
    invoke-static {}, Lcom/laiwang/protocol/android/cg;->a()Landroid/content/Context;

    move-result-object v0

    .line 31
    .local v0, "context":Landroid/content/Context;
    sget-boolean v5, Lcom/laiwang/protocol/android/ck;->a:Z

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v3

    .line 34
    .local v3, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    .line 36
    .local v1, "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    if-eqz v1, :cond_0

    .line 37
    invoke-interface {v1, p0}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 40
    .end local v1    # "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v3    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "[security] get session err from guard"

    invoke-static {v5, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {}, Lcom/laiwang/protocol/android/cg;->a()Landroid/content/Context;

    move-result-object v0

    .line 51
    .local v0, "context":Landroid/content/Context;
    sget-boolean v4, Lcom/laiwang/protocol/android/ck;->a:Z

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v3

    .line 54
    .local v3, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    .line 56
    .local v1, "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    if-eqz v1, :cond_0

    .line 57
    invoke-interface {v1, p0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v1    # "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v3    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "[security] put session err to guard"

    invoke-static {v4, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-static {}, Lcom/laiwang/protocol/android/cg;->a()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    sget-boolean v4, Lcom/laiwang/protocol/android/ck;->a:Z

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v3

    .line 73
    .local v3, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    .line 75
    .local v1, "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v1, p0}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v1    # "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v3    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "[security] get session err from guard"

    invoke-static {v4, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
