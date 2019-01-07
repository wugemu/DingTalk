.class Lcom/amap/api/mapcore/util/dg$b;
.super Lcom/amap/api/mapcore/util/dw;
.source "TileOverlayDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/dw",
        "<",
        "Lcom/amap/api/mapcore/util/l;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/amap/api/mapcore/util/dg$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/dg;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/dg;Z)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dg$b;->a:Lcom/amap/api/mapcore/util/dg;

    .line 576
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dw;-><init>()V

    .line 577
    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/dg$b;->f:Z

    .line 578
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 570
    check-cast p1, [Lcom/amap/api/mapcore/util/l;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/dg$b;->a([Lcom/amap/api/mapcore/util/l;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Lcom/amap/api/mapcore/util/l;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/amap/api/mapcore/util/l;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/dg$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 584
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getMapWidth()I

    move-result v1

    .line 585
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->getMapHeight()I

    move-result v2

    .line 586
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->o()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/amap/api/mapcore/util/dg$b;->e:I

    .line 587
    if-lez v1, :cond_0

    if-gtz v2, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-object v0

    .line 589
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/dg$b;->a:Lcom/amap/api/mapcore/util/dg;

    iget v4, p0, Lcom/amap/api/mapcore/util/dg$b;->e:I

    invoke-static {v3, v4, v1, v2}, Lcom/amap/api/mapcore/util/dg;->a(Lcom/amap/api/mapcore/util/dg;III)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v1

    .line 591
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 570
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/dg$b;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/dg$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 598
    if-nez p1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 603
    if-lez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dg$b;->a:Lcom/amap/api/mapcore/util/dg;

    iget v1, p0, Lcom/amap/api/mapcore/util/dg$b;->e:I

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/dg$b;->f:Z

    invoke-static {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/dg;->a(Lcom/amap/api/mapcore/util/dg;Ljava/util/List;IZ)Z

    .line 607
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
