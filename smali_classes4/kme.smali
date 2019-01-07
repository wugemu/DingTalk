.class public final Lkme;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field public final a:Lkmw;

.field public final b:Lkmr;

.field public final c:Ljavax/net/SocketFactory;

.field public final d:Lkmf;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkmn;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/net/ProxySelector;

.field public final h:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final j:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final k:Lkmj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILkmr;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lkmj;Lkmf;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 5
    .param p1, "uriHost"    # Ljava/lang/String;
    .param p2, "uriPort"    # I
    .param p3, "dns"    # Lkmr;
    .param p4, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "certificatePinner"    # Lkmj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "proxyAuthenticator"    # Lkmf;
    .param p9, "proxy"    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "proxySelector"    # Ljava/net/ProxySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkmr;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lkmj;",
            "Lkmf;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lkmn;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p10, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    .local p11, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lkmn;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v2, Lkmw$a;

    invoke-direct {v2}, Lkmw$a;-><init>()V

    .line 57
    if-eqz p5, :cond_0

    const-string/jumbo v1, "https"

    .line 1984
    :goto_0
    const-string/jumbo v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1985
    const-string/jumbo v1, "http"

    iput-object v1, v2, Lkmw$a;->a:Ljava/lang/String;

    .line 2025
    :goto_1
    if-nez p1, :cond_3

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "host == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    const-string/jumbo v1, "http"

    goto :goto_0

    .line 1986
    :cond_1
    const-string/jumbo v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1987
    const-string/jumbo v1, "https"

    iput-object v1, v2, Lkmw$a;->a:Ljava/lang/String;

    goto :goto_1

    .line 1989
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unexpected scheme: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2026
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p1, v1, v3}, Lkmw$a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 2027
    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unexpected host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2028
    :cond_4
    iput-object v1, v2, Lkmw$a;->d:Ljava/lang/String;

    .line 2033
    if-lez p2, :cond_5

    const v1, 0xffff

    if-le p2, v1, :cond_6

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unexpected port: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2034
    :cond_6
    iput p2, v2, Lkmw$a;->e:I

    .line 60
    invoke-virtual {v2}, Lkmw$a;->b()Lkmw;

    move-result-object v1

    iput-object v1, p0, Lkme;->a:Lkmw;

    .line 62
    if-nez p3, :cond_7

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dns == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_7
    iput-object p3, p0, Lkme;->b:Lkmr;

    .line 65
    if-nez p4, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "socketFactory == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_8
    iput-object p4, p0, Lkme;->c:Ljavax/net/SocketFactory;

    .line 68
    if-nez p8, :cond_9

    .line 69
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "proxyAuthenticator == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_9
    iput-object p8, p0, Lkme;->d:Lkmf;

    .line 73
    if-nez p10, :cond_a

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "protocols == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_a
    invoke-static {p10}, Lknj;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkme;->e:Ljava/util/List;

    .line 76
    if-nez p11, :cond_b

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "connectionSpecs == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_b
    invoke-static/range {p11 .. p11}, Lknj;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkme;->f:Ljava/util/List;

    .line 79
    if-nez p12, :cond_c

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "proxySelector == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_c
    move-object/from16 v0, p12

    iput-object v0, p0, Lkme;->g:Ljava/net/ProxySelector;

    .line 82
    iput-object p9, p0, Lkme;->h:Ljava/net/Proxy;

    .line 83
    iput-object p5, p0, Lkme;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 84
    iput-object p6, p0, Lkme;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 85
    iput-object p7, p0, Lkme;->k:Lkmj;

    .line 86
    return-void
.end method


# virtual methods
.method final a(Lkme;)Z
    .locals 2
    .param p1, "that"    # Lkme;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 176
    iget-object v0, p0, Lkme;->b:Lkmr;

    iget-object v1, p1, Lkme;->b:Lkmr;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkme;->d:Lkmf;

    iget-object v1, p1, Lkme;->d:Lkmf;

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkme;->e:Ljava/util/List;

    iget-object v1, p1, Lkme;->e:Ljava/util/List;

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkme;->f:Ljava/util/List;

    iget-object v1, p1, Lkme;->f:Ljava/util/List;

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkme;->g:Ljava/net/ProxySelector;

    iget-object v1, p1, Lkme;->g:Ljava/net/ProxySelector;

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkme;->h:Ljava/net/Proxy;

    iget-object v1, p1, Lkme;->h:Ljava/net/Proxy;

    .line 181
    invoke-static {v0, v1}, Lknj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkme;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lkme;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 182
    invoke-static {v0, v1}, Lknj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkme;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lkme;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 183
    invoke-static {v0, v1}, Lknj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkme;->k:Lkmj;

    iget-object v1, p1, Lkme;->k:Lkmj;

    .line 184
    invoke-static {v0, v1}, Lknj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2093
    iget-object v0, p0, Lkme;->a:Lkmw;

    .line 2502
    iget v0, v0, Lkmw;->c:I

    .line 3093
    iget-object v1, p1, Lkme;->a:Lkmw;

    .line 3502
    iget v1, v1, Lkmw;->c:I

    .line 185
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 176
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 155
    instance-of v0, p1, Lkme;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkme;->a:Lkmw;

    move-object v0, p1

    check-cast v0, Lkme;

    iget-object v0, v0, Lkme;->a:Lkmw;

    .line 156
    invoke-virtual {v1, v0}, Lkmw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lkme;

    .line 157
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lkme;->a(Lkme;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 155
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v1, p0, Lkme;->a:Lkmw;

    invoke-virtual {v1}, Lkmw;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 163
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lkme;->b:Lkmr;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 164
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lkme;->d:Lkmf;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 165
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lkme;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 166
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lkme;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 167
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lkme;->g:Ljava/net/ProxySelector;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 168
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lkme;->h:Ljava/net/Proxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkme;->h:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 169
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lkme;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lkme;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 170
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lkme;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkme;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 171
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lkme;->k:Lkmj;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lkme;->k:Lkmj;

    invoke-virtual {v2}, Lkmj;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 172
    return v0

    :cond_1
    move v1, v2

    .line 168
    goto :goto_0

    :cond_2
    move v1, v2

    .line 169
    goto :goto_1

    :cond_3
    move v1, v2

    .line 170
    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Address{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lkme;->a:Lkmw;

    .line 4486
    iget-object v2, v2, Lkmw;->b:Ljava/lang/String;

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkme;->a:Lkmw;

    .line 4502
    iget v2, v2, Lkmw;->c:I

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lkme;->h:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 194
    const-string/jumbo v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkme;->h:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    :goto_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 196
    :cond_0
    const-string/jumbo v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkme;->g:Ljava/net/ProxySelector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
