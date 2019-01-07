.class public final Lhsu;
.super Ljava/lang/Object;
.source "StickerItem.java"


# static fields
.field public static k:Landroid/graphics/Bitmap;

.field public static l:Landroid/graphics/Bitmap;


# instance fields
.field public A:Landroid/graphics/RectF;

.field private B:Landroid/graphics/Paint;

.field private C:Landroid/graphics/Paint;

.field private D:F

.field private E:F

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private H:Landroid/graphics/Matrix;

.field public a:Z

.field public b:Landroid/graphics/Rect;

.field public c:Landroid/graphics/RectF;

.field public d:Landroid/graphics/RectF;

.field public e:Landroid/graphics/RectF;

.field public f:Landroid/graphics/RectF;

.field public g:Landroid/graphics/RectF;

.field public h:Landroid/graphics/RectF;

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Paint;

.field public m:F

.field public n:Landroid/graphics/Matrix;

.field public o:F

.field public p:Z

.field q:Landroid/graphics/Path;

.field public r:Lhsn;

.field public s:Landroid/graphics/RectF;

.field public t:Landroid/graphics/RectF;

.field public u:Landroid/graphics/Matrix;

.field public v:[F

.field public w:[F

.field public x:[F

.field public y:[F

.field public z:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhsn;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textAction"    # Lhsn;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhsu;->a:Z

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lhsu;->B:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lhsu;->i:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lhsu;->C:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lhsu;->j:Landroid/graphics/Paint;

    .line 66
    iput v3, p0, Lhsu;->o:F

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhsu;->p:Z

    .line 69
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lhsu;->q:Landroid/graphics/Path;

    .line 71
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lhsu;->D:F

    .line 73
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lhsu;->E:F

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhsu;->F:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhsu;->G:Ljava/util/ArrayList;

    .line 288
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lhsu;->H:Landroid/graphics/Matrix;

    .line 290
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lhsu;->s:Landroid/graphics/RectF;

    .line 291
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lhsu;->t:Landroid/graphics/RectF;

    .line 436
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lhsu;->u:Landroid/graphics/Matrix;

    .line 437
    new-array v0, v2, [F

    iput-object v0, p0, Lhsu;->v:[F

    .line 438
    new-array v0, v2, [F

    iput-object v0, p0, Lhsu;->w:[F

    .line 439
    new-array v0, v2, [F

    iput-object v0, p0, Lhsu;->x:[F

    .line 440
    new-array v0, v2, [F

    iput-object v0, p0, Lhsu;->y:[F

    .line 462
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lhsu;->z:Landroid/graphics/Matrix;

    .line 463
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lhsu;->A:Landroid/graphics/RectF;

    .line 82
    iput-object p2, p0, Lhsu;->r:Lhsn;

    .line 83
    iget-object v0, p0, Lhsu;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lhsu;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lhsu;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v0, p0, Lhsu;->i:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object v0, p0, Lhsu;->i:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lhsu;->B:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lhsu;->B:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lhsu;->B:Landroid/graphics/Paint;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lhsu;->C:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lhsu;->C:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lhsu;->C:Landroid/graphics/Paint;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lhsu;->j:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lhsu;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v0, p0, Lhsu;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 100
    iget-object v0, p0, Lhsu;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 101
    iget-object v0, p0, Lhsu;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v0, p0, Lhsu;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    sget-object v0, Lhsu;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Liff$c;->aliwx_photo_deal_sticker_delete:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lhsu;->k:Landroid/graphics/Bitmap;

    .line 109
    :cond_0
    sget-object v0, Lhsu;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Liff$c;->aliwx_photo_deal_sticker_rotate:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lhsu;->l:Landroid/graphics/Bitmap;

    .line 113
    :cond_1
    iget-object v0, p0, Lhsu;->G:Ljava/util/ArrayList;

    sget v1, Liff$f;->dt_photo_click_input:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void

    .line 87
    :array_0
    .array-data 4
        0x41400000    # 12.0f
        0x41400000    # 12.0f
    .end array-data
.end method

.method private static a(Landroid/graphics/RectF;FFF)V
    .locals 10
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "center_x"    # F
    .param p2, "center_y"    # F
    .param p3, "roatetAngle"    # F

    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 495
    .local v6, "x":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    .line 496
    .local v7, "y":F
    float-to-double v8, p3

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 497
    .local v5, "sinA":F
    float-to-double v8, p3

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 498
    .local v0, "cosA":F
    sub-float v8, v6, p1

    mul-float/2addr v8, v0

    add-float/2addr v8, p1

    sub-float v9, v7, p2

    mul-float/2addr v9, v5

    sub-float v3, v8, v9

    .line 499
    .local v3, "newX":F
    sub-float v8, v7, p2

    mul-float/2addr v8, v0

    add-float/2addr v8, p2

    sub-float v9, v6, p1

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .line 501
    .local v4, "newY":F
    sub-float v1, v3, v6

    .line 502
    .local v1, "dx":F
    sub-float v2, v4, v7

    .line 504
    .local v2, "dy":F
    invoke-virtual {p0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 505
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dest"    # Landroid/graphics/RectF;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const v3, 0x3f5b6db7

    .line 301
    iget-object v0, p0, Lhsu;->H:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 302
    iget-object v0, p0, Lhsu;->H:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 303
    iget-object v0, p0, Lhsu;->H:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 304
    return-object p2
.end method

.method public a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/high16 v2, 0x41c80000    # 25.0f

    .line 151
    iget-object v0, p0, Lhsu;->f:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 152
    iget-object v0, p0, Lhsu;->f:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 153
    iget-object v0, p0, Lhsu;->f:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 154
    iget-object v0, p0, Lhsu;->f:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 155
    return-void
.end method

.method public final a(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 164
    iget-object v0, p0, Lhsu;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 166
    iget-object v0, p0, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 169
    iget-object v0, p0, Lhsu;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 170
    iget-object v0, p0, Lhsu;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 171
    iget-object v0, p0, Lhsu;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 173
    iget-object v0, p0, Lhsu;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 174
    iget-object v0, p0, Lhsu;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 175
    invoke-virtual {p0}, Lhsu;->b()V

    .line 176
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "con":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhsu;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 517
    iget-object v0, p0, Lhsu;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 518
    invoke-virtual {p0}, Lhsu;->b()V

    .line 519
    return-void
.end method

.method public final b()V
    .locals 18

    .prologue
    .line 317
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->F:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 318
    move-object/from16 v0, p0

    iget-object v10, v0, Lhsu;->G:Ljava/util/ArrayList;

    .line 322
    .local v10, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    .line 2107
    iget-object v14, v14, Lhsn;->c:Ljava/util/ArrayList;

    .line 322
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    .line 2111
    iget-object v14, v14, Lhsn;->d:Ljava/util/ArrayList;

    .line 323
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 324
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    .line 3103
    iget-object v14, v14, Lhsn;->e:Ljava/util/ArrayList;

    .line 324
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 325
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 326
    .local v7, "numOfTextLine":I
    if-nez v7, :cond_1

    .line 378
    :goto_1
    return-void

    .line 320
    .end local v7    # "numOfTextLine":I
    .end local v10    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lhsu;->F:Ljava/util/ArrayList;

    .restart local v10    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 3397
    .restart local v7    # "numOfTextLine":I
    :cond_1
    if-lez v7, :cond_4

    .line 3399
    move-object/from16 v0, p0

    iget v14, v0, Lhsu;->E:F

    move-object/from16 v0, p0

    iget v15, v0, Lhsu;->D:F

    div-float/2addr v14, v15

    .line 3400
    move-object/from16 v0, p0

    iget v15, v0, Lhsu;->D:F

    int-to-float v0, v7

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lhsu;->E:F

    move/from16 v16, v0

    add-int/lit8 v17, v7, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    cmpl-float v15, v15, v16

    if-lez v15, :cond_2

    .line 3401
    move-object/from16 v0, p0

    iget-object v15, v0, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    int-to-float v0, v7

    move/from16 v16, v0

    int-to-float v0, v7

    move/from16 v17, v0

    mul-float v17, v17, v14

    add-float v16, v16, v17

    sub-float v16, v16, v14

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lhsu;->D:F

    .line 3402
    move-object/from16 v0, p0

    iget v15, v0, Lhsu;->D:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lhsu;->E:F

    .line 3405
    :cond_2
    const/4 v14, 0x0

    .line 3406
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v15, v14

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3407
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v15, v14

    .line 3408
    goto :goto_2

    .line 3409
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lhsu;->D:F

    int-to-float v0, v15

    move/from16 v16, v0

    mul-float v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v16

    cmpl-float v14, v14, v16

    if-lez v14, :cond_4

    .line 3410
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    int-to-float v15, v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lhsu;->D:F

    .line 331
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float v6, v14, v15

    .line 332
    .local v6, "left":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float v9, v14, v15

    .line 333
    .local v9, "right":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->c:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lhsu;->D:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float v5, v14, v15

    .line 339
    .local v5, "centerY":F
    rem-int/lit8 v14, v7, 0x2

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 340
    move v11, v5

    .line 341
    .local v11, "topCenterY":F
    move-object/from16 v0, p0

    iget v14, v0, Lhsu;->D:F

    add-float/2addr v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lhsu;->E:F

    add-float v1, v14, v15

    .line 342
    .local v1, "bottomCenterY":F
    add-int/lit8 v14, v7, 0x1

    div-int/lit8 v4, v14, 0x2

    .line 343
    .local v4, "centerLineNum":I
    add-int/lit8 v13, v4, -0x1

    .line 344
    .local v13, "topOfCenterLineNum":I
    move v3, v4

    .line 352
    .end local v4    # "centerLineNum":I
    .local v3, "bottomOfCenterLineNum":I
    :goto_3
    move v12, v13

    .line 353
    .local v12, "topIndex":I
    :goto_4
    if-ltz v12, :cond_6

    .line 354
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->q:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 355
    move-object/from16 v0, p0

    iget v14, v0, Lhsu;->D:F

    move-object/from16 v0, p0

    iget v15, v0, Lhsu;->E:F

    add-float/2addr v14, v15

    sub-int v15, v12, v13

    int-to-float v15, v15

    mul-float/2addr v14, v15

    add-float v8, v11, v14

    .line 356
    .local v8, "pointY":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->q:Landroid/graphics/Path;

    invoke-virtual {v14, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->q:Landroid/graphics/Path;

    invoke-virtual {v14, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    invoke-virtual {v14, v6, v8, v9, v8}, Lhsn;->a(FFFF)V

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    .line 4107
    iget-object v14, v14, Lhsn;->c:Ljava/util/ArrayList;

    .line 359
    new-instance v15, Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->q:Landroid/graphics/Path;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    .line 4111
    iget-object v14, v14, Lhsn;->d:Ljava/util/ArrayList;

    .line 360
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v12, v12, -0x1

    .line 362
    goto :goto_4

    .line 346
    .end local v1    # "bottomCenterY":F
    .end local v3    # "bottomOfCenterLineNum":I
    .end local v8    # "pointY":F
    .end local v11    # "topCenterY":F
    .end local v12    # "topIndex":I
    .end local v13    # "topOfCenterLineNum":I
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lhsu;->D:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v14, v5, v14

    move-object/from16 v0, p0

    iget v15, v0, Lhsu;->E:F

    sub-float v11, v14, v15

    .line 347
    .restart local v11    # "topCenterY":F
    move-object/from16 v0, p0

    iget v14, v0, Lhsu;->D:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lhsu;->E:F

    add-float v1, v14, v15

    .line 348
    .restart local v1    # "bottomCenterY":F
    div-int/lit8 v14, v7, 0x2

    add-int/lit8 v13, v14, -0x1

    .line 349
    .restart local v13    # "topOfCenterLineNum":I
    div-int/lit8 v3, v7, 0x2

    .restart local v3    # "bottomOfCenterLineNum":I
    goto :goto_3

    .line 363
    .restart local v12    # "topIndex":I
    :cond_6
    move v2, v3

    .line 364
    .local v2, "bottomIndex":I
    :goto_5
    if-ge v2, v7, :cond_7

    .line 365
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->q:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 366
    move-object/from16 v0, p0

    iget v14, v0, Lhsu;->D:F

    move-object/from16 v0, p0

    iget v15, v0, Lhsu;->E:F

    add-float/2addr v14, v15

    sub-int v15, v2, v3

    int-to-float v15, v15

    mul-float/2addr v14, v15

    add-float v8, v1, v14

    .line 367
    .restart local v8    # "pointY":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->q:Landroid/graphics/Path;

    invoke-virtual {v14, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 368
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->q:Landroid/graphics/Path;

    invoke-virtual {v14, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 369
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    invoke-virtual {v14, v6, v8, v9, v8}, Lhsn;->a(FFFF)V

    .line 370
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    .line 5107
    iget-object v14, v14, Lhsn;->c:Ljava/util/ArrayList;

    .line 370
    new-instance v15, Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->q:Landroid/graphics/Path;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    .line 5111
    iget-object v14, v14, Lhsn;->d:Ljava/util/ArrayList;

    .line 371
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v2, v2, 0x1

    .line 373
    goto :goto_5

    .line 374
    .end local v8    # "pointY":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    move-object/from16 v0, p0

    iget v15, v0, Lhsu;->D:F

    iput v15, v14, Lhsn;->i:F

    .line 375
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    move-object/from16 v0, p0

    iget v15, v0, Lhsu;->o:F

    .line 5119
    iput v15, v14, Lhsn;->f:F

    .line 376
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    move-object/from16 v0, p0

    iget-object v15, v0, Lhsu;->f:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    .line 5123
    iput v15, v14, Lhsn;->g:F

    .line 377
    move-object/from16 v0, p0

    iget-object v14, v0, Lhsu;->r:Lhsn;

    move-object/from16 v0, p0

    iget-object v15, v0, Lhsu;->f:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    .line 5127
    iput v15, v14, Lhsn;->h:F

    goto/16 :goto_1
.end method

.method public final b(FF)V
    .locals 28
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 187
    .local v5, "c_x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    .line 189
    .local v6, "c_y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->g:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerX()F

    move-result v17

    .line 190
    .local v17, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->g:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerY()F

    move-result v20

    .line 195
    .local v20, "y":F
    add-float v12, v17, p1

    .line 196
    .local v12, "n_x":F
    add-float v13, v20, p2

    .line 198
    .local v13, "n_y":F
    sub-float v18, v17, v5

    .line 199
    .local v18, "xa":F
    sub-float v21, v20, v6

    .line 201
    .local v21, "ya":F
    sub-float v19, v12, v5

    .line 202
    .local v19, "xb":F
    sub-float v22, v13, v6

    .line 204
    .local v22, "yb":F
    mul-float v23, v18, v18

    mul-float v24, v21, v21

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v16, v0

    .line 205
    .local v16, "srcLen":F
    mul-float v23, v19, v19

    mul-float v24, v22, v22

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v10, v0

    .line 210
    .local v10, "curLen":F
    div-float v15, v10, v16

    .line 212
    .local v15, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v23

    mul-float v14, v23, v15

    .line 213
    .local v14, "newWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lhsu;->m:F

    move/from16 v23, v0

    div-float v23, v14, v23

    const v24, 0x3e19999a    # 0.15f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lhsu;->D:F

    move/from16 v23, v0

    mul-float v23, v23, v15

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lhsu;->D:F

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lhsu;->E:F

    move/from16 v23, v0

    mul-float v23, v23, v15

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lhsu;->E:F

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->n:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->centerX()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    .line 221
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->centerY()F

    move-result v25

    .line 220
    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v15, v15, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    .line 1421
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v24

    .line 1422
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v25

    .line 1424
    mul-float v26, v15, v24

    .line 1425
    mul-float v27, v15, v25

    .line 1427
    sub-float v24, v26, v24

    const/high16 v26, 0x40000000    # 2.0f

    div-float v24, v24, v26

    .line 1428
    sub-float v25, v27, v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    .line 1430
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    sub-float v26, v26, v24

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 1431
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    sub-float v26, v26, v25

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 1432
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    add-float v24, v24, v26

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 1433
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->f:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lhsu;->a()V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->e:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->f:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    const/high16 v25, 0x420c0000    # 35.0f

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->f:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    const/high16 v26, 0x420c0000    # 35.0f

    sub-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->d:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->f:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const/high16 v25, 0x420c0000    # 35.0f

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->f:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    const/high16 v26, 0x420c0000    # 35.0f

    sub-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->g:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->f:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    const/high16 v25, 0x420c0000    # 35.0f

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->f:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    const/high16 v26, 0x420c0000    # 35.0f

    sub-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->h:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->f:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const/high16 v25, 0x420c0000    # 35.0f

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->f:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    const/high16 v26, 0x420c0000    # 35.0f

    sub-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 237
    mul-float v23, v18, v19

    mul-float v24, v21, v22

    add-float v23, v23, v24

    mul-float v24, v16, v10

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v8, v0

    .line 238
    .local v8, "cos":D
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v23, v8, v24

    if-gtz v23, :cond_0

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    cmpg-double v23, v8, v24

    if-ltz v23, :cond_0

    .line 240
    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v4, v0

    .line 244
    .local v4, "angle":F
    mul-float v23, v18, v22

    mul-float v24, v19, v21

    sub-float v7, v23, v24

    .line 246
    .local v7, "calMatrix":F
    const/16 v23, 0x0

    cmpl-float v23, v7, v23

    if-lez v23, :cond_2

    const/4 v11, 0x1

    .line 247
    .local v11, "flag":I
    :goto_1
    int-to-float v0, v11

    move/from16 v23, v0

    mul-float v4, v4, v23

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lhsu;->o:F

    move/from16 v23, v0

    add-float v23, v23, v4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lhsu;->o:F

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->n:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->centerX()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    .line 251
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->centerY()F

    move-result v25

    .line 250
    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->g:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->centerX()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    .line 254
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->centerY()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lhsu;->o:F

    move/from16 v26, v0

    .line 253
    invoke-static/range {v23 .. v26}, Lhsu;->a(Landroid/graphics/RectF;FFF)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->h:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->centerX()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lhsu;->c:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    .line 256
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->centerY()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lhsu;->o:F

    move/from16 v26, v0

    .line 255
    invoke-static/range {v23 .. v26}, Lhsu;->a(Landroid/graphics/RectF;FFF)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lhsu;->b()V

    goto/16 :goto_0

    .line 246
    .end local v11    # "flag":I
    :cond_2
    const/4 v11, -0x1

    goto/16 :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lhsu;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    .local v0, "con":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 526
    .end local v0    # "con":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 527
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 529
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
