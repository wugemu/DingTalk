.class public final Lhuj;
.super Ljava/lang/Object;
.source "UTSecuritySDKRequestAuthentication.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Class;

.field private f:Ljava/lang/reflect/Field;

.field private g:Ljava/lang/reflect/Field;

.field private h:Ljava/lang/reflect/Field;

.field private i:Ljava/lang/reflect/Method;

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aAppkey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lhuj;->b:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lhuj;->c:Ljava/lang/Object;

    .line 38
    iput-object v0, p0, Lhuj;->d:Ljava/lang/Object;

    .line 39
    iput-object v0, p0, Lhuj;->e:Ljava/lang/Class;

    .line 40
    iput-object v0, p0, Lhuj;->f:Ljava/lang/reflect/Field;

    .line 41
    iput-object v0, p0, Lhuj;->g:Ljava/lang/reflect/Field;

    .line 42
    iput-object v0, p0, Lhuj;->h:Ljava/lang/reflect/Field;

    .line 43
    iput-object v0, p0, Lhuj;->i:Ljava/lang/reflect/Method;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lhuj;->j:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuj;->k:Z

    .line 33
    iput-object p1, p0, Lhuj;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lhuj;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private declared-synchronized a()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 49
    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Lhuj;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 54
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v8, "com.taobao.wireless.security.sdk.SecurityGuardManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    const-string/jumbo v8, "getInstance"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-virtual {v0, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 56
    .local v3, "lgetInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lhuj;->a:Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-virtual {v3, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lhuj;->c:Ljava/lang/Object;

    .line 58
    const-string/jumbo v8, "getSecureSignatureComp"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 59
    .local v4, "lgetSecureSignatureComp":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lhuj;->c:Ljava/lang/Object;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lhuj;->d:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .end local v3    # "lgetInstanceMethod":Ljava/lang/reflect/Method;
    .end local v4    # "lgetSecureSignatureComp":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v0, :cond_2

    .line 65
    :try_start_2
    const-string/jumbo v8, "com.taobao.wireless.security.sdk.SecurityGuardParamContext"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    iput-object v8, p0, Lhuj;->e:Ljava/lang/Class;

    .line 66
    iget-object v8, p0, Lhuj;->e:Ljava/lang/Class;

    const-string/jumbo v10, "appKey"

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, p0, Lhuj;->f:Ljava/lang/reflect/Field;

    .line 67
    iget-object v8, p0, Lhuj;->e:Ljava/lang/Class;

    const-string/jumbo v10, "paramMap"

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, p0, Lhuj;->g:Ljava/lang/reflect/Field;

    .line 68
    iget-object v8, p0, Lhuj;->e:Ljava/lang/Class;

    const-string/jumbo v10, "requestType"

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, p0, Lhuj;->h:Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    const/4 v6, 0x0

    .line 71
    .local v6, "lisThirdParty":Z
    const/4 v5, 0x0

    .line 73
    .local v5, "lisOpenMethod":Ljava/lang/reflect/Method;
    :try_start_3
    const-string/jumbo v8, "isOpen"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 78
    :goto_2
    if-eqz v5, :cond_3

    .line 79
    :try_start_4
    iget-object v8, p0, Lhuj;->c:Ljava/lang/Object;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 93
    :cond_1
    :goto_3
    if-eqz v6, :cond_4

    move v8, v9

    :goto_4
    iput v8, p0, Lhuj;->j:I

    .line 95
    const-string/jumbo v8, "com.taobao.wireless.security.sdk.securesignature.ISecureSignatureComponent"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 96
    .local v7, "lsignCompClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "signRequest"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    iget-object v11, p0, Lhuj;->e:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lhuj;->i:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    .end local v5    # "lisOpenMethod":Ljava/lang/reflect/Method;
    .end local v6    # "lisThirdParty":Z
    .end local v7    # "lsignCompClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_5
    const/4 v8, 0x1

    :try_start_5
    iput-boolean v8, p0, Lhuj;->k:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 49
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 60
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_6
    const-string/jumbo v8, "initSecurityCheck"

    invoke-static {v8, v1}, Lhtj;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 74
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v5    # "lisOpenMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "lisThirdParty":Z
    :catch_1
    move-exception v1

    .line 75
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_7
    const-string/jumbo v8, "initSecurityCheck"

    invoke-static {v8, v1}, Lhtj;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 98
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v5    # "lisOpenMethod":Ljava/lang/reflect/Method;
    .end local v6    # "lisThirdParty":Z
    :catch_2
    move-exception v1

    .line 99
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_8
    const-string/jumbo v8, "initSecurityCheck"

    invoke-static {v8, v1}, Lhtj;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 81
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v5    # "lisOpenMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "lisThirdParty":Z
    :cond_3
    const/4 v2, 0x0

    .line 84
    .local v2, "lBodyCompClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_9
    const-string/jumbo v8, "com.taobao.wireless.security.sdk.securitybody.ISecurityBodyComponent"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v2

    .line 88
    :goto_6
    if-nez v2, :cond_1

    .line 89
    const/4 v6, 0x1

    goto :goto_3

    .line 85
    :catch_3
    move-exception v1

    .line 86
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_a
    const-string/jumbo v8, "initSecurityCheck"

    invoke-static {v8, v1}, Lhtj;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 93
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "lBodyCompClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/16 v8, 0xc

    goto :goto_4
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "toBeSignedStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-boolean v5, p0, Lhuj;->k:Z

    if-nez v5, :cond_0

    .line 109
    invoke-direct {p0}, Lhuj;->a()V

    .line 112
    :cond_0
    iget-object v5, p0, Lhuj;->b:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 113
    const-string/jumbo v5, "UTSecuritySDKRequestAuthentication:getSign There is no appkey,please check it!"

    .line 1022
    const-string/jumbo v6, "MotuCrashSDK"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    :goto_0
    return-object v3

    .line 117
    :cond_2
    if-eqz p1, :cond_1

    .line 121
    const/4 v3, 0x0

    .line 122
    .local v3, "lSignedStr":Ljava/lang/String;
    iget-object v5, p0, Lhuj;->c:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lhuj;->e:Ljava/lang/Class;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lhuj;->f:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lhuj;->g:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lhuj;->h:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lhuj;->i:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lhuj;->d:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 130
    :try_start_0
    iget-object v5, p0, Lhuj;->e:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 131
    .local v4, "lsecurityGuardParamContext":Ljava/lang/Object;
    iget-object v5, p0, Lhuj;->f:Ljava/lang/reflect/Field;

    iget-object v6, p0, Lhuj;->b:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    iget-object v5, p0, Lhuj;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 133
    .local v2, "lParamMap":Ljava/util/Map;
    const-string/jumbo v5, "INPUT"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v5, p0, Lhuj;->h:Ljava/lang/reflect/Field;

    iget v6, p0, Lhuj;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    iget-object v5, p0, Lhuj;->i:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lhuj;->d:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 139
    .end local v2    # "lParamMap":Ljava/util/Map;
    .end local v4    # "lsecurityGuardParamContext":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
