.class public Lcom/amap/api/mapcore/util/de;
.super Ljava/lang/Object;
.source "PopupOverlay.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cq;
.implements Lcom/amap/api/mapcore/util/ct;
.implements Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Landroid/graphics/Bitmap;

.field private C:Z

.field private D:Lcom/amap/api/mapcore/util/di;

.field private E:Lcom/amap/api/mapcore/util/di;

.field private F:Z

.field private G:Z

.field a:Lcom/amap/api/mapcore/util/l;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

.field private d:Lcom/amap/api/mapcore/util/cr;

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/autonavi/amap/mapcore/FPoint;

.field private k:Ljava/nio/FloatBuffer;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/nio/FloatBuffer;

.field private o:F

.field private p:F

.field private q:Z

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Rect;

.field private u:F

.field private v:F

.field private w:I

.field private x:Z

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/l;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/de;->e:Z

    .line 46
    iput v1, p0, Lcom/amap/api/mapcore/util/de;->f:I

    iput v1, p0, Lcom/amap/api/mapcore/util/de;->g:I

    .line 48
    iput v1, p0, Lcom/amap/api/mapcore/util/de;->h:I

    iput v1, p0, Lcom/amap/api/mapcore/util/de;->i:I

    .line 51
    iput-object v2, p0, Lcom/amap/api/mapcore/util/de;->k:Ljava/nio/FloatBuffer;

    .line 54
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/de;->m:Z

    .line 58
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/mapcore/util/de;->o:F

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/de;->p:F

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    .line 67
    iput v4, p0, Lcom/amap/api/mapcore/util/de;->u:F

    .line 68
    iput v4, p0, Lcom/amap/api/mapcore/util/de;->v:F

    .line 78
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/de;->x:Z

    .line 80
    iput-object v2, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    .line 81
    iput-object v2, p0, Lcom/amap/api/mapcore/util/de;->z:Landroid/graphics/Bitmap;

    .line 82
    iput-object v2, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    .line 83
    iput-object v2, p0, Lcom/amap/api/mapcore/util/de;->B:Landroid/graphics/Bitmap;

    .line 146
    iput-object v2, p0, Lcom/amap/api/mapcore/util/de;->a:Lcom/amap/api/mapcore/util/l;

    .line 318
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/de;->C:Z

    .line 820
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/de;->F:Z

    .line 822
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/de;->G:Z

    .line 156
    iput-object p2, p0, Lcom/amap/api/mapcore/util/de;->b:Landroid/content/Context;

    .line 157
    iput-object p1, p0, Lcom/amap/api/mapcore/util/de;->a:Lcom/amap/api/mapcore/util/l;

    .line 159
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/de;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->l:Ljava/lang/String;

    .line 160
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 884
    if-nez p1, :cond_0

    .line 885
    const/4 v0, 0x0

    .line 900
    :goto_0
    return-object v0

    .line 887
    :cond_0
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 888
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 889
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 890
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object p1, v0

    .line 894
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 895
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 896
    invoke-static {p1}, Lcom/amap/api/mapcore/util/en;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/de;)Lcom/amap/api/mapcore/util/di;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->D:Lcom/amap/api/mapcore/util/di;

    return-object v0
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x1406

    const/16 v5, 0xbe2

    const/16 v4, 0xde1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 413
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p2, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 423
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 424
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 426
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 427
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 428
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 429
    invoke-interface {p1, v4, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 431
    const/4 v0, 0x3

    invoke-interface {p1, v0, v6, v3, p3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 432
    const/4 v0, 0x2

    invoke-interface {p1, v0, v6, v3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 433
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-interface {p1, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 435
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 436
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 437
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 438
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/de;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/de;->F:Z

    return p1
.end method

.method private b(Ljavax/microedition/khronos/opengles/GL10;)I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 608
    new-array v0, v2, [I

    aput v1, v0, v1

    .line 609
    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 610
    aget v0, v0, v1

    .line 613
    return v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/de;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/de;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 659
    if-eqz p1, :cond_0

    .line 660
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/de;->b(Landroid/graphics/Bitmap;)V

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/de;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private declared-synchronized c(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 679
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->E:Lcom/amap/api/mapcore/util/di;

    if-eqz v0, :cond_0

    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->G:Z

    .line 681
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/de;->F:Z

    .line 682
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->E:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->d()V

    .line 683
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->E:Lcom/amap/api/mapcore/util/di;

    new-instance v1, Lcom/amap/api/mapcore/util/de$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/de$1;-><init>(Lcom/amap/api/mapcore/util/de;Z)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/di;->a(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    .line 710
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->D:Lcom/amap/api/mapcore/util/di;

    if-eqz v0, :cond_1

    .line 702
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/de;->F:Z

    .line 703
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->D:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->d()V

    .line 707
    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/de;->b(Z)V

    goto :goto_0
.end method

.method private d(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->z:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->c(Landroid/graphics/Bitmap;)V

    .line 110
    iput-object p1, p0, Lcom/amap/api/mapcore/util/de;->z:Landroid/graphics/Bitmap;

    .line 112
    :cond_0
    return-void
.end method

.method private e(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 115
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->c(Landroid/graphics/Bitmap;)V

    .line 117
    iput-object p1, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    .line 119
    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 122
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->B:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->c(Landroid/graphics/Bitmap;)V

    .line 124
    iput-object p1, p0, Lcom/amap/api/mapcore/util/de;->B:Landroid/graphics/Bitmap;

    .line 126
    :cond_0
    return-void
.end method

.method private g(Landroid/graphics/Bitmap;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 270
    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->z:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->B:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 282
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private k()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 504
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->G:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->E:Lcom/amap/api/mapcore/util/di;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->E:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/de;->F:Z

    .line 507
    new-instance v0, Lcom/amap/api/mapcore/util/dn;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dn;-><init>()V

    .line 508
    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->E:Lcom/amap/api/mapcore/util/di;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/di;->a(JLcom/amap/api/mapcore/util/dn;)Z

    .line 511
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->e:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->e:D

    double-to-float v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/util/de;->u:F

    .line 513
    iget-wide v0, v0, Lcom/amap/api/mapcore/util/dn;->f:D

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/de;->v:F

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->D:Lcom/amap/api/mapcore/util/di;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->D:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 521
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/de;->G:Z

    .line 522
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/de;->F:Z

    .line 523
    iget v0, p0, Lcom/amap/api/mapcore/util/de;->h:I

    iput v0, p0, Lcom/amap/api/mapcore/util/de;->f:I

    .line 524
    iget v0, p0, Lcom/amap/api/mapcore/util/de;->i:I

    iput v0, p0, Lcom/amap/api/mapcore/util/de;->g:I

    .line 526
    new-instance v0, Lcom/amap/api/mapcore/util/dn;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dn;-><init>()V

    .line 527
    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->D:Lcom/amap/api/mapcore/util/di;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/di;->a(JLcom/amap/api/mapcore/util/dn;)Z

    .line 530
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->e:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->e:D

    double-to-float v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/util/de;->u:F

    .line 532
    iget-wide v0, v0, Lcom/amap/api/mapcore/util/dn;->f:D

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/de;->v:F

    goto :goto_0

    .line 540
    :cond_2
    iput v1, p0, Lcom/amap/api/mapcore/util/de;->u:F

    .line 541
    iput v1, p0, Lcom/amap/api/mapcore/util/de;->v:F

    .line 542
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/de;->F:Z

    goto :goto_0
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 714
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 715
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/de;->c(Z)V

    .line 719
    :goto_0
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/de;->a(Z)V

    .line 720
    return-void

    .line 717
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/de;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 725
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 726
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/de;->c(Z)V

    .line 730
    :goto_0
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/de;->a(Z)V

    .line 731
    return-void

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/de;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 765
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    .line 768
    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 771
    iput-object v1, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 777
    iput-object v1, p0, Lcom/amap/api/mapcore/util/de;->s:Landroid/graphics/Bitmap;

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 783
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 784
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 786
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 787
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 789
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->B:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 790
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 792
    :cond_5
    return-void
.end method

.method private p()V
    .locals 0

    .prologue
    .line 814
    return-void
.end method

.method private q()Landroid/graphics/Rect;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 914
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 916
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->s()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private r()Landroid/graphics/Rect;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 926
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 928
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->t()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private s()I
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    :cond_0
    const/4 v0, 0x0

    .line 936
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private t()I
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    :cond_0
    const/4 v0, 0x0

    .line 943
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->F:Z

    if-eqz v0, :cond_0

    .line 622
    iput p1, p0, Lcom/amap/api/mapcore/util/de;->h:I

    .line 623
    iput p2, p0, Lcom/amap/api/mapcore/util/de;->i:I

    .line 631
    :goto_0
    return-void

    .line 625
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/util/de;->f:I

    .line 626
    iput p2, p0, Lcom/amap/api/mapcore/util/de;->g:I

    .line 628
    iput p1, p0, Lcom/amap/api/mapcore/util/de;->h:I

    .line 629
    iput p2, p0, Lcom/amap/api/mapcore/util/de;->i:I

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 95
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->c(Landroid/graphics/Bitmap;)V

    .line 97
    iput-object p1, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    .line 99
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore/util/cr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 832
    monitor-enter p0

    if-nez p1, :cond_1

    .line 875
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 835
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cr;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cr;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cr;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 841
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/de;->d()V

    .line 846
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_0

    .line 847
    iput-object p1, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    .line 848
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore/util/cr;->a(Z)V

    .line 850
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/de;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    new-instance v1, Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    invoke-direct {v1, v2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/de;->a(Landroid/graphics/Bitmap;)V

    .line 859
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    new-instance v1, Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    invoke-direct {v1, v2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    .line 860
    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getInfoWindowClick(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    .line 859
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->d(Landroid/graphics/Bitmap;)V

    .line 862
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    new-instance v1, Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    invoke-direct {v1, v2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    .line 863
    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getOverturnInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    .line 862
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->e(Landroid/graphics/Bitmap;)V

    .line 865
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    new-instance v1, Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    invoke-direct {v1, v2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    .line 866
    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getOverturnInfoWindowClick(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    .line 865
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->f(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    :try_start_2
    const-string/jumbo v1, "PopupOverlay"

    const-string/jumbo v2, "getInfoWindow"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/amap/api/mapcore/util/de;->c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    .line 1074
    return-void
.end method

.method public a(Lcom/autonavi/amap/mapcore/FPoint;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lcom/amap/api/mapcore/util/de;->j:Lcom/autonavi/amap/mapcore/FPoint;

    .line 811
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 807
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapProjection;II)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 446
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->j:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 462
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->C:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 464
    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/de;->w:I

    if-eqz v0, :cond_3

    .line 465
    const/4 v0, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/amap/api/mapcore/util/de;->w:I

    aput v4, v2, v3

    const/4 v3, 0x0

    invoke-interface {p1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 469
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    iget v0, p0, Lcom/amap/api/mapcore/util/de;->w:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/amap/api/mapcore/util/en;->b(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;Z)I

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->C:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->l()V

    .line 489
    invoke-virtual {p0, p2, p3, p4}, Lcom/amap/api/mapcore/util/de;->a(Lcom/autonavi/amap/mapcore/MapProjection;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 491
    invoke-interface {p1, v7, v7, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 492
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 493
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 494
    int-to-float v2, p3

    int-to-float v4, p4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p1

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 495
    iget v0, p0, Lcom/amap/api/mapcore/util/de;->w:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->k:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->n:Ljava/nio/FloatBuffer;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/de;->a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 496
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->q:Z

    if-eqz v0, :cond_0

    .line 497
    iput-boolean v7, p0, Lcom/amap/api/mapcore/util/de;->q:Z

    .line 498
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->p()V

    goto :goto_0

    .line 467
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/de;->b(Ljavax/microedition/khronos/opengles/GL10;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/de;->w:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 477
    :catch_0
    move-exception v0

    .line 481
    const-string/jumbo v1, "PopupOverlay"

    const-string/jumbo v2, "drawMarker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/de;->x:Z

    .line 92
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1051
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/de;->m:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    if-nez v1, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return v0

    .line 1054
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/autonavi/amap/mapcore/MapProjection;II)Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v11, 0x8

    const/4 v1, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 326
    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->j:Lcom/autonavi/amap/mapcore/FPoint;

    if-nez v2, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 333
    iget-object v3, p0, Lcom/amap/api/mapcore/util/de;->j:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v4, p0, Lcom/amap/api/mapcore/util/de;->j:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v3, v4, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 334
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/de;->g()I

    move-result v3

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/de;->h()I

    move-result v4

    .line 337
    iget v5, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, p0, Lcom/amap/api/mapcore/util/de;->f:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Lcom/amap/api/mapcore/util/de;->o:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 338
    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, p0, Lcom/amap/api/mapcore/util/de;->g:I

    add-int/2addr v2, v6

    int-to-float v2, v2

    int-to-float v6, v4

    iget v7, p0, Lcom/amap/api/mapcore/util/de;->p:F

    sub-float v7, v8, v7

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 342
    sub-int v6, v5, v3

    if-gt v6, p2, :cond_0

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    if-lt v5, v3, :cond_0

    neg-int v3, v4

    mul-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_0

    sub-int v3, v2, v4

    if-gt v3, p3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 356
    iget-object v3, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 357
    iget-object v4, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 359
    iget-object v6, p0, Lcom/amap/api/mapcore/util/de;->n:Ljava/nio/FloatBuffer;

    if-nez v6, :cond_2

    .line 360
    new-array v6, v11, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Lcom/amap/api/mapcore/util/en;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/amap/api/mapcore/util/de;->n:Ljava/nio/FloatBuffer;

    .line 365
    :cond_2
    iget v6, p0, Lcom/amap/api/mapcore/util/de;->u:F

    sub-float v6, v8, v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    int-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 367
    const/16 v7, 0xc

    new-array v7, v7, [F

    .line 368
    add-int v8, v5, v6

    int-to-float v8, v8

    aput v8, v7, v0

    .line 369
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    add-int v8, v5, v6

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 370
    sub-int v0, p3, v2

    int-to-float v0, v0

    aput v0, v7, v1

    .line 371
    const/4 v0, 0x2

    aput v10, v7, v0

    .line 373
    const/4 v0, 0x3

    add-int v8, v5, v3

    sub-int/2addr v8, v6

    int-to-float v8, v8

    aput v8, v7, v0

    .line 374
    const/4 v0, 0x4

    sub-int v8, p3, v2

    int-to-float v8, v8

    aput v8, v7, v0

    .line 375
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    sub-int v8, v2, v4

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 376
    const/4 v0, 0x5

    aput v10, v7, v0

    .line 378
    const/4 v0, 0x6

    add-int v8, v5, v3

    sub-int/2addr v8, v6

    int-to-float v8, v8

    aput v8, v7, v0

    .line 379
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    add-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 380
    const/4 v0, 0x7

    sub-int v3, p3, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v7, v0

    .line 381
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->t:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 382
    aput v10, v7, v11

    .line 384
    const/16 v0, 0x9

    add-int v3, v5, v6

    int-to-float v3, v3

    aput v3, v7, v0

    .line 385
    const/16 v0, 0xa

    sub-int v2, p3, v2

    add-int/2addr v2, v4

    int-to-float v2, v2

    aput v2, v7, v0

    .line 386
    const/16 v0, 0xb

    aput v10, v7, v0

    .line 387
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->k:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_3

    .line 388
    invoke-static {v7}, Lcom/amap/api/mapcore/util/en;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->k:Ljava/nio/FloatBuffer;

    :goto_1
    move v0, v1

    .line 402
    goto/16 :goto_0

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->k:Ljava/nio/FloatBuffer;

    invoke-static {v7, v0}, Lcom/amap/api/mapcore/util/en;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->k:Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 360
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public declared-synchronized b(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 224
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->z:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->B:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->s:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->c(Landroid/graphics/Bitmap;)V

    .line 236
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->s:Landroid/graphics/Bitmap;

    .line 250
    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->C:Z

    .line 251
    iput-object p1, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->s:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/de;->c(Landroid/graphics/Bitmap;)V

    .line 243
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->s:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 1062
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/de;->setVisible(Z)V

    .line 1063
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    monitor-exit p0

    return-void

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->e:Z

    if-eqz v0, :cond_2

    .line 739
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/de;->remove()V

    .line 740
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->o()V

    .line 743
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->n:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->n:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->n:Ljava/nio/FloatBuffer;

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->k:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->k:Ljava/nio/FloatBuffer;

    .line 751
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->j:Lcom/autonavi/amap/mapcore/FPoint;

    .line 752
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/de;->w:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :cond_2
    :goto_0
    return-void

    .line 753
    :catch_0
    move-exception v0

    .line 754
    const-string/jumbo v1, "PopupOverlay"

    const-string/jumbo v2, "realDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public e()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 959
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 960
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/de;->setVisible(Z)V

    .line 1047
    :cond_1
    :goto_0
    return-void

    .line 966
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/de;->setVisible(Z)V

    .line 972
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->h()Landroid/graphics/Rect;

    move-result-object v1

    .line 974
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->e()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    .line 975
    invoke-interface {v2}, Lcom/amap/api/mapcore/util/cr;->c()I

    move-result v2

    add-int/2addr v2, v0

    .line 976
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->f()I

    move-result v0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    .line 977
    invoke-interface {v3}, Lcom/amap/api/mapcore/util/cr;->d()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    .line 981
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/de;->i()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/de;->y:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/mapcore/util/de;->A:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 982
    :cond_3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    .line 983
    invoke-interface {v3}, Lcom/amap/api/mapcore/util/cr;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v3

    .line 984
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowEnable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 985
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/de;->setVisible(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 988
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/amap/api/mapcore/util/de;->setVisible(Z)V

    .line 990
    if-eqz v3, :cond_8

    .line 991
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowAutoOverturn()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 994
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->q()Landroid/graphics/Rect;

    move-result-object v4

    .line 995
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->r()Landroid/graphics/Rect;

    move-result-object v5

    .line 998
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/de;->f()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1000
    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 1001
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    .line 1000
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1009
    :goto_1
    iget-object v6, p0, Lcom/amap/api/mapcore/util/de;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v6, v3, v4}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I

    move-result v4

    .line 1010
    iget-object v6, p0, Lcom/amap/api/mapcore/util/de;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v6, v3, v5}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I

    move-result v3

    .line 1018
    if-lez v4, :cond_7

    if-eqz v3, :cond_5

    if-lez v3, :cond_7

    if-ge v4, v3, :cond_7

    .line 1021
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->f()I

    move-result v0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    .line 1022
    invoke-interface {v3}, Lcom/amap/api/mapcore/util/cr;->d()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    .line 1024
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    .line 1025
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    .line 1027
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->m()V

    .line 1032
    :goto_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    .line 1033
    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cr;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    .line 1032
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/de;->a(Lcom/autonavi/amap/mapcore/FPoint;)V

    .line 1034
    invoke-virtual {p0, v2, v0}, Lcom/amap/api/mapcore/util/de;->a(II)V

    goto/16 :goto_0

    .line 1004
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 1005
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    neg-int v7, v7

    .line 1004
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 1030
    :cond_7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->n()V

    goto :goto_2

    .line 1036
    :cond_8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/de;->d:Lcom/amap/api/mapcore/util/cr;

    .line 1037
    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cr;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    .line 1036
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/de;->a(Lcom/autonavi/amap/mapcore/FPoint;)V

    .line 1038
    invoke-virtual {p0, v2, v0}, Lcom/amap/api/mapcore/util/de;->a(II)V

    .line 1039
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/de;->n()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/de;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    :cond_0
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->x:Z

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 175
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 203
    const-string/jumbo v0, "PopupOverlay"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->l:Ljava/lang/String;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 188
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCodeRemote()I
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->F:Z

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    .prologue
    .line 1078
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->m:Z

    return v0
.end method

.method public remove()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 655
    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    .prologue
    .line 1084
    return-void
.end method

.method public setInfoWindowAnimation(Lcom/amap/api/maps/model/animation/Animation;Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method public setInfoWindowAppearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 555
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->E:Lcom/amap/api/mapcore/util/di;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->E:Lcom/amap/api/mapcore/util/di;

    iget-object v1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    :try_start_0
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->a()Lcom/amap/api/mapcore/util/di;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->D:Lcom/amap/api/mapcore/util/di;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 560
    const-string/jumbo v1, "PopupOverlay"

    const-string/jumbo v2, "setInfoWindowDisappearAnimation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_0
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->D:Lcom/amap/api/mapcore/util/di;

    goto :goto_0
.end method

.method public setInfoWindowBackColor(I)V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method public setInfoWindowBackEnable(Z)V
    .locals 0

    .prologue
    .line 575
    return-void
.end method

.method public setInfoWindowBackScale(FF)V
    .locals 0

    .prologue
    .line 580
    return-void
.end method

.method public setInfoWindowDisappearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 585
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->D:Lcom/amap/api/mapcore/util/di;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/de;->D:Lcom/amap/api/mapcore/util/di;

    iget-object v1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    :try_start_0
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->a()Lcom/amap/api/mapcore/util/di;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->E:Lcom/amap/api/mapcore/util/di;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 590
    const-string/jumbo v1, "PopupOverlay"

    const-string/jumbo v2, "setInfoWindowDisappearAnimation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_0
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/de;->E:Lcom/amap/api/mapcore/util/di;

    goto :goto_0
.end method

.method public setInfoWindowMovingAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->m:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/de;->q:Z

    .line 295
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/de;->m:Z

    .line 296
    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public startAnimation()V
    .locals 0

    .prologue
    .line 605
    return-void
.end method
