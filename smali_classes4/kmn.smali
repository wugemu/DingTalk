.class public final Lkmn;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkmn$a;
    }
.end annotation


# static fields
.field public static final a:Lkmn;

.field public static final b:Lkmn;

.field public static final c:Lkmn;

.field public static final d:Lkmn;

.field private static final i:[Lkmk;

.field private static final j:[Lkmk;


# instance fields
.field final e:Z

.field public final f:Z

.field final g:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final h:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Lkmk;

    sget-object v1, Lkmk;->aX:Lkmk;

    aput-object v1, v0, v4

    sget-object v1, Lkmk;->bb:Lkmk;

    aput-object v1, v0, v3

    sget-object v1, Lkmk;->aY:Lkmk;

    aput-object v1, v0, v5

    sget-object v1, Lkmk;->bc:Lkmk;

    aput-object v1, v0, v6

    sget-object v1, Lkmk;->bi:Lkmk;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lkmk;->bh:Lkmk;

    aput-object v2, v0, v1

    sput-object v0, Lkmn;->i:[Lkmk;

    .line 56
    const/16 v0, 0xd

    new-array v0, v0, [Lkmk;

    sget-object v1, Lkmk;->aX:Lkmk;

    aput-object v1, v0, v4

    sget-object v1, Lkmk;->bb:Lkmk;

    aput-object v1, v0, v3

    sget-object v1, Lkmk;->aY:Lkmk;

    aput-object v1, v0, v5

    sget-object v1, Lkmk;->bc:Lkmk;

    aput-object v1, v0, v6

    sget-object v1, Lkmk;->bi:Lkmk;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lkmk;->bh:Lkmk;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkmk;->aI:Lkmk;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkmk;->aJ:Lkmk;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lkmk;->ag:Lkmk;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lkmk;->ah:Lkmk;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lkmk;->E:Lkmk;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lkmk;->I:Lkmk;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lkmk;->i:Lkmk;

    aput-object v2, v0, v1

    sput-object v0, Lkmn;->j:[Lkmk;

    .line 77
    new-instance v0, Lkmn$a;

    invoke-direct {v0, v3}, Lkmn$a;-><init>(Z)V

    sget-object v1, Lkmn;->i:[Lkmk;

    .line 78
    invoke-virtual {v0, v1}, Lkmn$a;->a([Lkmk;)Lkmn$a;

    move-result-object v0

    new-array v1, v3, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v2, v1, v4

    .line 79
    invoke-virtual {v0, v1}, Lkmn$a;->a([Lokhttp3/TlsVersion;)Lkmn$a;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v3}, Lkmn$a;->a(Z)Lkmn$a;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lkmn$a;->a()Lkmn;

    move-result-object v0

    sput-object v0, Lkmn;->a:Lkmn;

    .line 84
    new-instance v0, Lkmn$a;

    invoke-direct {v0, v3}, Lkmn$a;-><init>(Z)V

    sget-object v1, Lkmn;->j:[Lkmk;

    .line 85
    invoke-virtual {v0, v1}, Lkmn$a;->a([Lkmk;)Lkmn$a;

    move-result-object v0

    new-array v1, v6, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    aput-object v2, v1, v5

    .line 86
    invoke-virtual {v0, v1}, Lkmn$a;->a([Lokhttp3/TlsVersion;)Lkmn$a;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v3}, Lkmn$a;->a(Z)Lkmn$a;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lkmn$a;->a()Lkmn;

    move-result-object v0

    sput-object v0, Lkmn;->b:Lkmn;

    .line 91
    new-instance v0, Lkmn$a;

    sget-object v1, Lkmn;->b:Lkmn;

    invoke-direct {v0, v1}, Lkmn$a;-><init>(Lkmn;)V

    new-array v1, v3, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    aput-object v2, v1, v4

    .line 92
    invoke-virtual {v0, v1}, Lkmn$a;->a([Lokhttp3/TlsVersion;)Lkmn$a;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v3}, Lkmn$a;->a(Z)Lkmn$a;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lkmn$a;->a()Lkmn;

    move-result-object v0

    sput-object v0, Lkmn;->c:Lkmn;

    .line 97
    new-instance v0, Lkmn$a;

    invoke-direct {v0, v4}, Lkmn$a;-><init>(Z)V

    invoke-virtual {v0}, Lkmn$a;->a()Lkmn;

    move-result-object v0

    sput-object v0, Lkmn;->d:Lkmn;

    return-void
.end method

.method constructor <init>(Lkmn$a;)V
    .locals 1
    .param p1, "builder"    # Lkmn$a;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iget-boolean v0, p1, Lkmn$a;->a:Z

    iput-boolean v0, p0, Lkmn;->e:Z

    .line 106
    iget-object v0, p1, Lkmn$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lkmn;->g:[Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lkmn$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Lkmn;->h:[Ljava/lang/String;

    .line 108
    iget-boolean v0, p1, Lkmn$a;->d:Z

    iput-boolean v0, p0, Lkmn;->f:Z

    .line 109
    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 187
    iget-boolean v1, p0, Lkmn;->e:Z

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    iget-object v1, p0, Lkmn;->h:[Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lknj;->h:Ljava/util/Comparator;

    iget-object v2, p0, Lkmn;->h:[Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-static {v1, v2, v3}, Lknj;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :cond_2
    iget-object v1, p0, Lkmn;->g:[Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lkmk;->a:Ljava/util/Comparator;

    iget-object v2, p0, Lkmn;->g:[Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v1, v2, v3}, Lknj;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    instance-of v3, p1, Lkmn;

    if-nez v3, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 206
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 208
    check-cast v0, Lkmn;

    .line 209
    .local v0, "that":Lkmn;
    iget-boolean v3, p0, Lkmn;->e:Z

    iget-boolean v4, v0, Lkmn;->e:Z

    if-ne v3, v4, :cond_0

    .line 211
    iget-boolean v3, p0, Lkmn;->e:Z

    if-eqz v3, :cond_3

    .line 212
    iget-object v3, p0, Lkmn;->g:[Ljava/lang/String;

    iget-object v4, v0, Lkmn;->g:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lkmn;->h:[Ljava/lang/String;

    iget-object v4, v0, Lkmn;->h:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    iget-boolean v3, p0, Lkmn;->f:Z

    iget-boolean v4, v0, Lkmn;->f:Z

    if-ne v3, v4, :cond_0

    :cond_3
    move v1, v2

    .line 217
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 221
    const/16 v0, 0x11

    .line 222
    .local v0, "result":I
    iget-boolean v1, p0, Lkmn;->e:Z

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lkmn;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 224
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lkmn;->h:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 225
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lkmn;->f:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 227
    :cond_0
    return v0

    .line 225
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-boolean v2, p0, Lkmn;->e:Z

    if-nez v2, :cond_0

    .line 232
    const-string/jumbo v2, "ConnectionSpec()"

    .line 237
    :goto_0
    return-object v2

    .line 235
    :cond_0
    iget-object v2, p0, Lkmn;->g:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1120
    iget-object v2, p0, Lkmn;->g:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lkmn;->g:[Ljava/lang/String;

    invoke-static {v2}, Lkmk;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 235
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "cipherSuitesString":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lkmn;->h:[Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1128
    iget-object v2, p0, Lkmn;->h:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lkmn;->h:[Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/TlsVersion;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 236
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "tlsVersionsString":Ljava/lang/String;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ConnectionSpec(cipherSuites="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tlsVersions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", supportsTlsExtensions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lkmn;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "cipherSuitesString":Ljava/lang/String;
    .end local v1    # "tlsVersionsString":Ljava/lang/String;
    :cond_2
    move-object v2, v3

    .line 1120
    goto :goto_1

    .line 235
    :cond_3
    const-string/jumbo v0, "[all enabled]"

    goto :goto_2

    .line 236
    .restart local v0    # "cipherSuitesString":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "[all enabled]"

    goto :goto_3
.end method
