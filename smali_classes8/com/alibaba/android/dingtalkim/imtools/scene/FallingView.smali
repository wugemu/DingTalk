.class public Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;
.super Landroid/view/View;
.source "FallingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ldme;

.field private d:[Ldmf;

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/Paint;

.field private i:Ljava/util/Random;

.field private j:Ljava/lang/Runnable;

.field private k:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    .line 190
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$2;-><init>(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->j:Ljava/lang/Runnable;

    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->c()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    .line 190
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$2;-><init>(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->j:Ljava/lang/Runnable;

    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->c()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    .line 190
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$2;-><init>(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->j:Ljava/lang/Runnable;

    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->c()V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v8, 0x14

    .line 54
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->i:Ljava/util/Random;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->h:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->h:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    new-array v0, v8, [Ldmf;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->d:[Ldmf;

    .line 59
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 60
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->d:[Ldmf;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->i:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 1036
    new-instance v0, Ldmf;

    invoke-direct {v0}, Ldmf;-><init>()V

    .line 1037
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Ldmf;->a(ILandroid/graphics/Paint;Landroid/graphics/Bitmap;J)V

    .line 60
    aput-object v0, v7, v6

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 79
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 80
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->e:J

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->g:Z

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->d:[Ldmf;

    aget-object v2, v1, v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->i:Ljava/util/Random;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Ldmf;->a(Landroid/graphics/Bitmap;)V

    .line 88
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->d:[Ldmf;

    aget-object v1, v1, v0

    .line 1086
    iget-object v2, v1, Ldmf;->b:Landroid/graphics/Point;

    iget v3, v1, Ldmf;->h:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1087
    iget-object v2, v1, Ldmf;->b:Landroid/graphics/Point;

    iget v1, v1, Ldmf;->i:I

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->d:[Ldmf;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldmf;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 107
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 112
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b()V

    .line 118
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 162
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 163
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->e:J

    const-wide/16 v8, 0x5

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->e:J

    .line 164
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->j:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 165
    const/4 v2, 0x1

    .line 166
    .local v2, "isEnd":Z
    const/4 v3, 0x0

    .line 167
    .local v3, "isValid":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->d:[Ldmf;

    array-length v8, v7

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v4, v7, v6

    .line 168
    .local v4, "snowFlake":Ldmf;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->e:J

    .line 2092
    iget-wide v12, v4, Ldmf;->g:J

    cmp-long v5, v10, v12

    if-lez v5, :cond_0

    .line 3046
    iget-object v5, v4, Ldmf;->b:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v10, v5

    iget v5, v4, Ldmf;->d:F

    float-to-double v12, v5

    iget v5, v4, Ldmf;->c:F

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 3047
    iget-object v5, v4, Ldmf;->b:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-double v12, v5

    iget v5, v4, Ldmf;->d:F

    float-to-double v14, v5

    iget v5, v4, Ldmf;->c:F

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 3049
    iget v5, v4, Ldmf;->c:F

    iget-object v9, v4, Ldmf;->a:Ldmo;

    const/high16 v14, -0x3e380000    # -25.0f

    const/high16 v15, 0x41c80000    # 25.0f

    invoke-virtual {v9, v14, v15}, Ldmo;->a(FF)F

    move-result v9

    const v14, 0x461c4000    # 10000.0f

    div-float/2addr v9, v14

    add-float/2addr v5, v9

    iput v5, v4, Ldmf;->c:F

    .line 3050
    iget-object v5, v4, Ldmf;->b:Landroid/graphics/Point;

    double-to-int v9, v10

    double-to-int v10, v12

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 2096
    invoke-virtual {v4}, Ldmf;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2097
    iget-object v5, v4, Ldmf;->f:Landroid/graphics/Bitmap;

    iget-object v9, v4, Ldmf;->b:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget-object v10, v4, Ldmf;->b:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    iget-object v11, v4, Ldmf;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 169
    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->getHeight()I

    move-result v5

    .line 3103
    if-lez v5, :cond_2

    .line 3104
    iget-object v9, v4, Ldmf;->b:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-lt v9, v5, :cond_1

    const/4 v5, 0x1

    .line 169
    :goto_1
    if-eqz v5, :cond_3

    const/4 v2, 0x1

    .line 170
    :goto_2
    invoke-virtual {v4}, Ldmf;->a()Z

    move-result v5

    or-int/2addr v3, v5

    .line 167
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_0

    .line 3104
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 3106
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 169
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 172
    .end local v4    # "snowFlake":Ldmf;
    :cond_4
    if-eqz v2, :cond_6

    .line 173
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->g:Z

    if-eqz v5, :cond_5

    .line 174
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->g:Z

    .line 175
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->k:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$a;

    if-eqz v5, :cond_5

    .line 188
    :cond_5
    :goto_3
    return-void

    .line 180
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->g:Z

    if-nez v5, :cond_7

    if-eqz v3, :cond_7

    .line 181
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->g:Z

    .line 186
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->j:Ljava/lang/Runnable;

    const-wide/16 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 152
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_2

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->f:Z

    if-nez v0, :cond_2

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->f:Z

    .line 2069
    const/4 v3, 0x0

    .line 2070
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/16 v0, 0x14

    if-ge v6, v0, :cond_2

    .line 2071
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2072
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->i:Ljava/util/Random;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v3, v0

    .line 2074
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->d:[Ldmf;

    aget-object v0, v0, v6

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->i:Ljava/util/Random;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v4, v1

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Ldmf;->a(ILandroid/graphics/Paint;Landroid/graphics/Bitmap;J)V

    .line 2070
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 158
    :cond_2
    return-void
.end method

.method public setBitmapConverter(Ldme;)V
    .locals 0
    .param p1, "converter"    # Ldme;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->c:Ldme;

    .line 66
    return-void
.end method

.method public setOnAnimationStatusChangedListener(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$a;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->k:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$a;

    .line 201
    return-void
.end method
