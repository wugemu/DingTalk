.class public final Lkfe;
.super Ljava/lang/Object;
.source "PtrIndicator.java"


# instance fields
.field protected a:I

.field public b:Landroid/graphics/PointF;

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:Z

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lkfe;->a:I

    .line 9
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lkfe;->b:Landroid/graphics/PointF;

    .line 12
    iput v1, p0, Lkfe;->e:I

    .line 13
    iput v1, p0, Lkfe;->f:I

    .line 15
    iput v1, p0, Lkfe;->h:I

    .line 17
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lkfe;->i:F

    .line 18
    const v0, 0x3fd9999a    # 1.7f

    iput v0, p0, Lkfe;->j:F

    .line 19
    iput-boolean v1, p0, Lkfe;->k:Z

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lkfe;->l:I

    .line 22
    iput v1, p0, Lkfe;->m:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lkfe;->a:I

    return v0
.end method

.method public final a(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 53
    iput p1, p0, Lkfe;->i:F

    .line 54
    iget v0, p0, Lkfe;->g:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lkfe;->a:I

    .line 55
    return-void
.end method

.method public final a(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 77
    iget-object v2, p0, Lkfe;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v2

    .line 78
    .local v0, "offsetX":F
    iget-object v2, p0, Lkfe;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v2

    .line 1049
    .local v1, "offsetY":F
    iget v2, p0, Lkfe;->j:F

    div-float v2, v1, v2

    .line 1084
    iput v0, p0, Lkfe;->c:F

    .line 1085
    iput v2, p0, Lkfe;->d:F

    .line 80
    iget-object v2, p0, Lkfe;->b:Landroid/graphics/PointF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 81
    return-void
.end method

.method public final a(I)V
    .locals 2
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 66
    iget v0, p0, Lkfe;->g:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lkfe;->i:F

    .line 67
    iput p1, p0, Lkfe;->a:I

    .line 68
    return-void
.end method

.method public final b(I)V
    .locals 2
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    iput p1, p0, Lkfe;->g:I

    .line 1127
    iget v0, p0, Lkfe;->i:F

    iget v1, p0, Lkfe;->g:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lkfe;->a:I

    .line 124
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lkfe;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 153
    iget v0, p0, Lkfe;->e:I

    iget v1, p0, Lkfe;->h:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lkfe;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 169
    iget v0, p0, Lkfe;->e:I

    invoke-virtual {p0}, Lkfe;->f()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lkfe;->l:I

    if-ltz v0, :cond_0

    iget v0, p0, Lkfe;->l:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lkfe;->g:I

    goto :goto_0
.end method

.method public final g()F
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 190
    iget v1, p0, Lkfe;->g:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 191
    .local v0, "currentPercent":F
    :goto_0
    return v0

    .line 190
    .end local v0    # "currentPercent":F
    :cond_0
    iget v1, p0, Lkfe;->e:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lkfe;->g:I

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method
