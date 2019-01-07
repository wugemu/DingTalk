.class public Lcom/amap/api/mapcore/util/r;
.super Ljava/lang/Object;
.source "MaskLayer.java"


# instance fields
.field public a:Ljava/nio/FloatBuffer;

.field public b:Ljava/nio/ShortBuffer;

.field c:[F

.field d:[S

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Lcom/amap/api/mapcore/util/dh;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/amap/api/mapcore/util/r;->e:F

    .line 25
    iput v0, p0, Lcom/amap/api/mapcore/util/r;->f:F

    .line 26
    iput v0, p0, Lcom/amap/api/mapcore/util/r;->g:F

    .line 27
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->h:F

    .line 32
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->c:[F

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->d:[S

    .line 47
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->d:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 48
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/nio/ShortBuffer;

    .line 50
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->d:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->c:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 56
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->a:Ljava/nio/FloatBuffer;

    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->a:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->c:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 59
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    return-void

    .line 32
    .line 39
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x0s
        0x3s
        0x2s
    .end array-data
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    new-instance v0, Lcom/amap/api/mapcore/util/dn;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dn;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/amap/api/mapcore/util/dh;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/amap/api/mapcore/util/dh;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/dh;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/amap/api/mapcore/util/dh;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/dh;->a(JLcom/amap/api/mapcore/util/dn;)Z

    .line 95
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-wide v0, v0, Lcom/amap/api/mapcore/util/dn;->c:D

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->h:F

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 102
    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->e:F

    .line 103
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->f:F

    .line 104
    int-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->g:F

    .line 105
    int-to-float v0, p4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->h:F

    .line 106
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/dh;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/amap/api/mapcore/util/dh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/amap/api/mapcore/util/dh;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dh;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/amap/api/mapcore/util/dh;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dh;->b()V

    .line 112
    :cond_0
    if-nez p1, :cond_1

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/amap/api/mapcore/util/dh;

    .line 116
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/amap/api/mapcore/util/dh;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dh;->c()V

    goto :goto_0
.end method

.method protected a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v5, 0x8074

    const/16 v4, 0xbe2

    const/high16 v2, 0x40000000    # 2.0f

    .line 71
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 73
    int-to-float v0, p2

    div-float/2addr v0, v2

    int-to-float v1, p3

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 74
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 75
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 76
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 78
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 79
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 80
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/r;->a()V

    .line 81
    iget v0, p0, Lcom/amap/api/mapcore/util/r;->e:F

    iget v1, p0, Lcom/amap/api/mapcore/util/r;->f:F

    iget v2, p0, Lcom/amap/api/mapcore/util/r;->g:F

    iget v3, p0, Lcom/amap/api/mapcore/util/r;->h:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 82
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/r;->a:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 83
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->d:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 84
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 85
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 86
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 87
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 89
    return-void
.end method
