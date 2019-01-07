.class public Lcom/amap/api/mapcore/util/di;
.super Ljava/lang/Object;
.source "GLAnimation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:F

.field private b:Z

.field private c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:J

.field l:J

.field m:J

.field n:I

.field o:I

.field p:I

.field q:Landroid/view/animation/Interpolator;

.field r:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

.field s:Landroid/graphics/RectF;

.field t:Landroid/graphics/RectF;

.field u:Lcom/amap/api/mapcore/util/dn;

.field v:Lcom/amap/api/mapcore/util/dn;

.field private w:Z

.field private x:Landroid/os/Handler;

.field private y:Ljava/lang/Runnable;

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/di;->d:Z

    .line 88
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/di;->e:Z

    .line 94
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/di;->f:Z

    .line 101
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/di;->g:Z

    .line 108
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/di;->h:Z

    .line 114
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/di;->i:Z

    .line 119
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/di;->j:Z

    .line 124
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/di;->k:J

    .line 137
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/di;->m:J

    .line 143
    iput v2, p0, Lcom/amap/api/mapcore/util/di;->n:I

    .line 148
    iput v2, p0, Lcom/amap/api/mapcore/util/di;->o:I

    .line 155
    iput v3, p0, Lcom/amap/api/mapcore/util/di;->p:I

    .line 182
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/di;->a:F

    .line 187
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/di;->b:Z

    .line 189
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/di;->c:Z

    .line 190
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/di;->w:Z

    .line 192
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/di;->s:Landroid/graphics/RectF;

    .line 193
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/di;->t:Landroid/graphics/RectF;

    .line 194
    new-instance v0, Lcom/amap/api/mapcore/util/dn;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dn;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/di;->u:Lcom/amap/api/mapcore/util/dn;

    .line 195
    new-instance v0, Lcom/amap/api/mapcore/util/dn;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dn;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/di;->v:Lcom/amap/api/mapcore/util/dn;

    .line 207
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/di;->j()V

    .line 208
    return-void
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 886
    iget-object v0, p0, Lcom/amap/api/mapcore/util/di;->r:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/amap/api/mapcore/util/di;->x:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/amap/api/mapcore/util/di;->r:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/animation/Animation$AnimationListener;->onAnimationStart()V

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/di;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/di;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private n()V
    .locals 0

    .prologue
    .line 901
    return-void
.end method

.method private o()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 904
    iget-object v0, p0, Lcom/amap/api/mapcore/util/di;->r:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/amap/api/mapcore/util/di;->x:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/amap/api/mapcore/util/di;->r:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/animation/Animation$AnimationListener;->onAnimationEnd()V

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/di;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/di;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/util/di;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/di;

    .line 213
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/di;->s:Landroid/graphics/RectF;

    .line 214
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/di;->t:Landroid/graphics/RectF;

    .line 215
    new-instance v1, Lcom/amap/api/mapcore/util/dn;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/dn;-><init>()V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/di;->u:Lcom/amap/api/mapcore/util/dn;

    .line 216
    new-instance v1, Lcom/amap/api/mapcore/util/dn;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/dn;-><init>()V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/di;->v:Lcom/amap/api/mapcore/util/dn;

    .line 217
    return-object v0
.end method

.method protected a(FLcom/amap/api/mapcore/util/dn;)V
    .locals 0

    .prologue
    .line 954
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 380
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 385
    :cond_0
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/di;->m:J

    .line 386
    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/amap/api/mapcore/util/di;->q:Landroid/view/animation/Interpolator;

    .line 352
    return-void
.end method

.method public a(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/amap/api/mapcore/util/di;->r:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    .line 779
    return-void
.end method

.method public a(JLcom/amap/api/mapcore/util/dn;)Z
    .locals 7

    .prologue
    .line 815
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/di;->k:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 816
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/di;->k:J

    .line 819
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/di;->g()J

    move-result-wide v0

    .line 820
    iget-wide v2, p0, Lcom/amap/api/mapcore/util/di;->m:J

    .line 822
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_8

    .line 823
    iget-wide v4, p0, Lcom/amap/api/mapcore/util/di;->k:J

    add-long/2addr v0, v4

    sub-long v0, p1, v0

    long-to-float v0, v0

    long-to-float v1, v2

    div-float v1, v0, v1

    .line 830
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    move v2, v0

    .line 831
    :goto_1
    if-nez v2, :cond_b

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->c:Z

    .line 833
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->j:Z

    if-nez v0, :cond_11

    .line 834
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 836
    :goto_3
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/di;->h:Z

    if-eqz v1, :cond_6

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/di;->i:Z

    if-eqz v1, :cond_6

    .line 838
    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/di;->e:Z

    if-nez v1, :cond_3

    .line 839
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/di;->m()V

    .line 840
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/di;->e:Z

    .line 843
    :cond_3
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/di;->j:Z

    if-eqz v1, :cond_4

    .line 844
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 846
    :cond_4
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/di;->f:Z

    if-eqz v1, :cond_5

    .line 847
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 850
    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/di;->q:Landroid/view/animation/Interpolator;

    .line 851
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 852
    invoke-virtual {p0, v0, p3}, Lcom/amap/api/mapcore/util/di;->a(FLcom/amap/api/mapcore/util/dn;)V

    .line 855
    :cond_6
    if-eqz v2, :cond_7

    .line 856
    iget v0, p0, Lcom/amap/api/mapcore/util/di;->n:I

    iget v1, p0, Lcom/amap/api/mapcore/util/di;->o:I

    if-ne v0, v1, :cond_c

    .line 857
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->d:Z

    if-nez v0, :cond_7

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->d:Z

    .line 859
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/di;->o()V

    .line 877
    :cond_7
    :goto_4
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->c:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->w:Z

    if-eqz v0, :cond_10

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->w:Z

    .line 879
    const/4 v0, 0x1

    .line 882
    :goto_5
    return v0

    .line 827
    :cond_8
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/di;->k:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    const/4 v1, 0x0

    goto :goto_0

    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 830
    :cond_a
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1

    .line 831
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 862
    :cond_c
    iget v0, p0, Lcom/amap/api/mapcore/util/di;->n:I

    if-lez v0, :cond_d

    .line 863
    iget v0, p0, Lcom/amap/api/mapcore/util/di;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/di;->o:I

    .line 866
    :cond_d
    iget v0, p0, Lcom/amap/api/mapcore/util/di;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 867
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->f:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->f:Z

    .line 870
    :cond_e
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/di;->k:J

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->c:Z

    .line 873
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/di;->n()V

    goto :goto_4

    .line 867
    :cond_f
    const/4 v0, 0x0

    goto :goto_6

    .line 882
    :cond_10
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->c:Z

    goto :goto_5

    :cond_11
    move v0, v1

    goto/16 :goto_3
.end method

.method public a(JLcom/amap/api/mapcore/util/dn;F)Z
    .locals 1

    .prologue
    .line 914
    iput p4, p0, Lcom/amap/api/mapcore/util/di;->a:F

    .line 915
    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/di;->a(JLcom/amap/api/mapcore/util/dn;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->d:Z

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/di;->o()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->d:Z

    .line 253
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/di;->k:J

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->w:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->c:Z

    .line 255
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 454
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/di;->k:J

    .line 455
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->e:Z

    .line 456
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->f:Z

    .line 457
    iput v0, p0, Lcom/amap/api/mapcore/util/di;->o:I

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->c:Z

    .line 459
    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 466
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/di;->b(J)V

    .line 467
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/di;->a()Lcom/amap/api/mapcore/util/di;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 474
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/di;->b(J)V

    .line 475
    return-void
.end method

.method protected e()F
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/amap/api/mapcore/util/di;->a:F

    return v0
.end method

.method public f()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 652
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/di;->m:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 662
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/di;->l:J

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 764
    const/4 v0, 0x1

    return v0
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/amap/api/mapcore/util/di;->q:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/di;->q:Landroid/view/animation/Interpolator;

    .line 789
    :cond_0
    return-void
.end method

.method protected k()Z
    .locals 1

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->e:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/di;->d:Z

    return v0
.end method
