.class public final Lkmn$a;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkmn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field d:Z


# direct methods
.method public constructor <init>(Lkmn;)V
    .locals 1
    .param p1, "connectionSpec"    # Lkmn;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iget-boolean v0, p1, Lkmn;->e:Z

    iput-boolean v0, p0, Lkmn$a;->a:Z

    .line 256
    iget-object v0, p1, Lkmn;->g:[Ljava/lang/String;

    iput-object v0, p0, Lkmn$a;->b:[Ljava/lang/String;

    .line 257
    iget-object v0, p1, Lkmn;->h:[Ljava/lang/String;

    iput-object v0, p0, Lkmn$a;->c:[Ljava/lang/String;

    .line 258
    iget-boolean v0, p1, Lkmn;->f:Z

    iput-boolean v0, p0, Lkmn$a;->d:Z

    .line 259
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "tls"    # Z

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-boolean p1, p0, Lkmn$a;->a:Z

    .line 252
    return-void
.end method


# virtual methods
.method public final a(Z)Lkmn$a;
    .locals 2
    .param p1, "supportsTlsExtensions"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 317
    iget-boolean v0, p0, Lkmn$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkmn$a;->d:Z

    .line 319
    return-object p0
.end method

.method public final varargs a([Ljava/lang/String;)Lkmn$a;
    .locals 2
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 278
    iget-boolean v0, p0, Lkmn$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lkmn$a;->b:[Ljava/lang/String;

    .line 285
    return-object p0
.end method

.method public final varargs a([Lkmk;)Lkmn$a;
    .locals 4
    .param p1, "cipherSuites"    # [Lkmk;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 268
    iget-boolean v2, p0, Lkmn$a;->a:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "no cipher suites for cleartext connections"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_0
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 271
    .local v1, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 272
    aget-object v2, p1, v0

    iget-object v2, v2, Lkmk;->bk:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p0, v1}, Lkmn$a;->a([Ljava/lang/String;)Lkmn$a;

    move-result-object v2

    return-object v2
.end method

.method public final varargs a([Lokhttp3/TlsVersion;)Lkmn$a;
    .locals 4
    .param p1, "tlsVersions"    # [Lokhttp3/TlsVersion;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 295
    iget-boolean v2, p0, Lkmn$a;->a:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "no TLS versions for cleartext connections"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_0
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 298
    .local v1, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 299
    aget-object v2, p1, v0

    iget-object v2, v2, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p0, v1}, Lkmn$a;->b([Ljava/lang/String;)Lkmn$a;

    move-result-object v2

    return-object v2
.end method

.method public final a()Lkmn;
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lkmn;

    invoke-direct {v0, p0}, Lkmn;-><init>(Lkmn$a;)V

    return-object v0
.end method

.method public final varargs b([Ljava/lang/String;)Lkmn$a;
    .locals 2
    .param p1, "tlsVersions"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 306
    iget-boolean v0, p0, Lkmn$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lkmn$a;->c:[Ljava/lang/String;

    .line 313
    return-object p0
.end method
