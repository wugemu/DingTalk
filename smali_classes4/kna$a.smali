.class public final Lkna$a;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkna;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field A:I

.field a:Lkmq;

.field b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkmn;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkmx;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkmx;",
            ">;"
        }
    .end annotation
.end field

.field g:Lkms$a;

.field h:Ljava/net/ProxySelector;

.field i:Lkmp;

.field j:Lkmg;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:Lkno;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field l:Ljavax/net/SocketFactory;

.field m:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field n:Lkpc;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field o:Ljavax/net/ssl/HostnameVerifier;

.field p:Lkmj;

.field q:Lkmf;

.field r:Lkmf;

.field s:Lkmm;

.field t:Lkmr;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkna$a;->e:Ljava/util/List;

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkna$a;->f:Ljava/util/List;

    .line 458
    new-instance v0, Lkmq;

    invoke-direct {v0}, Lkmq;-><init>()V

    iput-object v0, p0, Lkna$a;->a:Lkmq;

    .line 459
    sget-object v0, Lkna;->a:Ljava/util/List;

    iput-object v0, p0, Lkna$a;->c:Ljava/util/List;

    .line 460
    sget-object v0, Lkna;->b:Ljava/util/List;

    iput-object v0, p0, Lkna$a;->d:Ljava/util/List;

    .line 461
    sget-object v0, Lkms;->NONE:Lkms;

    invoke-static {v0}, Lkms;->factory(Lkms;)Lkms$a;

    move-result-object v0

    iput-object v0, p0, Lkna$a;->g:Lkms$a;

    .line 462
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lkna$a;->h:Ljava/net/ProxySelector;

    .line 463
    sget-object v0, Lkmp;->a:Lkmp;

    iput-object v0, p0, Lkna$a;->i:Lkmp;

    .line 464
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lkna$a;->l:Ljavax/net/SocketFactory;

    .line 465
    sget-object v0, Lkpd;->a:Lkpd;

    iput-object v0, p0, Lkna$a;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 466
    sget-object v0, Lkmj;->a:Lkmj;

    iput-object v0, p0, Lkna$a;->p:Lkmj;

    .line 467
    sget-object v0, Lkmf;->a:Lkmf;

    iput-object v0, p0, Lkna$a;->q:Lkmf;

    .line 468
    sget-object v0, Lkmf;->a:Lkmf;

    iput-object v0, p0, Lkna$a;->r:Lkmf;

    .line 469
    new-instance v0, Lkmm;

    invoke-direct {v0}, Lkmm;-><init>()V

    iput-object v0, p0, Lkna$a;->s:Lkmm;

    .line 470
    sget-object v0, Lkmr;->a:Lkmr;

    iput-object v0, p0, Lkna$a;->t:Lkmr;

    .line 471
    iput-boolean v1, p0, Lkna$a;->u:Z

    .line 472
    iput-boolean v1, p0, Lkna$a;->v:Z

    .line 473
    iput-boolean v1, p0, Lkna$a;->w:Z

    .line 474
    iput v2, p0, Lkna$a;->x:I

    .line 475
    iput v2, p0, Lkna$a;->y:I

    .line 476
    iput v2, p0, Lkna$a;->z:I

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lkna$a;->A:I

    .line 478
    return-void
.end method

.method constructor <init>(Lkna;)V
    .locals 2
    .param p1, "okHttpClient"    # Lkna;

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkna$a;->e:Ljava/util/List;

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkna$a;->f:Ljava/util/List;

    .line 481
    iget-object v0, p1, Lkna;->c:Lkmq;

    iput-object v0, p0, Lkna$a;->a:Lkmq;

    .line 482
    iget-object v0, p1, Lkna;->d:Ljava/net/Proxy;

    iput-object v0, p0, Lkna$a;->b:Ljava/net/Proxy;

    .line 483
    iget-object v0, p1, Lkna;->e:Ljava/util/List;

    iput-object v0, p0, Lkna$a;->c:Ljava/util/List;

    .line 484
    iget-object v0, p1, Lkna;->f:Ljava/util/List;

    iput-object v0, p0, Lkna$a;->d:Ljava/util/List;

    .line 485
    iget-object v0, p0, Lkna$a;->e:Ljava/util/List;

    iget-object v1, p1, Lkna;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 486
    iget-object v0, p0, Lkna$a;->f:Ljava/util/List;

    iget-object v1, p1, Lkna;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 487
    iget-object v0, p1, Lkna;->i:Lkms$a;

    iput-object v0, p0, Lkna$a;->g:Lkms$a;

    .line 488
    iget-object v0, p1, Lkna;->j:Ljava/net/ProxySelector;

    iput-object v0, p0, Lkna$a;->h:Ljava/net/ProxySelector;

    .line 489
    iget-object v0, p1, Lkna;->k:Lkmp;

    iput-object v0, p0, Lkna$a;->i:Lkmp;

    .line 490
    iget-object v0, p1, Lkna;->m:Lkno;

    iput-object v0, p0, Lkna$a;->k:Lkno;

    .line 491
    iget-object v0, p1, Lkna;->l:Lkmg;

    iput-object v0, p0, Lkna$a;->j:Lkmg;

    .line 492
    iget-object v0, p1, Lkna;->n:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lkna$a;->l:Ljavax/net/SocketFactory;

    .line 493
    iget-object v0, p1, Lkna;->o:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lkna$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 494
    iget-object v0, p1, Lkna;->p:Lkpc;

    iput-object v0, p0, Lkna$a;->n:Lkpc;

    .line 495
    iget-object v0, p1, Lkna;->q:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lkna$a;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 496
    iget-object v0, p1, Lkna;->r:Lkmj;

    iput-object v0, p0, Lkna$a;->p:Lkmj;

    .line 497
    iget-object v0, p1, Lkna;->s:Lkmf;

    iput-object v0, p0, Lkna$a;->q:Lkmf;

    .line 498
    iget-object v0, p1, Lkna;->t:Lkmf;

    iput-object v0, p0, Lkna$a;->r:Lkmf;

    .line 499
    iget-object v0, p1, Lkna;->u:Lkmm;

    iput-object v0, p0, Lkna$a;->s:Lkmm;

    .line 500
    iget-object v0, p1, Lkna;->v:Lkmr;

    iput-object v0, p0, Lkna$a;->t:Lkmr;

    .line 501
    iget-boolean v0, p1, Lkna;->w:Z

    iput-boolean v0, p0, Lkna$a;->u:Z

    .line 502
    iget-boolean v0, p1, Lkna;->x:Z

    iput-boolean v0, p0, Lkna$a;->v:Z

    .line 503
    iget-boolean v0, p1, Lkna;->y:Z

    iput-boolean v0, p0, Lkna$a;->w:Z

    .line 504
    iget v0, p1, Lkna;->z:I

    iput v0, p0, Lkna$a;->x:I

    .line 505
    iget v0, p1, Lkna;->A:I

    iput v0, p0, Lkna$a;->y:I

    .line 506
    iget v0, p1, Lkna;->B:I

    iput v0, p0, Lkna$a;->z:I

    .line 507
    iget v0, p1, Lkna;->C:I

    iput v0, p0, Lkna$a;->A:I

    .line 508
    return-void
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)Lkna$a;
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 519
    const-string/jumbo v0, "timeout"

    const-wide/16 v2, 0x5

    invoke-static {v0, v2, v3, p3}, Lknj;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lkna$a;->x:I

    .line 520
    return-object p0
.end method

.method public final a(Lkmr;)Lkna$a;
    .locals 2
    .param p1, "dns"    # Lkmr;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 624
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    iput-object p1, p0, Lkna$a;->t:Lkmr;

    .line 626
    return-object p0
.end method

.method public final a(Lkms;)Lkna$a;
    .locals 1
    .param p1, "eventListener"    # Lkms;

    .prologue
    .line 908
    invoke-static {p1}, Lkms;->factory(Lkms;)Lkms$a;

    move-result-object v0

    iput-object v0, p0, Lkna$a;->g:Lkms$a;

    .line 909
    return-object p0
.end method

.method public final a()Lkna;
    .locals 1

    .prologue
    .line 927
    new-instance v0, Lkna;

    invoke-direct {v0, p0}, Lkna;-><init>(Lkna$a;)V

    return-object v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)Lkna$a;
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 534
    const-string/jumbo v0, "timeout"

    const-wide/16 v2, 0x3c

    invoke-static {v0, v2, v3, p3}, Lknj;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lkna$a;->y:I

    .line 535
    return-object p0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)Lkna$a;
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 548
    const-string/jumbo v0, "timeout"

    const-wide/16 v2, 0x3c

    invoke-static {v0, v2, v3, p3}, Lknj;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lkna$a;->z:I

    .line 549
    return-object p0
.end method
