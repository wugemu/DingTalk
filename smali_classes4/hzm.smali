.class public Lhzm;
.super Ljava/lang/Object;
.source "BubbleAnimateWrapper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lhzm;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:[J

.field private static final g:[F


# instance fields
.field public a:I

.field public b:Landroid/view/View;

.field public c:Lhzn;

.field public d:Lhzp$b;

.field private h:Ljava/util/Random;

.field private i:Lhzp$b;

.field private j:Lhzp$b;

.field private k:Lhzp$b;

.field private l:Lhzp$b;

.field private m:Landroid/view/animation/Animation;

.field private n:Lhzp;

.field private o:Lhzp;

.field private p:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 24
    const-class v0, Lhzm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhzm;->e:Ljava/lang/String;

    .line 31
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lhzm;->f:[J

    .line 35
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lhzm;->g:[F

    return-void

    .line 31
    .line 35
    :array_0
    .array-data 8
        0x7d0
        0x9c4
        0xbb8
    .end array-data

    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lhzm;->h:Ljava/util/Random;

    .line 58
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lhzm;->p:F

    .line 62
    iput-object p1, p0, Lhzm;->b:Landroid/view/View;

    .line 64
    new-instance v0, Lhzm$1;

    invoke-direct {v0, p0}, Lhzm$1;-><init>(Lhzm;)V

    iput-object v0, p0, Lhzm;->i:Lhzp$b;

    .line 77
    new-instance v0, Lhzm$2;

    invoke-direct {v0, p0}, Lhzm$2;-><init>(Lhzm;)V

    iput-object v0, p0, Lhzm;->j:Lhzp$b;

    .line 91
    new-instance v0, Lhzm$3;

    invoke-direct {v0, p0}, Lhzm$3;-><init>(Lhzm;)V

    iput-object v0, p0, Lhzm;->k:Lhzp$b;

    .line 104
    new-instance v0, Lhzm$4;

    invoke-direct {v0, p0}, Lhzm$4;-><init>(Lhzm;)V

    iput-object v0, p0, Lhzm;->l:Lhzp$b;

    .line 118
    new-instance v0, Lhzm$5;

    invoke-direct {v0, p0}, Lhzm$5;-><init>(Lhzm;)V

    iput-object v0, p0, Lhzm;->d:Lhzp$b;

    .line 132
    iput p2, p0, Lhzm;->a:I

    .line 134
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sget-object v2, Lhzm;->g:[F

    iget-object v3, p0, Lhzm;->h:Ljava/util/Random;

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lhzm;->m:Landroid/view/animation/Animation;

    .line 135
    iget-object v0, p0, Lhzm;->m:Landroid/view/animation/Animation;

    sget-object v1, Lhzm;->f:[J

    iget-object v2, p0, Lhzm;->h:Ljava/util/Random;

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 136
    iget-object v0, p0, Lhzm;->m:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    iget-object v0, p0, Lhzm;->m:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 138
    iget-object v0, p0, Lhzm;->m:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 139
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9
    .param p1, "direction"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/high16 v8, 0x43480000    # 200.0f

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "fastBounce":Z
    iget-object v3, p0, Lhzm;->o:Lhzp;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lhzm;->o:Lhzp;

    invoke-virtual {v3}, Lhzp;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    iget-object v3, p0, Lhzm;->o:Lhzp;

    iget-object v4, p0, Lhzm;->k:Lhzp$b;

    invoke-virtual {v3, v4}, Lhzp;->b(Lhzp$b;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 281
    invoke-static {}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a()Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    move-result-object v3

    sget-object v4, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->EdgeBounceLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    invoke-virtual {v3, v4, p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;Lhzm;)V

    .line 285
    :cond_0
    :goto_0
    iget-object v3, p0, Lhzm;->o:Lhzp;

    invoke-virtual {v3}, Lhzp;->c()V

    .line 286
    const/4 v0, 0x1

    .line 289
    :cond_1
    if-nez v0, :cond_2

    .line 290
    iget-object v3, p0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iput v3, p0, Lhzm;->p:F

    .line 292
    :cond_2
    const/16 v3, 0x100

    if-ne p1, v3, :cond_5

    .line 293
    iget-object v3, p0, Lhzm;->b:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 294
    new-instance v1, Lhzp;

    invoke-direct {v1}, Lhzp;-><init>()V

    .line 295
    .local v1, "mBounceAnim":Lhzp;
    iget-object v3, p0, Lhzm;->b:Landroid/view/View;

    sget-object v4, Landroid/support/animation/DynamicAnimation;->X:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget v5, p0, Lhzm;->p:F

    invoke-static {v3, v4, v5, v8, v6}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v2

    .line 296
    .local v2, "springAnimation":Landroid/support/animation/SpringAnimation;
    iget v3, p0, Lhzm;->p:F

    sub-float/2addr v3, v7

    invoke-virtual {v2, v3}, Landroid/support/animation/SpringAnimation;->setStartValue(F)Landroid/support/animation/DynamicAnimation;

    .line 297
    invoke-virtual {v1, v2}, Lhzp;->a(Landroid/support/animation/SpringAnimation;)Lhzp$a;

    .line 298
    iget-object v3, p0, Lhzm;->k:Lhzp$b;

    invoke-virtual {v1, v3}, Lhzp;->a(Lhzp$b;)Z

    .line 299
    invoke-virtual {v1}, Lhzp;->b()V

    .line 300
    iput-object v1, p0, Lhzm;->o:Lhzp;

    .line 313
    .end local v1    # "mBounceAnim":Lhzp;
    .end local v2    # "springAnimation":Landroid/support/animation/SpringAnimation;
    :cond_3
    :goto_1
    return-void

    .line 282
    :cond_4
    iget-object v3, p0, Lhzm;->o:Lhzp;

    iget-object v4, p0, Lhzm;->l:Lhzp$b;

    invoke-virtual {v3, v4}, Lhzp;->b(Lhzp$b;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    invoke-static {}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a()Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    move-result-object v3

    sget-object v4, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->EdgeBounceRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    invoke-virtual {v3, v4, p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;Lhzm;)V

    goto :goto_0

    .line 302
    :cond_5
    const/16 v3, 0x200

    if-ne p1, v3, :cond_3

    .line 303
    iget-object v3, p0, Lhzm;->b:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 304
    new-instance v1, Lhzp;

    invoke-direct {v1}, Lhzp;-><init>()V

    .line 305
    .restart local v1    # "mBounceAnim":Lhzp;
    iget-object v3, p0, Lhzm;->b:Landroid/view/View;

    sget-object v4, Landroid/support/animation/DynamicAnimation;->X:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget v5, p0, Lhzm;->p:F

    invoke-static {v3, v4, v5, v8, v6}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v2

    .line 306
    .restart local v2    # "springAnimation":Landroid/support/animation/SpringAnimation;
    iget v3, p0, Lhzm;->p:F

    add-float/2addr v3, v7

    invoke-virtual {v2, v3}, Landroid/support/animation/SpringAnimation;->setStartValue(F)Landroid/support/animation/DynamicAnimation;

    .line 307
    invoke-virtual {v1, v2}, Lhzp;->a(Landroid/support/animation/SpringAnimation;)Lhzp$a;

    .line 308
    iget-object v3, p0, Lhzm;->l:Lhzp$b;

    invoke-virtual {v1, v3}, Lhzp;->a(Lhzp$b;)Z

    .line 309
    invoke-virtual {v1}, Lhzp;->b()V

    .line 310
    iput-object v1, p0, Lhzm;->o:Lhzp;

    goto :goto_1
.end method

.method public final a(IZ)V
    .locals 10
    .param p1, "direction"    # I
    .param p2, "notifyEvent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 164
    iget-object v5, p0, Lhzm;->b:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lhzm;->c:Lhzn;

    if-nez v5, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v5, p0, Lhzm;->n:Lhzp;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lhzm;->n:Lhzp;

    invoke-virtual {v5}, Lhzp;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    iget-object v5, p0, Lhzm;->n:Lhzp;

    iget-object v6, p0, Lhzm;->i:Lhzp$b;

    invoke-virtual {v5, v6}, Lhzp;->b(Lhzp$b;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 169
    invoke-static {}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a()Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    move-result-object v5

    sget-object v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->MoveLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    invoke-virtual {v5, v6, p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;Lhzm;)V

    .line 173
    :cond_2
    :goto_1
    iget-object v5, p0, Lhzm;->n:Lhzp;

    invoke-virtual {v5}, Lhzp;->c()V

    .line 176
    :cond_3
    const/16 v5, 0x100

    if-ne p1, v5, :cond_7

    .line 177
    iget-object v5, p0, Lhzm;->c:Lhzn;

    iget-object v5, v5, Lhzn;->j:Lhzn;

    if-eqz v5, :cond_0

    .line 178
    new-instance v4, Lhzp;

    invoke-direct {v4}, Lhzp;-><init>()V

    .line 179
    .local v4, "springSet":Lhzp;
    iget-object v5, p0, Lhzm;->b:Landroid/view/View;

    sget-object v6, Landroid/support/animation/DynamicAnimation;->SCALE_X:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget-object v7, p0, Lhzm;->c:Lhzn;

    iget-object v7, v7, Lhzn;->j:Lhzn;

    iget v7, v7, Lhzn;->c:F

    iget-object v8, p0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x43480000    # 200.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v5, v6, v7, v8, v9}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v2

    .line 180
    .local v2, "scaleX":Landroid/support/animation/SpringAnimation;
    iget-object v5, p0, Lhzm;->b:Landroid/view/View;

    sget-object v6, Landroid/support/animation/DynamicAnimation;->SCALE_Y:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget-object v7, p0, Lhzm;->c:Lhzn;

    iget-object v7, v7, Lhzn;->j:Lhzn;

    iget v7, v7, Lhzn;->d:F

    iget-object v8, p0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x43480000    # 200.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v5, v6, v7, v8, v9}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v3

    .line 181
    .local v3, "scaleY":Landroid/support/animation/SpringAnimation;
    iget-object v5, p0, Lhzm;->b:Landroid/view/View;

    sget-object v6, Landroid/support/animation/DynamicAnimation;->X:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget-object v7, p0, Lhzm;->c:Lhzn;

    iget-object v7, v7, Lhzn;->j:Lhzn;

    iget v7, v7, Lhzn;->a:F

    iget-object v8, p0, Lhzm;->c:Lhzn;

    iget-object v8, v8, Lhzn;->j:Lhzn;

    iget v8, v8, Lhzn;->c:F

    iget-object v9, p0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x43480000    # 200.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v5, v6, v7, v8, v9}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v0

    .line 182
    .local v0, "moveX":Landroid/support/animation/SpringAnimation;
    iget-object v5, p0, Lhzm;->b:Landroid/view/View;

    sget-object v6, Landroid/support/animation/DynamicAnimation;->Y:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget-object v7, p0, Lhzm;->c:Lhzn;

    iget-object v7, v7, Lhzn;->j:Lhzn;

    iget v7, v7, Lhzn;->b:F

    iget-object v8, p0, Lhzm;->c:Lhzn;

    iget-object v8, v8, Lhzn;->j:Lhzn;

    iget v8, v8, Lhzn;->d:F

    iget-object v9, p0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x43480000    # 200.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v5, v6, v7, v8, v9}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v1

    .line 183
    .local v1, "moveY":Landroid/support/animation/SpringAnimation;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/support/animation/SpringAnimation;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    invoke-virtual {v4, v5}, Lhzp;->a([Landroid/support/animation/SpringAnimation;)V

    .line 184
    if-eqz p2, :cond_4

    .line 185
    iget-object v5, p0, Lhzm;->i:Lhzp$b;

    invoke-virtual {v4, v5}, Lhzp;->a(Lhzp$b;)Z

    .line 187
    :cond_4
    invoke-virtual {v4}, Lhzp;->b()V

    .line 188
    iget-object v5, p0, Lhzm;->c:Lhzn;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lhzm;->c:Lhzn;

    iget-object v5, v5, Lhzn;->j:Lhzn;

    if-eqz v5, :cond_5

    .line 189
    iget-object v5, p0, Lhzm;->c:Lhzn;

    iget-object v5, v5, Lhzn;->j:Lhzn;

    iput-object v5, p0, Lhzm;->c:Lhzn;

    .line 191
    :cond_5
    iput-object v4, p0, Lhzm;->n:Lhzp;

    goto/16 :goto_0

    .line 170
    .end local v0    # "moveX":Landroid/support/animation/SpringAnimation;
    .end local v1    # "moveY":Landroid/support/animation/SpringAnimation;
    .end local v2    # "scaleX":Landroid/support/animation/SpringAnimation;
    .end local v3    # "scaleY":Landroid/support/animation/SpringAnimation;
    .end local v4    # "springSet":Lhzp;
    :cond_6
    iget-object v5, p0, Lhzm;->n:Lhzp;

    iget-object v6, p0, Lhzm;->j:Lhzp$b;

    invoke-virtual {v5, v6}, Lhzp;->b(Lhzp$b;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    invoke-static {}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a()Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    move-result-object v5

    sget-object v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->MoveRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    invoke-virtual {v5, v6, p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;Lhzm;)V

    goto/16 :goto_1

    .line 193
    :cond_7
    const/16 v5, 0x200

    if-ne p1, v5, :cond_0

    .line 194
    iget-object v5, p0, Lhzm;->c:Lhzn;

    iget-object v5, v5, Lhzn;->k:Lhzn;

    if-eqz v5, :cond_0

    .line 195
    new-instance v4, Lhzp;

    invoke-direct {v4}, Lhzp;-><init>()V

    .line 196
    .restart local v4    # "springSet":Lhzp;
    iget-object v5, p0, Lhzm;->b:Landroid/view/View;

    sget-object v6, Landroid/support/animation/DynamicAnimation;->SCALE_X:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget-object v7, p0, Lhzm;->c:Lhzn;

    iget-object v7, v7, Lhzn;->k:Lhzn;

    iget v7, v7, Lhzn;->c:F

    iget-object v8, p0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x43480000    # 200.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v5, v6, v7, v8, v9}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v2

    .line 197
    .restart local v2    # "scaleX":Landroid/support/animation/SpringAnimation;
    iget-object v5, p0, Lhzm;->b:Landroid/view/View;

    sget-object v6, Landroid/support/animation/DynamicAnimation;->SCALE_Y:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget-object v7, p0, Lhzm;->c:Lhzn;

    iget-object v7, v7, Lhzn;->k:Lhzn;

    iget v7, v7, Lhzn;->d:F

    iget-object v8, p0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x43480000    # 200.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v5, v6, v7, v8, v9}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v3

    .line 198
    .restart local v3    # "scaleY":Landroid/support/animation/SpringAnimation;
    iget-object v5, p0, Lhzm;->b:Landroid/view/View;

    sget-object v6, Landroid/support/animation/DynamicAnimation;->X:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget-object v7, p0, Lhzm;->c:Lhzn;

    iget-object v7, v7, Lhzn;->k:Lhzn;

    iget v7, v7, Lhzn;->a:F

    iget-object v8, p0, Lhzm;->c:Lhzn;

    iget-object v8, v8, Lhzn;->k:Lhzn;

    iget v8, v8, Lhzn;->c:F

    iget-object v9, p0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x43480000    # 200.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v5, v6, v7, v8, v9}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v0

    .line 199
    .restart local v0    # "moveX":Landroid/support/animation/SpringAnimation;
    iget-object v5, p0, Lhzm;->b:Landroid/view/View;

    sget-object v6, Landroid/support/animation/DynamicAnimation;->Y:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget-object v7, p0, Lhzm;->c:Lhzn;

    iget-object v7, v7, Lhzn;->k:Lhzn;

    iget v7, v7, Lhzn;->b:F

    iget-object v8, p0, Lhzm;->c:Lhzn;

    iget-object v8, v8, Lhzn;->k:Lhzn;

    iget v8, v8, Lhzn;->d:F

    iget-object v9, p0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x43480000    # 200.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v5, v6, v7, v8, v9}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v1

    .line 200
    .restart local v1    # "moveY":Landroid/support/animation/SpringAnimation;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/support/animation/SpringAnimation;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    invoke-virtual {v4, v5}, Lhzp;->a([Landroid/support/animation/SpringAnimation;)V

    .line 201
    if-eqz p2, :cond_8

    .line 202
    iget-object v5, p0, Lhzm;->j:Lhzp$b;

    invoke-virtual {v4, v5}, Lhzp;->a(Lhzp$b;)Z

    .line 204
    :cond_8
    invoke-virtual {v4}, Lhzp;->b()V

    .line 205
    iget-object v5, p0, Lhzm;->c:Lhzn;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lhzm;->c:Lhzn;

    iget-object v5, v5, Lhzn;->k:Lhzn;

    if-eqz v5, :cond_9

    .line 206
    iget-object v5, p0, Lhzm;->c:Lhzn;

    iget-object v5, v5, Lhzn;->k:Lhzn;

    iput-object v5, p0, Lhzm;->c:Lhzn;

    .line 208
    :cond_9
    iput-object v4, p0, Lhzm;->n:Lhzp;

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 316
    iget-object v0, p0, Lhzm;->c:Lhzn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhzm;->b:Landroid/view/View;

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lhzm;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 321
    iget-object v0, p0, Lhzm;->b:Landroid/view/View;

    iget-object v1, p0, Lhzm;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 23
    check-cast p1, Lhzm;

    .line 1329
    iget-object v0, p1, Lhzm;->c:Lhzn;

    if-nez v0, :cond_0

    .line 1330
    const/4 v0, 0x1

    .line 1332
    :goto_0
    return v0

    .line 1331
    :cond_0
    iget-object v0, p0, Lhzm;->c:Lhzn;

    if-nez v0, :cond_1

    .line 1332
    const/4 v0, -0x1

    goto :goto_0

    .line 1334
    :cond_1
    iget-object v0, p0, Lhzm;->c:Lhzn;

    .line 2142
    iget-object v1, p1, Lhzm;->c:Lhzn;

    .line 1334
    invoke-virtual {v0, v1}, Lhzn;->a(Lhzn;)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lhzm;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lhzm;->c:Lhzn;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NaN, NaN]"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lhzm;->c:Lhzn;

    iget v2, v2, Lhzn;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lhzm;->c:Lhzn;

    iget v2, v2, Lhzn;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
