.class public Lama;
.super Ljava/lang/Object;
.source "TnetSecuritySDK.java"


# static fields
.field private static volatile a:Lama;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lama;->b:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lama;->c:Ljava/lang/Object;

    .line 23
    iput-object v0, p0, Lama;->d:Ljava/lang/reflect/Method;

    .line 24
    iput-object v0, p0, Lama;->e:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lama;->f:Ljava/lang/reflect/Method;

    .line 26
    iput-object v0, p0, Lama;->g:Ljava/lang/reflect/Method;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lama;->h:Z

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lama;->i:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static a()Lama;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lama;->a:Lama;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lama;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lama;->a:Lama;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lama;

    invoke-direct {v0}, Lama;-><init>()V

    .line 38
    sput-object v0, Lama;->a:Lama;

    invoke-direct {v0}, Lama;->c()V

    .line 40
    :cond_0
    sget-object v0, Lama;->a:Lama;

    monitor-exit v1

    .line 43
    :goto_0
    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 43
    :cond_1
    sget-object v0, Lama;->a:Lama;

    goto :goto_0
.end method

.method private declared-synchronized c()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lamu;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v10

    .line 1342
    iget-object v8, v10, Lajw;->e:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    .line 56
    .local v8, "requestAuthentication":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    instance-of v10, v8, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    if-eqz v10, :cond_0

    .line 58
    const/4 v10, 0x0

    iput-boolean v10, p0, Lama;->h:Z

    .line 64
    :cond_0
    if-eqz v8, :cond_2

    .line 65
    const-string/jumbo v10, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 66
    .local v1, "clz0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v10, "com.alibaba.wireless.security.open.staticdataencrypt.IStaticDataEncryptComponent"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 67
    .local v2, "clz1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v10, "com.alibaba.wireless.security.open.dynamicdatastore.IDynamicDataStoreComponent"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 69
    .local v3, "clz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v10, v8, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    if-eqz v10, :cond_1

    .line 71
    move-object v0, v8

    check-cast v0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    move-object v9, v0

    .line 72
    .local v9, "thridRequestAuthentication":Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;
    invoke-virtual {v9}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->getAuthcode()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lama;->i:Ljava/lang/String;

    .line 75
    .end local v9    # "thridRequestAuthentication":Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;
    :cond_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 76
    const-string/jumbo v10, "getInstance"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/Context;

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 77
    .local v6, "lgetInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v13

    .line 2305
    iget-object v13, v13, Lajw;->c:Landroid/content/Context;

    .line 77
    aput-object v13, v11, v12

    invoke-virtual {v6, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lama;->b:Ljava/lang/Object;

    .line 79
    const-string/jumbo v10, "getStaticDataEncryptComp"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 81
    .local v7, "lgetStaticDataEncryptComp":Ljava/lang/reflect/Method;
    iget-object v10, p0, Lama;->b:Ljava/lang/Object;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lama;->c:Ljava/lang/Object;

    .line 83
    const-string/jumbo v10, "getDynamicDataStoreComp"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 84
    .local v5, "lgetDynamicDataStoreComp":Ljava/lang/reflect/Method;
    iget-object v10, p0, Lama;->b:Ljava/lang/Object;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lama;->e:Ljava/lang/Object;

    .line 87
    const-string/jumbo v10, "staticBinarySafeDecryptNoB64"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-class v13, [B

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, p0, Lama;->d:Ljava/lang/reflect/Method;

    .line 88
    const-string/jumbo v10, "putByteArray"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, [B

    aput-object v13, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, p0, Lama;->f:Ljava/lang/reflect/Method;

    .line 89
    const-string/jumbo v10, "getByteArray"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, p0, Lama;->g:Ljava/lang/reflect/Method;

    .line 90
    const/4 v10, 0x1

    iput-boolean v10, p0, Lama;->h:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v1    # "clz0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "clz1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "clz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "lgetDynamicDataStoreComp":Ljava/lang/reflect/Method;
    .end local v6    # "lgetInstanceMethod":Ljava/lang/reflect/Method;
    .end local v7    # "lgetStaticDataEncryptComp":Ljava/lang/reflect/Method;
    .end local v8    # "requestAuthentication":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    .restart local v1    # "clz0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "clz1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "clz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "requestAuthentication":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :cond_3
    const/4 v10, 0x0

    :try_start_2
    iput-boolean v10, p0, Lama;->h:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 95
    .end local v1    # "clz0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "clz1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "clz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "requestAuthentication":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :catch_0
    move-exception v4

    .line 96
    .local v4, "e":Ljava/lang/Throwable;
    const/4 v10, 0x0

    :try_start_3
    iput-boolean v10, p0, Lama;->h:Z

    .line 97
    const-string/jumbo v10, "initSecurityCheck"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "e.getCode"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v4, v11, v12

    const/4 v12, 0x3

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 53
    .end local v4    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "bArr"    # [B

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v4, p0, Lama;->f:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lama;->e:Ljava/lang/Object;

    if-nez v4, :cond_1

    :cond_0
    move v2, v3

    .line 136
    :goto_0
    return v2

    .line 126
    :cond_1
    :try_start_0
    iget-object v4, p0, Lama;->f:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lama;->e:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_2

    move v2, v3

    .line 128
    goto :goto_0

    .line 130
    :cond_2
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 131
    .local v2, "ret":I
    const-string/jumbo v4, ""

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "ret"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v2    # "ret":I
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v3}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 136
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;[B)[B
    .locals 9
    .param p1, "i"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "bArr"    # [B

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 102
    iget-object v3, p0, Lama;->d:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lama;->c:Ljava/lang/Object;

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 117
    :goto_0
    return-object v1

    .line 107
    :cond_1
    :try_start_0
    iget-object v3, p0, Lama;->d:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lama;->c:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lama;->i:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 108
    .local v1, "obj":Ljava/lang/Object;
    const-string/jumbo v3, ""

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "mStaticDataEncryptCompObj"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lama;->c:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "i"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "str"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p2, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "bArr"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object p3, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "authcode"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lama;->i:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "obj"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    if-nez v1, :cond_2

    move-object v1, v2

    .line 110
    goto :goto_0

    .line 113
    :cond_2
    check-cast v1, [B

    .end local v1    # "obj":Ljava/lang/Object;
    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Throwable;
    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 117
    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 140
    iget-object v3, p0, Lama;->g:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lama;->e:Ljava/lang/Object;

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 153
    :goto_0
    return-object v1

    .line 145
    :cond_1
    :try_start_0
    iget-object v3, p0, Lama;->g:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lama;->e:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 146
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_2

    move-object v1, v2

    .line 147
    goto :goto_0

    .line 149
    :cond_2
    check-cast v1, [B

    .end local v1    # "obj":Ljava/lang/Object;
    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Throwable;
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 153
    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 48
    const-string/jumbo v0, ""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "mInitSecurityCheck"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lama;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-boolean v0, p0, Lama;->h:Z

    return v0
.end method
