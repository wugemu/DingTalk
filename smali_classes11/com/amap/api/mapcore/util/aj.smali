.class public abstract Lcom/amap/api/mapcore/util/aj;
.super Ljava/lang/Object;
.source "BaseGestureDetector.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Z

.field protected c:Landroid/view/MotionEvent;

.field protected d:Landroid/view/MotionEvent;

.field protected e:F

.field protected f:F

.field protected g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amap/api/mapcore/util/aj;->a:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static c(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 161
    const/4 v0, 0x0

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v2, v4

    .line 163
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v1, v4

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v4, v3

    div-float/2addr v2, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->c:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 109
    iput-object v1, p0, Lcom/amap/api/mapcore/util/aj;->c:Landroid/view/MotionEvent;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 113
    iput-object v1, p0, Lcom/amap/api/mapcore/util/aj;->d:Landroid/view/MotionEvent;

    .line 115
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/aj;->b:Z

    .line 116
    return-void
.end method

.method protected abstract a(ILandroid/view/MotionEvent;)V
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 45
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/aj;->b:Z

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore/util/aj;->a(ILandroid/view/MotionEvent;)V

    .line 50
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore/util/aj;->b(ILandroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public b()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/aj;->g:J

    return-wide v0
.end method

.method protected abstract b(ILandroid/view/MotionEvent;)V
.end method

.method protected b(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 76
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->c:Landroid/view/MotionEvent;

    .line 79
    iget-object v1, p0, Lcom/amap/api/mapcore/util/aj;->d:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/amap/api/mapcore/util/aj;->d:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore/util/aj;->d:Landroid/view/MotionEvent;

    .line 85
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/aj;->d:Landroid/view/MotionEvent;

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/aj;->g:J

    .line 97
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/aj;->e:F

    .line 99
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/aj;->f:F

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/aj;->e:F

    .line 102
    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/aj;->f:F

    goto :goto_0
.end method
