.class public Lkna;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkna$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkmn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:I

.field final B:I

.field public final C:I

.field final c:Lkmq;

.field public final d:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

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

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkmx;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkmx;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lkms$a;

.field public final j:Ljava/net/ProxySelector;

.field public final k:Lkmp;

.field final l:Lkmg;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final m:Lkno;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final n:Ljavax/net/SocketFactory;

.field public final o:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final p:Lkpc;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final q:Ljavax/net/ssl/HostnameVerifier;

.field public final r:Lkmj;

.field public final s:Lkmf;

.field public final t:Lkmf;

.field public final u:Lkmm;

.field public final v:Lkmr;

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-array v0, v4, [Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    aput-object v1, v0, v3

    invoke-static {v0}, Lknj;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkna;->a:Ljava/util/List;

    .line 126
    new-array v0, v4, [Lkmn;

    sget-object v1, Lkmn;->b:Lkmn;

    aput-object v1, v0, v2

    sget-object v1, Lkmn;->d:Lkmn;

    aput-object v1, v0, v3

    invoke-static {v0}, Lknj;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkna;->b:Ljava/util/List;

    .line 130
    new-instance v0, Lkna$1;

    invoke-direct {v0}, Lkna$1;-><init>()V

    sput-object v0, Lknh;->a:Lknh;

    .line 191
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lkna$a;

    invoke-direct {v0}, Lkna$a;-><init>()V

    invoke-direct {p0, v0}, Lkna;-><init>(Lkna$a;)V

    .line 223
    return-void
.end method

.method constructor <init>(Lkna$a;)V
    .locals 7
    .param p1, "builder"    # Lkna$a;

    .prologue
    const/4 v6, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iget-object v3, p1, Lkna$a;->a:Lkmq;

    iput-object v3, p0, Lkna;->c:Lkmq;

    .line 227
    iget-object v3, p1, Lkna$a;->b:Ljava/net/Proxy;

    iput-object v3, p0, Lkna;->d:Ljava/net/Proxy;

    .line 228
    iget-object v3, p1, Lkna$a;->c:Ljava/util/List;

    iput-object v3, p0, Lkna;->e:Ljava/util/List;

    .line 229
    iget-object v3, p1, Lkna$a;->d:Ljava/util/List;

    iput-object v3, p0, Lkna;->f:Ljava/util/List;

    .line 230
    iget-object v3, p1, Lkna$a;->e:Ljava/util/List;

    invoke-static {v3}, Lknj;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lkna;->g:Ljava/util/List;

    .line 231
    iget-object v3, p1, Lkna$a;->f:Ljava/util/List;

    invoke-static {v3}, Lknj;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lkna;->h:Ljava/util/List;

    .line 232
    iget-object v3, p1, Lkna$a;->g:Lkms$a;

    iput-object v3, p0, Lkna;->i:Lkms$a;

    .line 233
    iget-object v3, p1, Lkna$a;->h:Ljava/net/ProxySelector;

    iput-object v3, p0, Lkna;->j:Ljava/net/ProxySelector;

    .line 234
    iget-object v3, p1, Lkna$a;->i:Lkmp;

    iput-object v3, p0, Lkna;->k:Lkmp;

    .line 235
    iget-object v3, p1, Lkna$a;->j:Lkmg;

    iput-object v3, p0, Lkna;->l:Lkmg;

    .line 236
    iget-object v3, p1, Lkna$a;->k:Lkno;

    iput-object v3, p0, Lkna;->m:Lkno;

    .line 237
    iget-object v3, p1, Lkna$a;->l:Ljavax/net/SocketFactory;

    iput-object v3, p0, Lkna;->n:Ljavax/net/SocketFactory;

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "isTLS":Z
    iget-object v3, p0, Lkna;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkmn;

    .line 241
    .local v1, "spec":Lkmn;
    if-nez v0, :cond_0

    .line 1112
    iget-boolean v4, v1, Lkmn;->e:Z

    .line 241
    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 242
    :goto_1
    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 244
    .end local v1    # "spec":Lkmn;
    :cond_2
    iget-object v3, p1, Lkna$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v3, :cond_3

    if-nez v0, :cond_5

    .line 245
    :cond_3
    iget-object v3, p1, Lkna$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v3, p0, Lkna;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 246
    iget-object v3, p1, Lkna$a;->n:Lkpc;

    iput-object v3, p0, Lkna;->p:Lkpc;

    .line 253
    :goto_2
    iget-object v3, p0, Lkna;->o:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_4

    .line 254
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v3

    iget-object v4, p0, Lkna;->o:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3, v4}, Lkoy;->a(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 257
    :cond_4
    iget-object v3, p1, Lkna$a;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v3, p0, Lkna;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 258
    iget-object v3, p1, Lkna$a;->p:Lkmj;

    iget-object v5, p0, Lkna;->p:Lkpc;

    .line 2231
    iget-object v4, v3, Lkmj;->c:Lkpc;

    invoke-static {v4, v5}, Lknj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 258
    :goto_3
    iput-object v3, p0, Lkna;->r:Lkmj;

    .line 260
    iget-object v3, p1, Lkna$a;->q:Lkmf;

    iput-object v3, p0, Lkna;->s:Lkmf;

    .line 261
    iget-object v3, p1, Lkna$a;->r:Lkmf;

    iput-object v3, p0, Lkna;->t:Lkmf;

    .line 262
    iget-object v3, p1, Lkna$a;->s:Lkmm;

    iput-object v3, p0, Lkna;->u:Lkmm;

    .line 263
    iget-object v3, p1, Lkna$a;->t:Lkmr;

    iput-object v3, p0, Lkna;->v:Lkmr;

    .line 264
    iget-boolean v3, p1, Lkna$a;->u:Z

    iput-boolean v3, p0, Lkna;->w:Z

    .line 265
    iget-boolean v3, p1, Lkna$a;->v:Z

    iput-boolean v3, p0, Lkna;->x:Z

    .line 266
    iget-boolean v3, p1, Lkna$a;->w:Z

    iput-boolean v3, p0, Lkna;->y:Z

    .line 267
    iget v3, p1, Lkna$a;->x:I

    iput v3, p0, Lkna;->z:I

    .line 268
    iget v3, p1, Lkna$a;->y:I

    iput v3, p0, Lkna;->A:I

    .line 269
    iget v3, p1, Lkna$a;->z:I

    iput v3, p0, Lkna;->B:I

    .line 270
    iget v3, p1, Lkna$a;->A:I

    iput v3, p0, Lkna;->C:I

    .line 272
    iget-object v3, p0, Lkna;->g:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 273
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Null interceptor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lkna;->g:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_5
    invoke-static {}, Lknj;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 249
    .local v2, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {v2}, Lkna;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iput-object v3, p0, Lkna;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 2041
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkoy;->a(Ljavax/net/ssl/X509TrustManager;)Lkpc;

    move-result-object v3

    .line 250
    iput-object v3, p0, Lkna;->p:Lkpc;

    goto :goto_2

    .line 2233
    .end local v2    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_6
    new-instance v4, Lkmj;

    iget-object v3, v3, Lkmj;->b:Ljava/util/Set;

    invoke-direct {v4, v3, v5}, Lkmj;-><init>(Ljava/util/Set;Lkpc;)V

    move-object v3, v4

    goto :goto_3

    .line 275
    :cond_7
    iget-object v3, p0, Lkna;->h:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 276
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Null network interceptor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lkna;->h:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 278
    :cond_8
    return-void
.end method

.method private static a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 282
    :try_start_0
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v2

    invoke-virtual {v2}, Lkoy;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 283
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 284
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 285
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v2, "No System TLS"

    invoke-static {v2, v0}, Lknj;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public final a(Lknc;)Lkmi;
    .locals 1
    .param p1, "request"    # Lknc;

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lknb;->a(Lkna;Lknc;Z)Lknb;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lkna$a;
    .locals 1

    .prologue
    .line 425
    new-instance v0, Lkna$a;

    invoke-direct {v0, p0}, Lkna$a;-><init>(Lkna;)V

    return-object v0
.end method
