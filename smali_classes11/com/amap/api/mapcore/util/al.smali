.class public Lcom/amap/api/mapcore/util/al;
.super Lcom/amap/api/mapcore/util/aj;
.source "MoveGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/al$a;
    }
.end annotation


# static fields
.field private static final h:Landroid/graphics/PointF;


# instance fields
.field private final i:Lcom/amap/api/mapcore/util/al$a;

.field private j:Landroid/graphics/PointF;

.field private k:Landroid/graphics/PointF;

.field private l:Landroid/graphics/PointF;

.field private m:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/al;->h:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/al$a;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/aj;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/al;->l:Landroid/graphics/PointF;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/al;->m:Landroid/graphics/PointF;

    .line 58
    iput-object p2, p0, Lcom/amap/api/mapcore/util/al;->i:Lcom/amap/api/mapcore/util/al$a;

    .line 59
    return-void
.end method


# virtual methods
.method protected a(ILandroid/view/MotionEvent;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 92
    :goto_0
    :pswitch_0
    return-void

    .line 65
    :pswitch_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/al;->a()V

    .line 66
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/al;->c:Landroid/view/MotionEvent;

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/al;->g:J

    .line 68
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/al;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->c:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 79
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/al;->c:Landroid/view/MotionEvent;

    .line 80
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/al;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->i:Lcom/amap/api/mapcore/util/al$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/al$a;->b(Lcom/amap/api/mapcore/util/al;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/al;->b:Z

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected b(ILandroid/view/MotionEvent;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->i:Lcom/amap/api/mapcore/util/al$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/al$a;->c(Lcom/amap/api/mapcore/util/al;)V

    .line 100
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/al;->a()V

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/al;->b(Landroid/view/MotionEvent;)V

    .line 112
    iget v0, p0, Lcom/amap/api/mapcore/util/al;->e:F

    iget v1, p0, Lcom/amap/api/mapcore/util/al;->f:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->i:Lcom/amap/api/mapcore/util/al$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/al$a;->a(Lcom/amap/api/mapcore/util/al;)Z

    move-result v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 116
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/al;->c:Landroid/view/MotionEvent;

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-super {p0, p1}, Lcom/amap/api/mapcore/util/aj;->b(Landroid/view/MotionEvent;)V

    .line 130
    iget-object v1, p0, Lcom/amap/api/mapcore/util/al;->c:Landroid/view/MotionEvent;

    .line 133
    invoke-static {p1}, Lcom/amap/api/mapcore/util/al;->c(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/al;->j:Landroid/graphics/PointF;

    .line 134
    invoke-static {v1}, Lcom/amap/api/mapcore/util/al;->c(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/al;->k:Landroid/graphics/PointF;

    .line 138
    iget-object v1, p0, Lcom/amap/api/mapcore/util/al;->c:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :cond_0
    move v1, v0

    .line 140
    :goto_0
    if-eqz v1, :cond_3

    sget-object v0, Lcom/amap/api/mapcore/util/al;->h:Landroid/graphics/PointF;

    :goto_1
    iput-object v0, p0, Lcom/amap/api/mapcore/util/al;->m:Landroid/graphics/PointF;

    .line 144
    if-eqz v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 146
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/al;->c:Landroid/view/MotionEvent;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->l:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/al;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 152
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->l:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/al;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 153
    return-void

    .line 139
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 140
    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/al;->j:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/amap/api/mapcore/util/al;->k:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/amap/api/mapcore/util/al;->j:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/amap/api/mapcore/util/al;->k:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1
.end method

.method public c()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->m:Landroid/graphics/PointF;

    return-object v0
.end method
