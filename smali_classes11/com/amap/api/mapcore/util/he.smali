.class public Lcom/amap/api/mapcore/util/he;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/he$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/hf;

.field private b:Lcom/amap/api/mapcore/util/hi;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/hi;)V
    .locals 6

    .prologue
    .line 36
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/he;-><init>(Lcom/amap/api/mapcore/util/hi;JJ)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/hi;JJ)V
    .locals 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amap/api/mapcore/util/he;->b:Lcom/amap/api/mapcore/util/hi;

    .line 49
    iget-object v0, p1, Lcom/amap/api/mapcore/util/hi;->h:Ljava/net/Proxy;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 54
    :goto_0
    new-instance v1, Lcom/amap/api/mapcore/util/hf;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/he;->b:Lcom/amap/api/mapcore/util/hi;

    iget v2, v2, Lcom/amap/api/mapcore/util/hi;->f:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/he;->b:Lcom/amap/api/mapcore/util/hi;

    iget v3, v3, Lcom/amap/api/mapcore/util/hi;->g:I

    invoke-direct {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/hf;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/he;->a:Lcom/amap/api/mapcore/util/hf;

    .line 56
    iget-object v0, p0, Lcom/amap/api/mapcore/util/he;->a:Lcom/amap/api/mapcore/util/hf;

    invoke-virtual {v0, p4, p5}, Lcom/amap/api/mapcore/util/hf;->b(J)V

    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore/util/he;->a:Lcom/amap/api/mapcore/util/hf;

    invoke-virtual {v0, p2, p3}, Lcom/amap/api/mapcore/util/hf;->a(J)V

    .line 59
    return-void

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/amap/api/mapcore/util/hi;->h:Ljava/net/Proxy;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amap/api/mapcore/util/he;->a:Lcom/amap/api/mapcore/util/hf;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hf;->a()V

    .line 79
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/he$a;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amap/api/mapcore/util/he;->a:Lcom/amap/api/mapcore/util/hf;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/he;->b:Lcom/amap/api/mapcore/util/hi;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/hi;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/he;->b:Lcom/amap/api/mapcore/util/hi;

    .line 68
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hi;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/he;->b:Lcom/amap/api/mapcore/util/hi;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/hi;->b()Ljava/util/Map;

    move-result-object v3

    .line 67
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amap/api/mapcore/util/hf;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amap/api/mapcore/util/he$a;)V

    .line 70
    return-void
.end method
