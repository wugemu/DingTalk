.class public final Lcni;
.super Ljava/lang/Object;
.source "PwdChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 13
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    if-nez p0, :cond_0

    .line 80
    const-string/jumbo p0, ""

    .line 83
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v7, p1, v8

    if-nez v7, :cond_1

    .line 84
    const-string/jumbo v6, ""

    .line 1120
    .local v6, "uidString":Ljava/lang/String;
    :goto_0
    const-string/jumbo v8, "abcdefghijklmnopqrstuvwxyz0123456789"

    .line 1121
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    .line 1122
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1123
    const/4 v7, 0x0

    :goto_1
    const/16 v11, 0x8

    if-ge v7, v11, :cond_2

    .line 1124
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    .line 1125
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1123
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 86
    .end local v6    # "uidString":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "uidString":Ljava/lang/String;
    goto :goto_0

    .line 1127
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "random":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v5

    .line 90
    .local v5, "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v5, :cond_4

    .line 91
    const-string/jumbo v7, "pwd"

    const-string/jumbo v8, "checker"

    const-string/jumbo v9, "getSecurityCode securityGuardManager get success"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    .line 97
    .local v0, "component":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    :goto_2
    if-eqz v0, :cond_6

    .line 98
    const-string/jumbo v7, "pwd"

    const-string/jumbo v8, "checker"

    const-string/jumbo v9, "getSecurityCode component get success"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v2, ""

    .line 104
    .local v2, "myMd5":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 105
    const-string/jumbo v7, "enca"

    invoke-interface {v0, v7}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getExtraData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "enca":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 107
    const-string/jumbo v7, "pwd"

    const-string/jumbo v8, "checker"

    const-string/jumbo v9, "getSecurityCode enca get success"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "_"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v6, v7, v8

    const/4 v8, 0x3

    const-string/jumbo v9, "_"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object v1, v7, v8

    const/4 v8, 0x5

    const-string/jumbo v9, "_"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    aput-object p0, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcoh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .end local v1    # "enca":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "result":Ljava/lang/String;
    const-string/jumbo v7, "pwd"

    const-string/jumbo v8, "checker"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "getSecurityCode content:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p0, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, " uid:"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v6, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, " result:"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    aput-object v4, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-object v4

    .line 93
    .end local v0    # "component":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    .end local v2    # "myMd5":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "pwd"

    const-string/jumbo v8, "checker"

    const-string/jumbo v9, "getSecurityCode securityGuardManager get null"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v8, "getSecurityCode securityGuardManager get null"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 96
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 100
    .restart local v0    # "component":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    :cond_6
    const-string/jumbo v7, "pwd"

    const-string/jumbo v8, "checker"

    const-string/jumbo v9, "getSecurityCode component get null"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v8, "getSecurityCode component get null"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 109
    .restart local v1    # "enca":Ljava/lang/String;
    .restart local v2    # "myMd5":Ljava/lang/String;
    :cond_7
    const-string/jumbo v7, "pwd"

    const-string/jumbo v8, "checker"

    const-string/jumbo v9, "getSecurityCode enca get null"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v8, "getSecurityCode enca get null"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 14
    .param p0, "securityCode"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    const-string/jumbo p1, ""

    .line 25
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v9, p2, v10

    if-nez v9, :cond_2

    .line 26
    const-string/jumbo v8, ""

    .line 32
    .local v8, "uidString":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 33
    const-string/jumbo v9, "_"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 34
    .local v7, "splits":[Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v6

    .line 35
    .local v6, "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v6, :cond_3

    .line 36
    const-string/jumbo v9, "pwd"

    const-string/jumbo v10, "checker"

    const-string/jumbo v11, "check securityGuardManager get success"

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    array-length v9, v7

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    if-eqz v6, :cond_7

    .line 43
    const/4 v9, 0x0

    aget-object v2, v7, v9

    .line 44
    .local v2, "md5":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v4, v7, v9

    .line 45
    .local v4, "random":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    .line 46
    .local v0, "component":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    if-eqz v0, :cond_4

    .line 47
    const-string/jumbo v9, "pwd"

    const-string/jumbo v10, "checker"

    const-string/jumbo v11, "check component get success"

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v3, 0x0

    .line 53
    .local v3, "myMd5":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 54
    const-string/jumbo v9, "enca"

    invoke-interface {v0, v9}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getExtraData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "enca":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 56
    const-string/jumbo v9, "pwd"

    const-string/jumbo v10, "checker"

    const-string/jumbo v11, "check enca get success"

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "_"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v8, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "_"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    aput-object v1, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "_"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    aput-object p1, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcoh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .end local v1    # "enca":Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_6

    .line 64
    const/4 v5, 0x0

    .line 74
    .end local v0    # "component":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    .end local v2    # "md5":Ljava/lang/String;
    .end local v3    # "myMd5":Ljava/lang/String;
    .end local v4    # "random":Ljava/lang/String;
    .end local v6    # "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .end local v7    # "splits":[Ljava/lang/String;
    .local v5, "result":Z
    :goto_1
    const-string/jumbo v9, "pwd"

    const-string/jumbo v10, "checker"

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "check securityCode:"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p0, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, " content:"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object p1, v11, v12

    const/4 v12, 0x4

    const-string/jumbo v13, " uid:"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    aput-object v8, v11, v12

    const/4 v12, 0x6

    const-string/jumbo v13, " result:"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return v5

    .line 28
    .end local v5    # "result":Z
    .end local v8    # "uidString":Ljava/lang/String;
    :cond_2
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "uidString":Ljava/lang/String;
    goto/16 :goto_0

    .line 38
    .restart local v6    # "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .restart local v7    # "splits":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "pwd"

    const-string/jumbo v10, "checker"

    const-string/jumbo v11, "check securityGuardManager get null"

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v9, Ljava/lang/Exception;

    const-string/jumbo v10, "check securityGuardManager get null"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 49
    .restart local v0    # "component":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    .restart local v2    # "md5":Ljava/lang/String;
    .restart local v4    # "random":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "pwd"

    const-string/jumbo v10, "checker"

    const-string/jumbo v11, "check component get null"

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v9, Ljava/lang/Exception;

    const-string/jumbo v10, "check component get null"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 58
    .restart local v1    # "enca":Ljava/lang/String;
    .restart local v3    # "myMd5":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "pwd"

    const-string/jumbo v10, "checker"

    const-string/jumbo v11, "check enca get null"

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v9, Ljava/lang/Exception;

    const-string/jumbo v10, "check enca get null"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 66
    .end local v1    # "enca":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 68
    .restart local v5    # "result":Z
    goto/16 :goto_1

    .line 69
    .end local v0    # "component":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    .end local v2    # "md5":Ljava/lang/String;
    .end local v3    # "myMd5":Ljava/lang/String;
    .end local v4    # "random":Ljava/lang/String;
    .end local v5    # "result":Z
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "result":Z
    goto/16 :goto_1

    .line 72
    .end local v5    # "result":Z
    .end local v6    # "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .end local v7    # "splits":[Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "result":Z
    goto/16 :goto_1
.end method
