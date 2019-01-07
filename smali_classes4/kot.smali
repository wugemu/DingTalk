.class final Lkot;
.super Lkoy;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkot$b;,
        Lkot$c;,
        Lkot$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lkox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkox",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkox",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkox",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lkox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkox",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lkot$c;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lkox;Lkox;Lkox;Lkox;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lkox",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lkox",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lkox",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lkox",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "setUseSessionTickets":Lkox;, "Lkox<Ljava/net/Socket;>;"
    .local p3, "setHostname":Lkox;, "Lkox<Ljava/net/Socket;>;"
    .local p4, "getAlpnSelectedProtocol":Lkox;, "Lkox<Ljava/net/Socket;>;"
    .local p5, "setAlpnProtocols":Lkox;, "Lkox<Ljava/net/Socket;>;"
    invoke-direct {p0}, Lkoy;-><init>()V

    .line 58
    invoke-static {}, Lkot$c;->a()Lkot$c;

    move-result-object v0

    iput-object v0, p0, Lkot;->g:Lkot$c;

    .line 63
    iput-object p1, p0, Lkot;->a:Ljava/lang/Class;

    .line 64
    iput-object p2, p0, Lkot;->b:Lkox;

    .line 65
    iput-object p3, p0, Lkot;->d:Lkox;

    .line 66
    iput-object p4, p0, Lkot;->e:Lkox;

    .line 67
    iput-object p5, p0, Lkot;->f:Lkox;

    .line 68
    return-void
.end method

.method public static a()Lkoy;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 239
    :try_start_0
    const-string/jumbo v0, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 246
    .local v1, "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_1
    new-instance v2, Lkox;

    const/4 v0, 0x0

    const-string/jumbo v7, "setUseSessionTickets"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-direct {v2, v0, v7, v8}, Lkox;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 248
    .local v2, "setUseSessionTickets":Lkox;, "Lkox<Ljava/net/Socket;>;"
    new-instance v3, Lkox;

    const/4 v0, 0x0

    const-string/jumbo v7, "setHostname"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-direct {v3, v0, v7, v8}, Lkox;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 250
    .local v3, "setHostname":Lkox;, "Lkox<Ljava/net/Socket;>;"
    const/4 v4, 0x0

    .line 251
    .local v4, "getAlpnSelectedProtocol":Lkox;, "Lkox<Ljava/net/Socket;>;"
    const/4 v5, 0x0

    .line 253
    .local v5, "setAlpnProtocols":Lkox;, "Lkox<Ljava/net/Socket;>;"
    invoke-static {}, Lkot;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v4, Lkox;

    .end local v4    # "getAlpnSelectedProtocol":Lkox;, "Lkox<Ljava/net/Socket;>;"
    const-class v0, [B

    const-string/jumbo v7, "getAlpnSelectedProtocol"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {v4, v0, v7, v8}, Lkox;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 256
    .restart local v4    # "getAlpnSelectedProtocol":Lkox;, "Lkox<Ljava/net/Socket;>;"
    new-instance v5, Lkox;

    .end local v5    # "setAlpnProtocols":Lkox;, "Lkox<Ljava/net/Socket;>;"
    const/4 v0, 0x0

    const-string/jumbo v7, "setAlpnProtocols"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, [B

    aput-object v10, v8, v9

    invoke-direct {v5, v0, v7, v8}, Lkox;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 260
    .restart local v5    # "setAlpnProtocols":Lkox;, "Lkox<Ljava/net/Socket;>;"
    :cond_0
    new-instance v0, Lkot;

    invoke-direct/range {v0 .. v5}, Lkot;-><init>(Ljava/lang/Class;Lkox;Lkox;Lkox;Lkox;)V

    .line 266
    .end local v1    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setUseSessionTickets":Lkox;, "Lkox<Ljava/net/Socket;>;"
    .end local v3    # "setHostname":Lkox;, "Lkox<Ljava/net/Socket;>;"
    .end local v4    # "getAlpnSelectedProtocol":Lkox;, "Lkox<Ljava/net/Socket;>;"
    .end local v5    # "setAlpnProtocols":Lkox;, "Lkox<Ljava/net/Socket;>;"
    :goto_1
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    const-string/jumbo v0, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .restart local v1    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 266
    .end local v1    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p3, "networkSecurityPolicy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 185
    .local p2, "networkPolicyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string/jumbo v1, "isCleartextTrafficPermitted"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 186
    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 187
    .local v0, "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 189
    .end local v0    # "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    invoke-direct {p0, p1, p2, p3}, Lkot;->b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .param p3, "networkSecurityPolicy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 196
    .local p2, "networkPolicyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string/jumbo v1, "isCleartextTrafficPermitted"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 197
    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 198
    .local v0, "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 200
    .end local v0    # "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    invoke-super {p0, p1}, Lkoy;->b(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private static d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 210
    const-string/jumbo v1, "GMSCore_OpenSSL"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    :goto_0
    return v0

    .line 214
    :cond_0
    :try_start_0
    const-string/jumbo v1, "android.net.Network"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "closer"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lkot;->g:Lkot$c;

    invoke-virtual {v0, p1}, Lkot$c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lkot;->e:Lkox;

    if-nez v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object v1

    .line 135
    :cond_1
    iget-object v2, p0, Lkot;->e:Lkox;

    invoke-virtual {v2, p1}, Lkox;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lkot;->e:Lkox;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lkox;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 138
    .local v0, "alpnResult":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lknj;->e:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public final a(Ljavax/net/ssl/X509TrustManager;)Lkpc;
    .locals 8
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 223
    :try_start_0
    const-string/jumbo v4, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 224
    .local v3, "extensionsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljavax/net/ssl/X509TrustManager;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 225
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 226
    .local v2, "extensions":Ljava/lang/Object;
    const-string/jumbo v4, "checkServerTrusted"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/security/cert/X509Certificate;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 228
    .local v0, "checkServerTrusted":Ljava/lang/reflect/Method;
    new-instance v4, Lkot$a;

    invoke-direct {v4, v2, v0}, Lkot$a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "checkServerTrusted":Ljava/lang/reflect/Method;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "extensions":Ljava/lang/Object;
    .end local v3    # "extensionsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    :catch_0
    move-exception v4

    invoke-super {p0, p1}, Lkoy;->a(Ljavax/net/ssl/X509TrustManager;)Lkpc;

    move-result-object v4

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x5

    .line 142
    if-ne p1, v3, :cond_2

    .line 143
    .local v3, "logLevel":I
    :goto_0
    if-eqz p3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 146
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 147
    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 148
    .local v4, "newline":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 150
    :cond_1
    :goto_2
    add-int/lit16 v5, v1, 0xfa0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 151
    .local v0, "end":I
    const-string/jumbo v5, "OkHttp"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 153
    move v1, v0

    if-lt v0, v4, :cond_1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "logLevel":I
    .end local v4    # "newline":I
    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "logLevel":I
    .restart local v4    # "newline":I
    :cond_3
    move v4, v2

    .line 148
    goto :goto_2

    .line 155
    .end local v4    # "newline":I
    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 162
    iget-object v1, p0, Lkot;->g:Lkot$c;

    invoke-virtual {v1, p2}, Lkot$c;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 163
    .local v0, "reported":Z
    if-nez v0, :cond_0

    .line 165
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lkot;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :cond_0
    return-void
.end method

.method public final a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 73
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 93
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lknj;->a(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 76
    :cond_0
    throw v0

    .line 77
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "ioException":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 82
    throw v1

    .line 83
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "ioException":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/ClassCastException;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_1

    .line 87
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v1    # "ioException":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 89
    throw v1

    .line 91
    .end local v1    # "ioException":Ljava/io/IOException;
    :cond_1
    throw v0
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 121
    if-eqz p2, :cond_0

    .line 122
    iget-object v1, p0, Lkot;->b:Lkox;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Lkox;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lkot;->d:Lkox;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Lkox;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    iget-object v1, p0, Lkot;->f:Lkox;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkot;->f:Lkox;

    invoke-virtual {v1, p1}, Lkox;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    new-array v0, v5, [Ljava/lang/Object;

    .line 1236
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    .line 1237
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    .line 1238
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Protocol;

    .line 1239
    sget-object v6, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-eq v1, v6, :cond_1

    .line 1240
    invoke-virtual {v1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1241
    invoke-virtual {v1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 1237
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1243
    :cond_2
    invoke-virtual {v4}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    .line 128
    aput-object v1, v0, v3

    .line 129
    .local v0, "parameters":[Ljava/lang/Object;
    iget-object v1, p0, Lkot;->f:Lkox;

    invoke-virtual {v1, p1, v0}, Lkox;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v0    # "parameters":[Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public final b()Ljavax/net/ssl/SSLContext;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 434
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    .line 436
    :try_start_0
    const-string/jumbo v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 443
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 444
    :catch_1
    move-exception v0

    .line 445
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No TLS provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Ljavax/net/ssl/X509TrustManager;)Lkpe;
    .locals 6
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 275
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "findTrustAnchorByIssuerAndSignature"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 277
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 278
    new-instance v1, Lkot$b;

    invoke-direct {v1, p1, v0}, Lkot$b;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    invoke-super {p0, p1}, Lkoy;->b(Ljavax/net/ssl/X509TrustManager;)Lkpe;

    move-result-object v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 6
    .param p1, "hostname"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 171
    :try_start_0
    const-string/jumbo v4, "android.security.NetworkSecurityPolicy"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 172
    .local v2, "networkPolicyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 173
    .local v1, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 174
    .local v3, "networkSecurityPolicy":Ljava/lang/Object;
    invoke-direct {p0, p1, v2, v3}, Lkot;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    .line 176
    .end local v1    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v2    # "networkPolicyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "networkSecurityPolicy":Ljava/lang/Object;
    :goto_0
    return v4

    :catch_0
    move-exception v4

    :goto_1
    invoke-super {p0, p1}, Lkoy;->b(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 177
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v4, "unable to determine cleartext support"

    invoke-static {v4, v0}, Lknj;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v4

    throw v4

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .line 176
    :catch_4
    move-exception v4

    goto :goto_1
.end method
