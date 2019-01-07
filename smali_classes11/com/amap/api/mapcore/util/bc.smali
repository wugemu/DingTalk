.class public Lcom/amap/api/mapcore/util/bc;
.super Lcom/amap/api/mapcore/util/hr;
.source "OfflineMapDownloadTask.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/br$a;


# instance fields
.field private a:Lcom/amap/api/mapcore/util/br;

.field private b:Lcom/amap/api/mapcore/util/bt;

.field private c:Lcom/amap/api/mapcore/util/bv;

.field private e:Landroid/content/Context;

.field private f:Landroid/os/Bundle;

.field private g:Lcom/amap/api/maps/AMap;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/bv;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/hr;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bc;->f:Landroid/os/Bundle;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/bc;->h:Z

    .line 40
    iput-object p1, p0, Lcom/amap/api/mapcore/util/bc;->c:Lcom/amap/api/mapcore/util/bv;

    .line 41
    iput-object p2, p0, Lcom/amap/api/mapcore/util/bc;->e:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/bv;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/bc;-><init>(Lcom/amap/api/mapcore/util/bv;Landroid/content/Context;)V

    .line 48
    iput-object p3, p0, Lcom/amap/api/mapcore/util/bc;->g:Lcom/amap/api/maps/AMap;

    .line 49
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/en;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->c:Lcom/amap/api/mapcore/util/bv;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bv;->A()Ljava/lang/String;

    move-result-object v5

    .line 119
    new-instance v0, Lcom/amap/api/mapcore/util/bs;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bc;->c:Lcom/amap/api/mapcore/util/bv;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/bv;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bc;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/bc;->c:Lcom/amap/api/mapcore/util/bv;

    .line 120
    invoke-interface {v3}, Lcom/amap/api/mapcore/util/bv;->z()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/bs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    new-instance v1, Lcom/amap/api/mapcore/util/br;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bc;->c:Lcom/amap/api/mapcore/util/bv;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/bv;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/bc;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/bc;->c:Lcom/amap/api/mapcore/util/bv;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/amap/api/mapcore/util/br;-><init>(Lcom/amap/api/mapcore/util/bs;Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/mapcore/util/bw;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/bc;->a:Lcom/amap/api/mapcore/util/br;

    .line 126
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->a:Lcom/amap/api/mapcore/util/br;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/br;->a(Lcom/amap/api/mapcore/util/br$a;)V

    .line 128
    new-instance v0, Lcom/amap/api/mapcore/util/bt;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bc;->c:Lcom/amap/api/mapcore/util/bv;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bc;->c:Lcom/amap/api/mapcore/util/bv;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/bt;-><init>(Lcom/amap/api/mapcore/util/bq;Lcom/amap/api/mapcore/util/bp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/bt;

    .line 130
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/bc;->h:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->a:Lcom/amap/api/mapcore/util/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/br;->a()V

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->c:Lcom/amap/api/mapcore/util/bv;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bv;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->c:Lcom/amap/api/mapcore/util/bv;

    sget-object v1, Lcom/amap/api/mapcore/util/bw$a;->c:Lcom/amap/api/mapcore/util/bw$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/bv;->a(Lcom/amap/api/mapcore/util/bw$a;)V

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bc;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/bc;->h:Z

    .line 86
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->a:Lcom/amap/api/mapcore/util/br;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->a:Lcom/amap/api/mapcore/util/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/br;->c()V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/bt;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/bt;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bt;->a()V

    .line 99
    :cond_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bc;->e()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 140
    iput-object v1, p0, Lcom/amap/api/mapcore/util/bc;->g:Lcom/amap/api/maps/AMap;

    .line 141
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 143
    iput-object v1, p0, Lcom/amap/api/mapcore/util/bc;->f:Landroid/os/Bundle;

    .line 145
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/bt;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/bt;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bt;->b()V

    .line 157
    :cond_0
    return-void
.end method
