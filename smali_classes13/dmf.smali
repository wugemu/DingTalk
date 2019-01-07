.class public final Ldmf;
.super Ljava/lang/Object;
.source "BitmapRender.java"


# instance fields
.field public a:Ldmo;

.field public b:Landroid/graphics/Point;

.field public c:F

.field public d:F

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Bitmap;

.field public g:J

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public final a(ILandroid/graphics/Paint;Landroid/graphics/Bitmap;J)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "startOffset"    # J

    .prologue
    const/high16 v7, 0x41c80000    # 25.0f

    .line 54
    new-instance v3, Ldmo;

    invoke-direct {v3}, Ldmo;-><init>()V

    .line 55
    .local v3, "random":Ldmo;
    invoke-static {p1}, Ldmo;->a(I)I

    move-result v4

    .line 56
    .local v4, "x":I
    const/4 v5, 0x0

    .line 57
    .local v5, "y":I
    if-eqz p3, :cond_0

    .line 58
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    neg-int v5, v6

    .line 60
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 61
    .local v2, "position":Landroid/graphics/Point;
    invoke-static {v7}, Ldmo;->a(F)F

    move-result v6

    div-float/2addr v6, v7

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v7

    const v7, 0x3fc90fdb

    add-float/2addr v6, v7

    const v7, 0x3d4ccccd    # 0.05f

    sub-float v0, v6, v7

    .line 62
    .local v0, "angle":F
    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v3, v6, v7}, Ldmo;->a(FF)F

    move-result v1

    .line 64
    .local v1, "increment":F
    iput-object v3, p0, Ldmf;->a:Ldmo;

    .line 65
    iput-object v2, p0, Ldmf;->b:Landroid/graphics/Point;

    .line 66
    iput v0, p0, Ldmf;->c:F

    .line 67
    iput v1, p0, Ldmf;->d:F

    .line 68
    iput-object p3, p0, Ldmf;->f:Landroid/graphics/Bitmap;

    .line 69
    iput-object p2, p0, Ldmf;->e:Landroid/graphics/Paint;

    .line 70
    iput-wide p4, p0, Ldmf;->g:J

    .line 71
    iput v4, p0, Ldmf;->h:I

    .line 72
    iput v5, p0, Ldmf;->i:I

    .line 74
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    iput-object p1, p0, Ldmf;->f:Landroid/graphics/Bitmap;

    .line 78
    iget-object v0, p0, Ldmf;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldmf;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Ldmf;->i:I

    .line 80
    iget-object v0, p0, Ldmf;->b:Landroid/graphics/Point;

    iget v1, p0, Ldmf;->i:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 82
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ldmf;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldmf;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
