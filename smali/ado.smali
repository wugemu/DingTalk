.class public final Lado;
.super Ljava/lang/Object;
.source "AlimeiDynamicEncrypt.java"

# interfaces
.implements Lzk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 26
    monitor-enter p0

    if-nez p1, :cond_1

    .line 27
    :try_start_0
    const-string/jumbo v7, "AlimeiDynamicEncrypt"

    const-string/jumbo v8, "init fail for context is null"

    invoke-static {v7, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 31
    :cond_1
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 32
    const-string/jumbo v7, "AlimeiDynamicEncrypt"

    const-string/jumbo v8, "init fail for key is empty"

    invoke-static {v7, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 36
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    .local v0, "begin":J
    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v5

    .line 38
    .local v5, "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v5, :cond_5

    .line 39
    invoke-virtual {v5}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v2

    .line 40
    .local v2, "ddStore":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    const/4 v6, 0x0

    .line 41
    .local v6, "value":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 42
    invoke-interface {v2, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 46
    invoke-virtual {v5}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v3

    .line 47
    .local v3, "ddeComp":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v3, :cond_7

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "encStr":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 51
    if-eqz v2, :cond_4

    .line 52
    invoke-interface {v2, p2, v4}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_4
    sget-boolean v7, Lzb;->b:Z

    if-eqz v7, :cond_5

    .line 55
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "success!"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    .end local v2    # "ddStore":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v3    # "ddeComp":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v4    # "encStr":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    :goto_1
    sget-boolean v7, Lzb;->b:Z

    if-eqz v7, :cond_0

    .line 66
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "dynamic encrypt init: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .restart local v2    # "ddStore":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .restart local v3    # "ddeComp":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .restart local v4    # "encStr":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "AlimeiDynamicEncrypt"

    const-string/jumbo v8, "init fail for dynamicEncrypt result null"

    invoke-static {v7, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    .end local v4    # "encStr":Ljava/lang/String;
    :cond_7
    const-string/jumbo v7, "AlimeiDynamicEncrypt"

    const-string/jumbo v8, "init fail for security obtain dynamic data encrypt cp fail"

    invoke-static {v7, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 72
    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v4

    .line 73
    .local v4, "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v4, :cond_2

    .line 74
    invoke-virtual {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v2

    .line 75
    .local v2, "ddeComp":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v2, :cond_3

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    .local v0, "begin":J
    invoke-interface {v2, p2}, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "encStr":Ljava/lang/String;
    sget-boolean v5, Lzb;->b:Z

    if-eqz v5, :cond_0

    .line 79
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "encrypt cost: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", encrypt result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    :cond_0
    if-eqz v3, :cond_1

    .line 92
    .end local v0    # "begin":J
    .end local v2    # "ddeComp":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v3    # "encStr":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 85
    .restart local v0    # "begin":J
    .restart local v2    # "ddeComp":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .restart local v3    # "encStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "AlimeiDynamicEncrypt"

    const-string/jumbo v6, "encrypt fail for result is empty"

    invoke-static {v5, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "begin":J
    .end local v2    # "ddeComp":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v3    # "encStr":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v3, p2

    .line 92
    goto :goto_0

    .line 88
    .restart local v2    # "ddeComp":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    :cond_3
    const-string/jumbo v5, "AlimeiDynamicEncrypt"

    const-string/jumbo v6, "encrypt fail for dynamic data encrypt component is null"

    invoke-static {v5, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 122
    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    .line 123
    .local v1, "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    .line 125
    .local v0, "ddStore":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    const/4 v2, 0x0

    .line 126
    .local v2, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .end local v0    # "ddStore":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 129
    .restart local v0    # "ddStore":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "AlimeiDynamicEncrypt"

    const-string/jumbo v4, "getString fail for IDynamicDataStoreComponent is null"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v0    # "ddStore":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "AlimeiDynamicEncrypt"

    const-string/jumbo v4, "getString fail for securityGuardManager is null"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x0

    goto :goto_0
.end method
