.class public Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;
.super Landroid/view/View;
.source "StickerView.java"

# interfaces
.implements Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;
.implements Lhsv;
.implements Lhsx;
.implements Lhsy;
.implements Lhsz;
.implements Lhtc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;
    }
.end annotation


# static fields
.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I


# instance fields
.field public a:Lhsu;

.field public b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lhsu;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lhsn;",
            "Lhsu;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lhsu;

.field private j:I

.field private k:Landroid/content/Context;

.field private l:I

.field private m:F

.field private n:F

.field private o:I

.field private p:F

.field private q:F

.field private r:Z

.field private s:Lhta;

.field private t:Lhsw;

.field private u:Lhtb;

.field private v:Landroid/graphics/Matrix;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0xa

    sput v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->e:I

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->f:I

    .line 45
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->g:I

    .line 46
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->h:I

    .line 47
    const/4 v0, 0x3

    sput v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->o:I

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->c:Ljava/util/LinkedHashMap;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->r:Z

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->d:Lhsu;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->w:Ljava/util/ArrayList;

    .line 75
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->o:I

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->c:Ljava/util/LinkedHashMap;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->r:Z

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->d:Lhsu;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->w:Ljava/util/ArrayList;

    .line 80
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->o:I

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->c:Ljava/util/LinkedHashMap;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->r:Z

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->d:Lhsu;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->w:Ljava/util/ArrayList;

    .line 85
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method private a(FLhsu;F)V
    .locals 8
    .param p1, "angle"    # F
    .param p2, "item"    # Lhsu;
    .param p3, "nextNormalRectF2scaleRectF"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 330
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 332
    new-array v0, v7, [F

    .line 333
    .local v0, "newCenter":[F
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 334
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, p3, p3, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 335
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    new-array v3, v7, [F

    iget-object v4, p2, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    aput v4, v3, v5

    iget-object v4, p2, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    aput v4, v3, v6

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 337
    aget v2, v0, v5

    iget-object v3, p2, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    aget v3, v0, v6

    iget-object v4, p2, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Lhsu;->a(FF)V

    .line 339
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 340
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    aget v3, v0, v5

    aget v4, v0, v6

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 341
    new-array v1, v7, [F

    .line 342
    .local v1, "res":[F
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    new-array v3, v7, [F

    iget-object v4, p2, Lhsu;->g:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    aput v4, v3, v5

    iget-object v4, p2, Lhsu;->g:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    aput v4, v3, v6

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 345
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 346
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    aget v3, v0, v5

    aget v4, v0, v6

    invoke-virtual {v2, p3, p3, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 347
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->v:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 349
    iget-object v2, p2, Lhsu;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    iget-object v2, p2, Lhsu;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    aget v2, v1, v5

    iget-object v3, p2, Lhsu;->g:Landroid/graphics/RectF;

    .line 350
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    aget v3, v1, v6

    iget-object v4, p2, Lhsu;->g:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 349
    invoke-virtual {p2, v2, v3}, Lhsu;->b(FF)V

    .line 351
    invoke-virtual {p2}, Lhsu;->b()V

    .line 352
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->k:Landroid/content/Context;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->l:I

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    sput v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->e:I

    .line 92
    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "textRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x420c0000    # 35.0f

    .line 248
    new-instance v1, Lhsn;

    invoke-direct {v1}, Lhsn;-><init>()V

    .line 249
    .local v1, "textAction":Lhsn;
    iget v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->o:I

    iput v2, v1, Lhsn;->j:I

    .line 250
    new-instance v0, Lhsu;

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lhsu;-><init>(Landroid/content/Context;Lhsn;)V

    .line 251
    .local v0, "item":Lhsu;
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7117
    if-nez p1, :cond_1

    .line 7118
    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x186

    const/16 v4, 0x82

    invoke-direct {v2, v10, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7119
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 7120
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int v2, v4, v2

    .line 7121
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v3, 0x1

    sub-int/2addr v4, v5

    .line 7122
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    shr-int/lit8 v6, v2, 0x1

    sub-int/2addr v5, v6

    .line 7123
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v4

    int-to-float v8, v5

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-direct {v6, v7, v8, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, v0, Lhsu;->c:Landroid/graphics/RectF;

    .line 7127
    :goto_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lhsu;->n:Landroid/graphics/Matrix;

    .line 7128
    iget-object v2, v0, Lhsu;->n:Landroid/graphics/Matrix;

    iget-object v3, v0, Lhsu;->c:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, v0, Lhsu;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7130
    iget-object v2, v0, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iput v2, v0, Lhsu;->m:F

    .line 7132
    const/4 v2, 0x1

    iput-boolean v2, v0, Lhsu;->p:Z

    .line 7133
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Lhsu;->c:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, v0, Lhsu;->f:Landroid/graphics/RectF;

    .line 7134
    invoke-virtual {v0}, Lhsu;->a()V

    .line 7135
    new-instance v2, Landroid/graphics/Rect;

    sget-object v3, Lhsu;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget-object v4, Lhsu;->k:Landroid/graphics/Bitmap;

    .line 7136
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v10, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lhsu;->b:Landroid/graphics/Rect;

    .line 7138
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Lhsu;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v9

    iget-object v4, v0, Lhsu;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v9

    iget-object v5, v0, Lhsu;->f:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v9

    iget-object v6, v0, Lhsu;->f:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v9

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, v0, Lhsu;->d:Landroid/graphics/RectF;

    .line 7141
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Lhsu;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v9

    iget-object v4, v0, Lhsu;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v9

    iget-object v5, v0, Lhsu;->f:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v9

    iget-object v6, v0, Lhsu;->f:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v9

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, v0, Lhsu;->e:Landroid/graphics/RectF;

    .line 7145
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Lhsu;->e:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, v0, Lhsu;->g:Landroid/graphics/RectF;

    .line 7146
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Lhsu;->d:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, v0, Lhsu;->h:Landroid/graphics/RectF;

    .line 7147
    invoke-virtual {v0}, Lhsu;->b()V

    .line 253
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    iput-boolean v10, v2, Lhsu;->p:Z

    .line 256
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->d:Lhsu;

    .line 257
    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    .line 258
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    iget v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7275
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->s:Lhta;

    invoke-interface {v2, v1}, Lhta;->a(Lhsn;)V

    .line 260
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->invalidate()V

    .line 261
    return-void

    .line 7125
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, v0, Lhsu;->c:Landroid/graphics/RectF;

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(FF)V
    .locals 7
    .param p1, "currentAngle"    # F
    .param p2, "currentNormalRectF2scaleRectF"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;>;"
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 303
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lhsu;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhsu;

    .line 8508
    iget-object v2, v2, Lhsu;->r:Lhsn;

    .line 303
    iput p1, v2, Lhsn;->b:F

    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhsu;

    .line 9508
    iget-object v2, v2, Lhsu;->r:Lhsn;

    .line 304
    iput p2, v2, Lhsn;->a:F

    .line 305
    new-instance v5, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhsu;

    .line 10508
    iget-object v6, v3, Lhsu;->r:Lhsn;

    .line 305
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhsu;

    invoke-direct {v5, v2, v6, v3}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;-><init>(Ljava/lang/Integer;Lhsn;Lhsu;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lhsu;>;"
    :cond_0
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->w:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 309
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 310
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->postInvalidate()V

    .line 311
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 389
    iput p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->o:I

    .line 390
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    .line 11508
    iget-object v0, v0, Lhsu;->r:Lhsn;

    .line 391
    iput p1, v0, Lhsn;->j:I

    .line 392
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->postInvalidate()V

    .line 394
    :cond_0
    return-void
.end method

.method public final a(Lhsn;)V
    .locals 2
    .param p1, "action"    # Lhsn;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsu;

    .line 266
    .local v0, "item":Lhsu;
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->postInvalidate()V

    .line 268
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->setVisibility(I)V

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    const-string/jumbo v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 288
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lhsu;->a:Z

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    invoke-virtual {v1, v0}, Lhsu;->a(Ljava/util/List;)V

    .line 294
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    .line 7508
    iget-object v1, v1, Lhsu;->r:Lhsn;

    .line 294
    iput p2, v1, Lhsn;->j:I

    .line 295
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->postInvalidate()V

    .line 297
    :cond_1
    return-void
.end method

.method public final b(FF)V
    .locals 3
    .param p1, "angle"    # F
    .param p2, "nextNormalRectF2scaleRectF"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 315
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsu;

    .line 316
    .local v0, "item":Lhsu;
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a(FLhsu;F)V

    goto :goto_0

    .line 318
    .end local v0    # "item":Lhsu;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->invalidate()V

    .line 319
    return-void
.end method

.method public final b(Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "rectF"    # Landroid/graphics/RectF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 362
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->w:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->w:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->w:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 364
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 365
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 366
    .local v2, "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lhsu;>;"
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 367
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 368
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;

    .line 369
    .local v0, "data":Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    iget-object v5, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;->a:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;->c:Lhsu;

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->c:Ljava/util/LinkedHashMap;

    iget-object v5, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;->b:Lhsn;

    iget-object v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;->c:Lhsu;

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 372
    .end local v0    # "data":Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 373
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 374
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->postInvalidate()V

    goto :goto_0
.end method

.method public final b(Lhsn;)Z
    .locals 1
    .param p1, "textAction"    # Lhsn;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c(FF)V
    .locals 3
    .param p1, "angle"    # F
    .param p2, "nextNormalRectF2scaleRectF"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 323
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsu;

    .line 324
    .local v0, "item":Lhsu;
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a(FLhsu;F)V

    goto :goto_0

    .line 326
    .end local v0    # "item":Lhsu;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->invalidate()V

    .line 327
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 101
    .local v6, "id":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhsu;

    .line 1263
    .local v7, "item":Lhsu;
    iget-boolean v0, v7, Lhsu;->p:Z

    if-eqz v0, :cond_0

    .line 1264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1265
    iget v0, v7, Lhsu;->o:F

    iget-object v1, v7, Lhsu;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, v7, Lhsu;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1266
    iget-object v0, v7, Lhsu;->f:Landroid/graphics/RectF;

    iget-object v1, v7, Lhsu;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v10, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1268
    sget-object v0, Lhsu;->k:Landroid/graphics/Bitmap;

    iget-object v1, v7, Lhsu;->b:Landroid/graphics/Rect;

    iget-object v2, v7, Lhsu;->d:Landroid/graphics/RectF;

    iget-object v4, v7, Lhsu;->s:Landroid/graphics/RectF;

    invoke-virtual {v7, v2, v4}, Lhsu;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1269
    sget-object v0, Lhsu;->l:Landroid/graphics/Bitmap;

    iget-object v1, v7, Lhsu;->b:Landroid/graphics/Rect;

    iget-object v2, v7, Lhsu;->e:Landroid/graphics/RectF;

    iget-object v4, v7, Lhsu;->t:Landroid/graphics/RectF;

    invoke-virtual {v7, v2, v4}, Lhsu;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1270
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1381
    :cond_0
    iget-object v0, v7, Lhsu;->j:Landroid/graphics/Paint;

    iget-object v1, v7, Lhsu;->r:Lhsn;

    iget v1, v1, Lhsn;->i:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1383
    iget-object v0, v7, Lhsu;->j:Landroid/graphics/Paint;

    iget-object v1, v7, Lhsu;->r:Lhsn;

    iget v1, v1, Lhsn;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1384
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1385
    iget v0, v7, Lhsu;->o:F

    iget-object v1, v7, Lhsu;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, v7, Lhsu;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1386
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    iget-object v0, v7, Lhsu;->r:Lhsn;

    .line 2107
    iget-object v0, v0, Lhsn;->c:Ljava/util/ArrayList;

    .line 1386
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 1387
    iget-object v0, v7, Lhsu;->r:Lhsn;

    .line 2111
    iget-object v0, v0, Lhsn;->d:Ljava/util/ArrayList;

    .line 1387
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, v7, Lhsu;->r:Lhsn;

    .line 3107
    iget-object v0, v0, Lhsn;->c:Ljava/util/ArrayList;

    .line 1387
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    iget-object v5, v7, Lhsu;->j:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 1386
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 1389
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 104
    .end local v6    # "id":Ljava/lang/Integer;
    .end local v7    # "item":Lhsu;
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a(Landroid/graphics/Rect;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    .line 119
    .local v24, "ret":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    .line 120
    .local v18, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 121
    .local v6, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 122
    .local v7, "y":F
    move/from16 v0, v18

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->postInvalidate()V

    .line 230
    const/4 v2, 0x1

    return v2

    .line 124
    :pswitch_0
    move-object/from16 v0, p0

    iput v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->p:F

    .line 125
    move-object/from16 v0, p0

    iput v7, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->q:F

    .line 126
    const/16 v19, -0x1

    .line 127
    .local v19, "deleteId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_1
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 128
    .local v22, "id":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lhsu;

    .line 3469
    .local v23, "item":Lhsu;
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->z:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 3470
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->z:Landroid/graphics/Matrix;

    move-object/from16 v0, v23

    iget v3, v0, Lhsu;->o:F

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->f:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lhsu;->f:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 3471
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->z:Landroid/graphics/Matrix;

    move-object/from16 v0, v23

    iget-object v3, v0, Lhsu;->A:Landroid/graphics/RectF;

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->d:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 3472
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->A:Landroid/graphics/RectF;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    .line 129
    if-eqz v2, :cond_2

    .line 131
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 132
    sget v2, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->h:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->l:I

    goto :goto_1

    .line 3480
    :cond_2
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->z:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 3481
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->z:Landroid/graphics/Matrix;

    move-object/from16 v0, v23

    iget v3, v0, Lhsu;->o:F

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->f:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lhsu;->f:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 3482
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->z:Landroid/graphics/Matrix;

    move-object/from16 v0, v23

    iget-object v3, v0, Lhsu;->A:Landroid/graphics/RectF;

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->e:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 3483
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->A:Landroid/graphics/RectF;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    .line 133
    if-eqz v2, :cond_4

    .line 135
    const/16 v24, 0x1

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-eqz v2, :cond_3

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lhsu;->p:Z

    .line 139
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->d:Lhsu;

    .line 140
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lhsu;->p:Z

    .line 142
    sget v2, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->i:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->l:I

    .line 143
    move-object/from16 v0, p0

    iput v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->m:F

    .line 144
    move-object/from16 v0, p0

    iput v7, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->n:F

    goto/16 :goto_1

    .line 4442
    :cond_4
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->v:[F

    const/4 v3, 0x0

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    aput v4, v2, v3

    .line 4443
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->v:[F

    const/4 v3, 0x1

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    aput v4, v2, v3

    .line 4444
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->w:[F

    const/4 v3, 0x0

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    aput v4, v2, v3

    .line 4445
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->w:[F

    const/4 v3, 0x1

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    aput v4, v2, v3

    .line 4446
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->x:[F

    const/4 v3, 0x0

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    aput v4, v2, v3

    .line 4447
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->x:[F

    const/4 v3, 0x1

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    aput v4, v2, v3

    .line 4448
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->y:[F

    const/4 v3, 0x0

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    aput v4, v2, v3

    .line 4449
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->y:[F

    const/4 v3, 0x1

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    aput v4, v2, v3

    .line 4451
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->u:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 4452
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->u:Landroid/graphics/Matrix;

    move-object/from16 v0, v23

    iget v3, v0, Lhsu;->o:F

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 4453
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->u:Landroid/graphics/Matrix;

    move-object/from16 v0, v23

    iget-object v3, v0, Lhsu;->v:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4454
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->u:Landroid/graphics/Matrix;

    move-object/from16 v0, v23

    iget-object v3, v0, Lhsu;->w:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4455
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->u:Landroid/graphics/Matrix;

    move-object/from16 v0, v23

    iget-object v3, v0, Lhsu;->x:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4456
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->u:Landroid/graphics/Matrix;

    move-object/from16 v0, v23

    iget-object v3, v0, Lhsu;->y:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4458
    move-object/from16 v0, v23

    iget-object v2, v0, Lhsu;->v:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v23

    iget-object v3, v0, Lhsu;->v:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, v23

    iget-object v4, v0, Lhsu;->w:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, v23

    iget-object v5, v0, Lhsu;->w:[F

    const/4 v8, 0x1

    aget v5, v5, v8

    move-object/from16 v0, v23

    iget-object v8, v0, Lhsu;->x:[F

    const/4 v9, 0x0

    aget v10, v8, v9

    move-object/from16 v0, v23

    iget-object v8, v0, Lhsu;->x:[F

    const/4 v9, 0x1

    aget v11, v8, v9

    move-object/from16 v0, v23

    iget-object v8, v0, Lhsu;->y:[F

    const/4 v9, 0x0

    aget v26, v8, v9

    move-object/from16 v0, v23

    iget-object v8, v0, Lhsu;->y:[F

    const/4 v9, 0x1

    aget v27, v8, v9

    .line 5136
    invoke-static/range {v2 .. v7}, Lhss;->a(FFFFFF)D

    move-result-wide v14

    move v8, v2

    move v9, v3

    move v12, v6

    move v13, v7

    invoke-static/range {v8 .. v13}, Lhss;->a(FFFFFF)D

    move-result-wide v8

    add-double/2addr v8, v14

    move/from16 v12, v26

    move/from16 v13, v27

    move v14, v6

    move v15, v7

    .line 5137
    invoke-static/range {v10 .. v15}, Lhss;->a(FFFFFF)D

    move-result-wide v12

    add-double/2addr v8, v12

    move/from16 v12, v26

    move/from16 v13, v27

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-static/range {v12 .. v17}, Lhss;->a(FFFFFF)D

    move-result-wide v12

    add-double/2addr v8, v12

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v10

    move/from16 v17, v11

    .line 5138
    invoke-static/range {v12 .. v17}, Lhss;->a(FFFFFF)D

    move-result-wide v2

    move/from16 v12, v26

    move/from16 v13, v27

    move v14, v4

    move v15, v5

    invoke-static/range {v10 .. v15}, Lhss;->a(FFFFFF)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 5140
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    cmpl-double v4, v4, v10

    if-eqz v4, :cond_5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    cmpl-double v2, v4, v2

    if-nez v2, :cond_7

    :cond_5
    const/4 v2, 0x1

    .line 145
    :goto_2
    if-eqz v2, :cond_1

    .line 148
    const/16 v24, 0x1

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-eqz v2, :cond_6

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lhsu;->p:Z

    .line 152
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->d:Lhsu;

    .line 153
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lhsu;->p:Z

    .line 155
    sget v2, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->g:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->l:I

    .line 156
    move-object/from16 v0, p0

    iput v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->m:F

    .line 157
    move-object/from16 v0, p0

    iput v7, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->n:F

    goto/16 :goto_1

    .line 5140
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 161
    .end local v22    # "id":Ljava/lang/Integer;
    .end local v23    # "item":Lhsu;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-nez v2, :cond_9

    .line 163
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->r:Z

    .line 166
    :cond_9
    if-nez v24, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->l:I

    if-nez v2, :cond_a

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lhsu;->p:Z

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->d:Lhsu;

    .line 170
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->invalidate()V

    .line 174
    :cond_a
    if-lez v19, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->l:I

    sget v3, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->h:I

    if-ne v2, v3, :cond_0

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lhsu;

    .line 176
    .restart local v23    # "item":Lhsu;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->s:Lhta;

    .line 5508
    move-object/from16 v0, v23

    iget-object v3, v0, Lhsu;->r:Lhsn;

    .line 177
    invoke-interface {v2, v3}, Lhta;->b(Lhsn;)V

    .line 178
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->l:I

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->invalidate()V

    goto/16 :goto_0

    .line 186
    .end local v19    # "deleteId":I
    .end local v23    # "item":Lhsu;
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->l:I

    sget v3, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->g:I

    if-ne v2, v3, :cond_e

    .line 188
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->m:F

    sub-float v20, v6, v2

    .line 189
    .local v20, "dx":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->n:F

    sub-float v21, v7, v2

    .line 190
    .local v21, "dy":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-eqz v2, :cond_b

    .line 6240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->u:Lhtb;

    invoke-interface {v2}, Lhtb;->a()Landroid/graphics/RectF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    iget-object v3, v3, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float v3, v3, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    iget-object v4, v4, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    add-float v4, v4, v21

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    .line 190
    :goto_3
    if-nez v2, :cond_0

    .line 191
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-eqz v2, :cond_c

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lhsu;->a(FF)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->invalidate()V

    .line 195
    :cond_c
    move-object/from16 v0, p0

    iput v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->m:F

    .line 196
    move-object/from16 v0, p0

    iput v7, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->n:F

    goto/16 :goto_0

    .line 6240
    :cond_d
    const/4 v2, 0x0

    goto :goto_3

    .line 197
    .end local v20    # "dx":F
    .end local v21    # "dy":F
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->l:I

    sget v3, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->i:I

    if-ne v2, v3, :cond_0

    .line 199
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->m:F

    sub-float v20, v6, v2

    .line 200
    .restart local v20    # "dx":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->n:F

    sub-float v21, v7, v2

    .line 201
    .restart local v21    # "dy":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-eqz v2, :cond_f

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lhsu;->b(FF)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->invalidate()V

    .line 205
    :cond_f
    move-object/from16 v0, p0

    iput v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->m:F

    .line 206
    move-object/from16 v0, p0

    iput v7, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->n:F

    goto/16 :goto_0

    .line 210
    .end local v20    # "dx":F
    .end local v21    # "dy":F
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->p:F

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->e:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->q:F

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->e:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10

    .line 211
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->r:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-nez v2, :cond_11

    .line 213
    new-instance v2, Landroid/graphics/Rect;

    const/high16 v3, 0x43430000    # 195.0f

    sub-float v3, v6, v3

    float-to-int v3, v3

    const/high16 v4, 0x42820000    # 65.0f

    sub-float v4, v7, v4

    float-to-int v4, v4

    const/high16 v5, 0x43430000    # 195.0f

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v8, 0x42820000    # 65.0f

    add-float/2addr v8, v7

    float-to-int v8, v8

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a(Landroid/graphics/Rect;)V

    .line 215
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->r:Z

    .line 226
    :cond_10
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->l:I

    goto/16 :goto_0

    .line 216
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    iget-object v2, v2, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->d:Lhsu;

    if-ne v2, v3, :cond_10

    .line 219
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->t:Lhsw;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    invoke-virtual {v3}, Lhsu;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lhsw;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setmBeginAddTextListener(Lhsw;)V
    .locals 0
    .param p1, "mBeginAddTextListener"    # Lhsw;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->t:Lhsw;

    .line 356
    return-void
.end method

.method public setmCurrentRotateRectQuery(Lhtb;)V
    .locals 0
    .param p1, "mCurrentRotateRectQuery"    # Lhtb;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->u:Lhtb;

    .line 410
    return-void
.end method

.method public setmTextsControlListener(Lhta;)V
    .locals 0
    .param p1, "mTextsControlListener"    # Lhta;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->s:Lhta;

    .line 280
    return-void
.end method
