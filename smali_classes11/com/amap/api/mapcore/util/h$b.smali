.class Lcom/amap/api/mapcore/util/h$b;
.super Ljava/lang/Object;
.source "GLMapGestureDetector.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/ak$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/h;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/h;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h$b;-><init>(Lcom/amap/api/mapcore/util/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore/util/ak;)Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v8, -0x3ee00000    # -10.0f

    const/4 v1, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v0, 0x1

    .line 683
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->m()Lcom/amap/api/mapcore/util/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/o;->isTiltGesturesEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 733
    :cond_0
    :goto_0
    return v0

    .line 687
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/h;->c(Lcom/amap/api/mapcore/util/h;)I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    move v0, v1

    .line 688
    goto :goto_0

    .line 690
    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ak;->c()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 691
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ak;->c()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 693
    iget-object v4, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/h;->i(Lcom/amap/api/mapcore/util/h;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 694
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/amap/api/mapcore/util/ak;->a(I)Landroid/graphics/PointF;

    move-result-object v4

    .line 695
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/amap/api/mapcore/util/ak;->a(I)Landroid/graphics/PointF;

    move-result-object v5

    .line 698
    iget v6, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    iget v6, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    :cond_3
    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_5

    iget v4, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_5

    :cond_4
    move v1, v0

    .line 702
    :cond_5
    if-eqz v1, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-lez v1, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v7

    if-gez v1, :cond_6

    .line 704
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;Z)Z

    .line 710
    :cond_6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/h;->i(Lcom/amap/api/mapcore/util/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;Z)Z

    .line 714
    const/high16 v1, 0x40c00000    # 6.0f

    div-float v1, v3, v1

    .line 719
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 720
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v3, Lcom/amap/api/mapcore/util/as;

    const/16 v4, 0x65

    invoke-direct {v3, v4, v1}, Lcom/amap/api/mapcore/util/as;-><init>(IF)V

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 722
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/h;->k(Lcom/amap/api/mapcore/util/h;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 727
    :catch_0
    move-exception v1

    .line 728
    const-string/jumbo v2, "GLMapGestrureDetector"

    const-string/jumbo v3, "onHove"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public b(Lcom/amap/api/mapcore/util/ak;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->m()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isTiltGesturesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    :goto_0
    return v4

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v1, Lcom/amap/api/mapcore/util/as;

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    .line 742
    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->getCameraAngle()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore/util/as;-><init>(IF)V

    .line 741
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    const-string/jumbo v1, "GLMapGestrureDetector"

    const-string/jumbo v2, "onHoveBegin"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Lcom/amap/api/mapcore/util/ak;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->m()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isTiltGesturesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;Z)Z

    .line 761
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v1, Lcom/amap/api/mapcore/util/as;

    const/16 v2, 0x66

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    .line 762
    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->getCameraAngle()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore/util/as;-><init>(IF)V

    .line 761
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 763
    :catch_0
    move-exception v0

    .line 764
    const-string/jumbo v1, "GLMapGestrureDetector"

    const-string/jumbo v2, "onHoveEnd"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
