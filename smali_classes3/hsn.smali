.class public final Lhsn;
.super Ljava/lang/Object;
.source "TextAction.java"

# interfaces
.implements Lhsi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhsn$a;
    }
.end annotation


# static fields
.field private static t:Landroid/graphics/Matrix;


# instance fields
.field public a:F

.field public b:F

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhsn$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:I

.field public k:F

.field l:[F

.field m:[F

.field n:[F

.field o:Landroid/graphics/Path;

.field private p:F

.field private q:Landroid/graphics/Paint;

.field private r:F

.field private s:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lhsn;->t:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v3, p0, Lhsn;->a:F

    .line 17
    iput v2, p0, Lhsn;->b:F

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhsn;->c:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhsn;->d:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhsn;->e:Ljava/util/ArrayList;

    .line 26
    iput v2, p0, Lhsn;->f:F

    .line 30
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lhsn;->i:F

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lhsn;->j:I

    .line 34
    iput v3, p0, Lhsn;->k:F

    .line 36
    new-array v0, v1, [F

    iput-object v0, p0, Lhsn;->l:[F

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lhsn;->m:[F

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lhsn;->n:[F

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lhsn;->o:Landroid/graphics/Path;

    .line 91
    return-void
.end method


# virtual methods
.method public final a(FFFF)V
    .locals 7
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 115
    iget-object v6, p0, Lhsn;->e:Ljava/util/ArrayList;

    new-instance v0, Lhsn$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lhsn$a;-><init>(Lhsn;FFFF)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 43
    iget-object v0, p0, Lhsn;->q:Landroid/graphics/Paint;

    iget v1, p0, Lhsn;->i:F

    iget v2, p0, Lhsn;->k:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    iget-object v0, p0, Lhsn;->q:Landroid/graphics/Paint;

    iget v1, p0, Lhsn;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    sget-object v0, Lhsn;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 46
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lhsn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 47
    iget-object v0, p0, Lhsn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhsn$a;

    .line 48
    .local v7, "line":Lhsn$a;
    sget-object v0, Lhsn;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 49
    sget-object v0, Lhsn;->t:Landroid/graphics/Matrix;

    iget v1, p0, Lhsn;->k:F

    iget v2, p0, Lhsn;->k:F

    iget v4, p0, Lhsn;->r:F

    iget v5, p0, Lhsn;->s:F

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 50
    sget-object v0, Lhsn;->t:Landroid/graphics/Matrix;

    iget v1, p0, Lhsn;->p:F

    iget v2, p0, Lhsn;->r:F

    iget v4, p0, Lhsn;->s:F

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 51
    iget-object v0, p0, Lhsn;->l:[F

    iget v1, v7, Lhsn$a;->a:F

    aput v1, v0, v8

    .line 52
    iget-object v0, p0, Lhsn;->l:[F

    iget v1, v7, Lhsn$a;->b:F

    aput v1, v0, v9

    .line 53
    iget-object v0, p0, Lhsn;->m:[F

    iget v1, v7, Lhsn$a;->c:F

    aput v1, v0, v8

    .line 54
    iget-object v0, p0, Lhsn;->m:[F

    iget v1, v7, Lhsn$a;->d:F

    aput v1, v0, v9

    .line 55
    iget-object v0, p0, Lhsn;->n:[F

    iget v1, p0, Lhsn;->g:F

    aput v1, v0, v8

    .line 56
    iget-object v0, p0, Lhsn;->n:[F

    iget v1, p0, Lhsn;->h:F

    aput v1, v0, v9

    .line 57
    sget-object v0, Lhsn;->t:Landroid/graphics/Matrix;

    iget-object v1, p0, Lhsn;->l:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 58
    sget-object v0, Lhsn;->t:Landroid/graphics/Matrix;

    iget-object v1, p0, Lhsn;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 59
    sget-object v0, Lhsn;->t:Landroid/graphics/Matrix;

    iget-object v1, p0, Lhsn;->n:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 61
    sget-object v0, Lhsn;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 62
    sget-object v0, Lhsn;->t:Landroid/graphics/Matrix;

    iget v1, p0, Lhsn;->f:F

    iget-object v2, p0, Lhsn;->n:[F

    aget v2, v2, v8

    iget-object v4, p0, Lhsn;->n:[F

    aget v4, v4, v9

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 63
    sget-object v0, Lhsn;->t:Landroid/graphics/Matrix;

    iget-object v1, p0, Lhsn;->l:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 64
    sget-object v0, Lhsn;->t:Landroid/graphics/Matrix;

    iget-object v1, p0, Lhsn;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 65
    iget-object v0, p0, Lhsn;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 66
    iget-object v0, p0, Lhsn;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lhsn;->l:[F

    aget v1, v1, v8

    iget-object v2, p0, Lhsn;->l:[F

    aget v2, v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 67
    iget-object v0, p0, Lhsn;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lhsn;->m:[F

    aget v1, v1, v8

    iget-object v2, p0, Lhsn;->m:[F

    aget v2, v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 68
    iget-object v0, p0, Lhsn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lhsn;->o:Landroid/graphics/Path;

    iget-object v5, p0, Lhsn;->q:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 46
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 70
    .end local v7    # "line":Lhsn$a;
    :cond_0
    return-void
.end method

.method public final varargs a([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 74
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lhsn;->p:F

    .line 75
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lhsn;->r:F

    .line 76
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lhsn;->s:F

    .line 77
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/Paint;

    iput-object v0, p0, Lhsn;->q:Landroid/graphics/Paint;

    .line 78
    const/4 v0, 0x4

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lhsn;->k:F

    .line 79
    return-void
.end method

.method public final varargs b([Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 84
    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 89
    return-void
.end method
