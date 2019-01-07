.class public abstract Lcom/amap/api/mapcore/util/x;
.super Ljava/lang/Object;
.source "ADGLAnimationParam.java"


# instance fields
.field protected a:I

.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x;->e:Z

    .line 138
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x;->f:Z

    .line 140
    iput v1, p0, Lcom/amap/api/mapcore/util/x;->a:I

    .line 141
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/x;->b:F

    .line 143
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x;->e:Z

    .line 144
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x;->f:Z

    .line 146
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x;->g:Z

    .line 147
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x;->h:Z

    .line 148
    return-void
.end method

.method static a(F)F
    .locals 2

    .prologue
    .line 18
    mul-float v0, p0, p0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x;->e:Z

    .line 23
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x;->f:Z

    .line 25
    iput v1, p0, Lcom/amap/api/mapcore/util/x;->a:I

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/x;->b:F

    .line 28
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x;->e:Z

    .line 29
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x;->f:Z

    .line 31
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x;->g:Z

    .line 32
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x;->h:Z

    .line 33
    return-void
.end method

.method public a(IF)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/amap/api/mapcore/util/x;->a:I

    .line 127
    iput p2, p0, Lcom/amap/api/mapcore/util/x;->b:F

    .line 128
    return-void
.end method

.method public b(F)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 52
    iput p1, p0, Lcom/amap/api/mapcore/util/x;->c:F

    .line 55
    iget v1, p0, Lcom/amap/api/mapcore/util/x;->a:I

    packed-switch v1, :pswitch_data_0

    move p1, v0

    .line 122
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/amap/api/mapcore/util/x;->d:F

    .line 123
    return-void

    .line 58
    :pswitch_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 61
    mul-float/2addr p1, v2

    goto :goto_0

    .line 62
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 63
    mul-float v0, v2, p1

    sub-float p1, v5, v0

    goto :goto_0

    .line 64
    :cond_2
    const/high16 v1, 0x3f400000    # 0.75f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    .line 65
    mul-float v0, v2, p1

    sub-float p1, v0, v5

    goto :goto_0

    .line 66
    :cond_3
    cmpg-float v1, p1, v3

    if-gtz v1, :cond_4

    .line 67
    mul-float v0, v2, p1

    sub-float p1, v2, v0

    goto :goto_0

    :cond_4
    move p1, v0

    .line 71
    goto :goto_0

    .line 78
    :pswitch_2
    float-to-double v0, p1

    iget v2, p0, Lcom/amap/api/mapcore/util/x;->b:F

    mul-float/2addr v2, v5

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 79
    goto :goto_0

    .line 85
    :pswitch_3
    iget v0, p0, Lcom/amap/api/mapcore/util/x;->b:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    .line 86
    sub-float v0, v3, p1

    sub-float v1, v3, p1

    mul-float/2addr v0, v1

    sub-float p1, v3, v0

    goto :goto_0

    .line 89
    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-float v2, v3, p1

    float-to-double v2, v2

    iget v4, p0, Lcom/amap/api/mapcore/util/x;->b:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float p1, v0

    .line 93
    goto :goto_0

    .line 96
    :pswitch_4
    add-float v0, p1, v3

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-float p1, v0

    .line 97
    goto/16 :goto_0

    .line 100
    :pswitch_5
    const v0, 0x3f8fb15b    # 1.1226f

    mul-float/2addr v0, p1

    .line 101
    const v1, 0x3eb4fdf4    # 0.3535f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    .line 102
    invoke-static {v0}, Lcom/amap/api/mapcore/util/x;->a(F)F

    move-result p1

    goto/16 :goto_0

    .line 103
    :cond_6
    const v1, 0x3f3da512    # 0.7408f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    .line 104
    const v1, 0x3f0c14a5

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/amap/api/mapcore/util/x;->a(F)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    add-float p1, v0, v1

    goto/16 :goto_0

    .line 105
    :cond_7
    const v1, 0x3f76e2eb    # 0.9644f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    .line 106
    const v1, 0x3f5a43fe    # 0.8526f

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/amap/api/mapcore/util/x;->a(F)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    add-float p1, v0, v1

    goto/16 :goto_0

    .line 108
    :cond_8
    const v1, 0x3f859168    # 1.0435f

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/amap/api/mapcore/util/x;->a(F)F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    add-float p1, v0, v1

    .line 109
    goto/16 :goto_0

    .line 113
    :pswitch_6
    sub-float v0, p1, v3

    .line 114
    mul-float v1, v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    mul-float/2addr v0, v1

    add-float p1, v0, v3

    goto/16 :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/x;->e:Z

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/x;->d()V

    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/x;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/x;->f:Z

    if-eqz v0, :cond_1

    .line 41
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/amap/api/mapcore/util/x;->d:F

    return v0
.end method

.method public abstract d()V
.end method
