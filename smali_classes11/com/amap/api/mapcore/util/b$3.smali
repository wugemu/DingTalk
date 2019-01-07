.class Lcom/amap/api/mapcore/util/b$3;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/b;->f(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/MotionEvent;

.field final synthetic b:Lcom/amap/api/mapcore/util/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/b;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 2428
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b$3;->b:Lcom/amap/api/mapcore/util/b;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/b$3;->a:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$3;->b:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->o(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/maps/AMap$OnPOIClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2432
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$3;->b:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->d(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b$3;->a:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b$3;->a:Landroid/view/MotionEvent;

    .line 2433
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x19

    .line 2432
    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/MapCore;->getPoiItem(III)Lcom/amap/api/maps/model/Poi;

    move-result-object v0

    .line 2434
    if-eqz v0, :cond_0

    .line 2435
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b$3;->b:Lcom/amap/api/mapcore/util/b;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/mapcore/util/b$3$1;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/mapcore/util/b$3$1;-><init>(Lcom/amap/api/mapcore/util/b$3;Lcom/amap/api/maps/model/Poi;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2453
    :goto_0
    return-void

    .line 2448
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$3;->b:Lcom/amap/api/mapcore/util/b;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b$3;->a:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/b;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2451
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$3;->b:Lcom/amap/api/mapcore/util/b;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b$3;->a:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/b;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method
