.class Lcom/autonavi/amap/mapcore/MapCore$1;
.super Ljava/lang/Object;
.source "MapCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amap/mapcore/MapCore;->startMapSlidAnim(Lcom/autonavi/amap/mapcore/IPoint;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/amap/mapcore/MapCore;

.field final synthetic val$touchPoint:Lcom/autonavi/amap/mapcore/IPoint;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/autonavi/amap/mapcore/MapCore;Lcom/autonavi/amap/mapcore/IPoint;FF)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapCore$1;->this$0:Lcom/autonavi/amap/mapcore/MapCore;

    iput-object p2, p0, Lcom/autonavi/amap/mapcore/MapCore$1;->val$touchPoint:Lcom/autonavi/amap/mapcore/IPoint;

    iput p3, p0, Lcom/autonavi/amap/mapcore/MapCore$1;->val$x:F

    iput p4, p0, Lcom/autonavi/amap/mapcore/MapCore$1;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const v0, -0x39c48000    # -12000.0f

    const v1, 0x463b8000    # 12000.0f

    .line 360
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore$1;->this$0:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapCore;->clearAnimations()V

    .line 361
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore$1;->val$touchPoint:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v2, :cond_0

    .line 394
    :goto_0
    return-void

    .line 364
    :cond_0
    new-instance v7, Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore$1;->this$0:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-direct {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 365
    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 368
    iget v2, p0, Lcom/autonavi/amap/mapcore/MapCore$1;->val$x:F

    .line 369
    iget v3, p0, Lcom/autonavi/amap/mapcore/MapCore$1;->val$y:F

    .line 370
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 371
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 373
    cmpl-float v4, v5, v6

    if-lez v4, :cond_2

    move v4, v5

    .line 374
    :goto_1
    cmpl-float v4, v4, v1

    if-lez v4, :cond_5

    .line 375
    cmpl-float v4, v5, v6

    if-lez v4, :cond_3

    .line 376
    cmpl-float v2, v2, v8

    if-lez v2, :cond_1

    move v0, v1

    .line 378
    :cond_1
    div-float/2addr v1, v5

    mul-float/2addr v1, v3

    .line 386
    :goto_2
    new-instance v2, Lcom/amap/api/mapcore/util/aa;

    const/16 v3, 0x1f4

    iget-object v4, p0, Lcom/autonavi/amap/mapcore/MapCore$1;->this$0:Lcom/autonavi/amap/mapcore/MapCore;

    .line 387
    invoke-static {v4}, Lcom/autonavi/amap/mapcore/MapCore;->access$000(Lcom/autonavi/amap/mapcore/MapCore;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/autonavi/amap/mapcore/MapCore$1;->this$0:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-static {v5}, Lcom/autonavi/amap/mapcore/MapCore;->access$100(Lcom/autonavi/amap/mapcore/MapCore;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/aa;-><init>(III)V

    .line 388
    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore/util/aa;->a(FF)V

    .line 390
    invoke-virtual {v2, v7}, Lcom/amap/api/mapcore/util/aa;->a(Ljava/lang/Object;)V

    .line 391
    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    .line 393
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore$1;->this$0:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapCore;->access$200(Lcom/autonavi/amap/mapcore/MapCore;)Lcom/amap/api/mapcore/util/ab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/ab;->a(Lcom/autonavi/amap/mapcore/ADGLAnimation;)V

    goto :goto_0

    :cond_2
    move v4, v6

    .line 373
    goto :goto_1

    .line 380
    :cond_3
    div-float v4, v1, v6

    mul-float/2addr v2, v4

    .line 381
    cmpl-float v3, v3, v8

    if-lez v3, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v0

    move v0, v2

    goto :goto_2

    :cond_5
    move v1, v3

    move v0, v2

    goto :goto_2
.end method
