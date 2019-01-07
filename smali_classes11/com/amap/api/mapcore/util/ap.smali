.class public Lcom/amap/api/mapcore/util/ap;
.super Lcom/amap/api/mapcore/util/ao;
.source "ZoomOutGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ap$b;,
        Lcom/amap/api/mapcore/util/ap$a;
    }
.end annotation


# static fields
.field private static final n:Landroid/graphics/PointF;


# instance fields
.field private final l:Lcom/amap/api/mapcore/util/ap$a;

.field private m:Z

.field private o:Landroid/graphics/PointF;

.field private p:Landroid/graphics/PointF;

.field private q:Landroid/graphics/PointF;

.field private r:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/ap;->n:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/ap$a;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ao;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ap;->q:Landroid/graphics/PointF;

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ap;->r:Landroid/graphics/PointF;

    .line 55
    iput-object p2, p0, Lcom/amap/api/mapcore/util/ap;->l:Lcom/amap/api/mapcore/util/ap$a;

    .line 56
    return-void
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
    invoke-super {p0}, Lcom/amap/api/mapcore/util/ao;->a()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ap;->m:Z

    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ap;->q:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 110
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ap;->r:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 111
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ap;->q:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 112
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ap;->r:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 113
    return-void
.end method

.method protected a(ILandroid/view/MotionEvent;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ap;->a()V

    .line 65
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ap;->c:Landroid/view/MotionEvent;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ap;->g:J

    .line 67
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/ap;->b(Landroid/view/MotionEvent;)V

    .line 70
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/ap;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ap;->m:Z

    .line 71
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ap;->m:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ap;->l:Lcom/amap/api/mapcore/util/ap$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/ap$a;->b(Lcom/amap/api/mapcore/util/ap;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ap;->b:Z

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected b(ILandroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 103
    :goto_0
    :pswitch_0
    return-void

    .line 85
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/ap;->b(Landroid/view/MotionEvent;)V

    .line 88
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ap;->m:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ap;->l:Lcom/amap/api/mapcore/util/ap$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/ap$a;->a(Lcom/amap/api/mapcore/util/ap;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ap;->a()V

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ap;->a()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/amap/api/mapcore/util/ao;->b(Landroid/view/MotionEvent;)V

    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ap;->c:Landroid/view/MotionEvent;

    .line 123
    invoke-static {p1}, Lcom/amap/api/mapcore/util/ap;->c(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ap;->o:Landroid/graphics/PointF;

    .line 124
    invoke-static {v0}, Lcom/amap/api/mapcore/util/ap;->c(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ap;->p:Landroid/graphics/PointF;

    .line 130
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ap;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 132
    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/mapcore/util/ap;->n:Landroid/graphics/PointF;

    :goto_1
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ap;->r:Landroid/graphics/PointF;

    .line 138
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ap;->q:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ap;->r:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 139
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ap;->q:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ap;->r:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 141
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ap;->o:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ap;->p:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ap;->o:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ap;->p:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1
.end method
