.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$b;,
        Landroid/support/v4/widget/SlidingPaneLayout$a;,
        Landroid/support/v4/widget/SlidingPaneLayout$h;,
        Landroid/support/v4/widget/SlidingPaneLayout$g;,
        Landroid/support/v4/widget/SlidingPaneLayout$f;,
        Landroid/support/v4/widget/SlidingPaneLayout$e;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$c;,
        Landroid/support/v4/widget/SlidingPaneLayout$d;
    }
.end annotation


# static fields
.field static final j:Landroid/support/v4/widget/SlidingPaneLayout$e;


# instance fields
.field a:I

.field b:Landroid/view/View;

.field c:F

.field d:I

.field e:Z

.field f:I

.field final g:Lhu;

.field h:Z

.field final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private final n:I

.field private o:Z

.field private p:F

.field private q:F

.field private r:F

.field private s:Landroid/support/v4/widget/SlidingPaneLayout$d;

.field private t:Z

.field private final u:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 199
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$h;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$h;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->j:Landroid/support/v4/widget/SlidingPaneLayout$e;

    .line 205
    :goto_0
    return-void

    .line 200
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 201
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$g;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$g;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->j:Landroid/support/v4/widget/SlidingPaneLayout$e;

    goto :goto_0

    .line 203
    :cond_1
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$f;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$f;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->j:Landroid/support/v4/widget/SlidingPaneLayout$e;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 257
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    const v1, -0x33333334

    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->a:I

    .line 189
    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Z

    .line 191
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u:Landroid/graphics/Rect;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->i:Ljava/util/ArrayList;

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 260
    .local v0, "density":F
    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:I

    .line 262
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 264
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$a;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SlidingPaneLayout$a;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Lfz;)V

    .line 265
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 267
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$c;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SlidingPaneLayout$c;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v2, v1}, Lhu;->a(Landroid/view/ViewGroup;FLhu$a;)Lhu;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    .line 268
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v0

    .line 2403
    iput v2, v1, Lhu;->g:F

    .line 269
    return-void
.end method

.method private a(I)Z
    .locals 2
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v0, 0x0

    .line 860
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->b(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:Z

    .line 862
    const/4 v0, 0x1

    .line 864
    :cond_1
    return v0
.end method

.method private b(F)Z
    .locals 9
    .param p1, "slideOffset"    # F

    .prologue
    const/4 v5, 0x0

    .line 1028
    iget-boolean v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    if-nez v6, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return v5

    .line 1033
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->b()Z

    move-result v1

    .line 1034
    .local v1, "isLayoutRtl":Z
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1037
    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    if-eqz v1, :cond_2

    .line 1038
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v6

    iget v7, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int v3, v6, v7

    .line 1039
    .local v3, "startBound":I
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1040
    .local v0, "childWidth":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:I

    int-to-float v8, v8

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    int-to-float v8, v0

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 1046
    .end local v0    # "childWidth":I
    .local v4, "x":I
    :goto_1
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v7, v4, v8}, Lhu;->a(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1047
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()V

    .line 1048
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1049
    const/4 v5, 0x1

    goto :goto_0

    .line 1042
    .end local v3    # "startBound":I
    .end local v4    # "x":I
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v6

    iget v7, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v3, v6, v7

    .line 1043
    .restart local v3    # "startBound":I
    int-to-float v6, v3

    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    float-to-int v4, v6

    .restart local v4    # "x":I
    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    .line 398
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 399
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 401
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method a(F)V
    .locals 12
    .param p1, "slideOffset"    # F

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1168
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->b()Z

    move-result v4

    .line 1169
    .local v4, "isLayoutRtl":Z
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1170
    .local v7, "slideLp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v9, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z

    if-eqz v9, :cond_3

    if-eqz v4, :cond_2

    iget v9, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    :goto_0
    if-gtz v9, :cond_3

    const/4 v1, 0x1

    .line 1172
    .local v1, "dimViews":Z
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    .line 1173
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 1174
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1175
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    if-eq v8, v9, :cond_1

    .line 1177
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:F

    sub-float v9, v11, v9

    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 1178
    .local v6, "oldOffset":I
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:F

    .line 1179
    sub-float v9, v11, p1

    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 1180
    .local v5, "newOffset":I
    sub-int v2, v6, v5

    .line 1182
    .local v2, "dx":I
    if-eqz v4, :cond_0

    neg-int v2, v2

    .end local v2    # "dx":I
    :cond_0
    invoke-virtual {v8, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1184
    if-eqz v1, :cond_1

    .line 1185
    if-eqz v4, :cond_4

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:F

    sub-float/2addr v9, v11

    :goto_3
    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:I

    invoke-virtual {p0, v8, v9, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    .line 1173
    .end local v5    # "newOffset":I
    .end local v6    # "oldOffset":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1170
    .end local v0    # "childCount":I
    .end local v1    # "dimViews":Z
    .end local v3    # "i":I
    .end local v8    # "v":Landroid/view/View;
    :cond_2
    iget v9, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1185
    .restart local v0    # "childCount":I
    .restart local v1    # "dimViews":Z
    .restart local v3    # "i":I
    .restart local v5    # "newOffset":I
    .restart local v6    # "oldOffset":I
    .restart local v8    # "v":Landroid/view/View;
    :cond_4
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:F

    sub-float v9, v11, v9

    goto :goto_3

    .line 1189
    .end local v5    # "newOffset":I
    .end local v6    # "oldOffset":I
    .end local v8    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method final a(Landroid/view/View;)V
    .locals 21
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 352
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->b()Z

    move-result v12

    .line 353
    .local v12, "isLayoutRtl":Z
    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v20

    sub-int v15, v19, v20

    .line 354
    .local v15, "startBound":I
    :goto_0
    if-eqz v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v10

    .line 355
    .local v10, "endBound":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v17

    .line 356
    .local v17, "topBound":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v20

    sub-int v3, v19, v20

    .line 361
    .local v3, "bottomBound":I
    if-eqz p1, :cond_6

    .line 2407
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2408
    const/16 v19, 0x1

    .line 361
    :goto_2
    if-eqz v19, :cond_6

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 363
    .local v13, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v14

    .line 364
    .local v14, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    .line 365
    .local v16, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 370
    .local v2, "bottom":I
    :goto_3
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v5

    .local v5, "childCount":I
    :goto_4
    if-ge v11, v5, :cond_a

    .line 371
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 373
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p1

    if-eq v4, v0, :cond_a

    .line 376
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 380
    if-eqz v12, :cond_7

    move/from16 v19, v10

    .line 381
    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v20

    .line 380
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 382
    .local v7, "clampedChildLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 383
    .local v9, "clampedChildTop":I
    if-eqz v12, :cond_8

    move/from16 v19, v15

    .line 384
    :goto_6
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v20

    .line 383
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 385
    .local v8, "clampedChildRight":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 387
    .local v6, "clampedChildBottom":I
    if-lt v7, v13, :cond_9

    move/from16 v0, v16

    if-lt v9, v0, :cond_9

    if-gt v8, v14, :cond_9

    if-gt v6, v2, :cond_9

    .line 389
    const/16 v18, 0x4

    .line 393
    .local v18, "vis":I
    :goto_7
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .end local v6    # "clampedChildBottom":I
    .end local v7    # "clampedChildLeft":I
    .end local v8    # "clampedChildRight":I
    .end local v9    # "clampedChildTop":I
    .end local v18    # "vis":I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 353
    .end local v2    # "bottom":I
    .end local v3    # "bottomBound":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childCount":I
    .end local v10    # "endBound":I
    .end local v11    # "i":I
    .end local v13    # "left":I
    .end local v14    # "right":I
    .end local v15    # "startBound":I
    .end local v16    # "top":I
    .end local v17    # "topBound":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v15

    goto/16 :goto_0

    .line 354
    .restart local v15    # "startBound":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v20

    sub-int v10, v19, v20

    goto/16 :goto_1

    .line 2414
    .restart local v3    # "bottomBound":I
    .restart local v10    # "endBound":I
    .restart local v17    # "topBound":I
    :cond_3
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x12

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 2418
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 2419
    if-eqz v19, :cond_5

    .line 2420
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    goto/16 :goto_2

    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2422
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 367
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "bottom":I
    move/from16 v16, v2

    .restart local v16    # "top":I
    move v14, v2

    .restart local v14    # "right":I
    move v13, v2

    .restart local v13    # "left":I
    goto/16 :goto_3

    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childCount":I
    .restart local v11    # "i":I
    :cond_7
    move/from16 v19, v15

    .line 380
    goto/16 :goto_5

    .restart local v7    # "clampedChildLeft":I
    .restart local v9    # "clampedChildTop":I
    :cond_8
    move/from16 v19, v10

    .line 383
    goto :goto_6

    .line 391
    .restart local v6    # "clampedChildBottom":I
    .restart local v8    # "clampedChildRight":I
    :cond_9
    const/16 v18, 0x0

    .restart local v18    # "vis":I
    goto :goto_7

    .line 395
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "clampedChildBottom":I
    .end local v7    # "clampedChildLeft":I
    .end local v8    # "clampedChildRight":I
    .end local v9    # "clampedChildTop":I
    .end local v18    # "vis":I
    :cond_a
    return-void
.end method

.method a(Landroid/view/View;FI)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mag"    # F
    .param p3, "fadeColor"    # I

    .prologue
    const/4 v8, 0x2

    .line 969
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 971
    .local v4, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_3

    if-eqz p3, :cond_3

    .line 972
    const/high16 v5, -0x1000000

    and-int/2addr v5, p3

    ushr-int/lit8 v0, v5, 0x18

    .line 973
    .local v0, "baseAlpha":I
    int-to-float v5, v0

    mul-float/2addr v5, p2

    float-to-int v3, v5

    .line 974
    .local v3, "imag":I
    shl-int/lit8 v5, v3, 0x18

    const v6, 0xffffff

    and-int/2addr v6, p3

    or-int v1, v5, v6

    .line 975
    .local v1, "color":I
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    if-nez v5, :cond_0

    .line 976
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    .line 978
    :cond_0
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 979
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 980
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 982
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/view/View;)V

    .line 991
    .end local v0    # "baseAlpha":I
    .end local v1    # "color":I
    .end local v3    # "imag":I
    :cond_2
    :goto_0
    return-void

    .line 983
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v5

    if-eqz v5, :cond_2

    .line 984
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    if-eqz v5, :cond_4

    .line 985
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 987
    :cond_4
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$b;

    invoke-direct {v2, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$b;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 988
    .local v2, "dlr":Landroid/support/v4/widget/SlidingPaneLayout$b;
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1018
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->j:Landroid/support/v4/widget/SlidingPaneLayout$e;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$e;->a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 1019
    return-void
.end method

.method final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1641
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1226
    if-nez p1, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return v1

    .line 1229
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1230
    .local v0, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1247
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhu;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    if-nez v0, :cond_1

    .line 1058
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    invoke-virtual {v0}, Lhu;->b()V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    .line 1134
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1135
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->b()Z

    move-result v1

    .line 1137
    .local v1, "isLayoutRtl":Z
    if-eqz v1, :cond_1

    .line 1138
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 1143
    .local v4, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v8

    if-le v8, v9, :cond_2

    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1144
    .local v5, "shadowView":Landroid/view/View;
    :goto_1
    if-eqz v5, :cond_0

    if-nez v4, :cond_3

    .line 1165
    :cond_0
    :goto_2
    return-void

    .line 1140
    .end local v4    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "shadowView":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:Landroid/graphics/drawable/Drawable;

    .restart local v4    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1143
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1149
    .restart local v5    # "shadowView":Landroid/view/View;
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1150
    .local v7, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1152
    .local v0, "bottom":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1155
    .local v6, "shadowWidth":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->b()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1156
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1157
    .local v2, "left":I
    add-int v3, v2, v6

    .line 1163
    .local v3, "right":I
    :goto_3
    invoke-virtual {v4, v2, v7, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1164
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1159
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1160
    .restart local v3    # "right":I
    sub-int v2, v3, v6

    .restart local v2    # "left":I
    goto :goto_3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 995
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 997
    .local v0, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    .line 999
    .local v2, "save":I
    iget-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1001
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1002
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1003
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1007
    :goto_0
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1010
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 1012
    .local v1, "result":Z
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1014
    return v1

    .line 1005
    .end local v1    # "result":Z
    :cond_1
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1235
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1252
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1240
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 324
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:I

    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:I

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 306
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->a:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 427
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Z

    .line 429
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 433
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 434
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Z

    .line 436
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 437
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$b;

    .line 438
    .local v1, "dlr":Landroid/support/v4/widget/SlidingPaneLayout$b;
    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout$b;->run()V

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    .end local v1    # "dlr":Landroid/support/v4/widget/SlidingPaneLayout$b;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 441
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 764
    .local v0, "action":I
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    if-nez v9, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    if-le v9, v10, :cond_0

    .line 766
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 767
    .local v5, "secondChild":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 769
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    .line 768
    invoke-static {v5, v9, v12}, Lhu;->b(Landroid/view/View;II)Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v10

    :goto_0
    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:Z

    .line 773
    .end local v5    # "secondChild":Landroid/view/View;
    :cond_0
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->e:Z

    if-eqz v9, :cond_4

    if-eqz v0, :cond_4

    .line 774
    :cond_1
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    invoke-virtual {v9}, Lhu;->a()V

    .line 775
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 816
    :cond_2
    :goto_1
    return v11

    .restart local v5    # "secondChild":Landroid/view/View;
    :cond_3
    move v9, v11

    .line 768
    goto :goto_0

    .line 778
    .end local v5    # "secondChild":Landroid/view/View;
    :cond_4
    const/4 v9, 0x3

    if-eq v0, v9, :cond_5

    if-ne v0, v10, :cond_6

    .line 779
    :cond_5
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    invoke-virtual {v9}, Lhu;->a()V

    goto :goto_1

    .line 783
    :cond_6
    const/4 v4, 0x0

    .line 785
    .local v4, "interceptTap":Z
    packed-switch v0, :pswitch_data_0

    .line 814
    :cond_7
    :goto_2
    :pswitch_0
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    invoke-virtual {v9, p1}, Lhu;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 816
    .local v3, "interceptForDrag":Z
    if-nez v3, :cond_8

    if-eqz v4, :cond_2

    :cond_8
    move v11, v10

    goto :goto_1

    .line 787
    .end local v3    # "interceptForDrag":Z
    :pswitch_1
    iput-boolean v11, p0, Landroid/support/v4/widget/SlidingPaneLayout;->e:Z

    .line 788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 789
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 790
    .local v8, "y":F
    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:F

    .line 791
    iput v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:F

    .line 793
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    float-to-int v12, v7

    float-to-int v13, v8

    invoke-static {v9, v12, v13}, Lhu;->b(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    .line 794
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 795
    const/4 v4, 0x1

    goto :goto_2

    .line 801
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 802
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 803
    .restart local v8    # "y":F
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 804
    .local v1, "adx":F
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 805
    .local v2, "ady":F
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    .line 3492
    iget v6, v9, Lhu;->b:I

    .line 806
    .local v6, "slop":I
    int-to-float v9, v6

    cmpl-float v9, v1, v9

    if-lez v9, :cond_7

    cmpl-float v9, v2, v1

    if-lez v9, :cond_7

    .line 807
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    invoke-virtual {v9}, Lhu;->a()V

    .line 808
    iput-boolean v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->e:Z

    goto :goto_1

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->b()Z

    move-result v12

    .line 658
    .local v12, "isLayoutRtl":Z
    if-eqz v12, :cond_2

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    .line 2439
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lhu;->i:I

    .line 663
    :goto_0
    sub-int v23, p4, p2

    .line 664
    .local v23, "width":I
    if-eqz v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v19

    .line 665
    .local v19, "paddingStart":I
    :goto_1
    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v18

    .line 666
    .local v18, "paddingEnd":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v20

    .line 668
    .local v20, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    .line 670
    .local v6, "childCount":I
    move/from16 v24, v19

    .local v24, "xStart":I
    move/from16 v16, v19

    .line 672
    .local v16, "nextXStart":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 673
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->h:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    const/high16 v25, 0x3f800000    # 1.0f

    :goto_3
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    .line 676
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-ge v11, v6, :cond_b

    .line 677
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 679
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 683
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 685
    .local v13, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 686
    .local v10, "childWidth":I
    const/16 v17, 0x0

    .line 688
    .local v17, "offset":I
    iget-boolean v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 689
    iget v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    iget v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v15, v25, v26

    .line 690
    .local v15, "margin":I
    sub-int v25, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->n:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v25

    sub-int v25, v25, v24

    sub-int v22, v25, v15

    .line 692
    .local v22, "range":I
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->d:I

    .line 693
    if-eqz v12, :cond_6

    iget v14, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    .line 694
    .local v14, "lpMargin":I
    :goto_5
    add-int v25, v24, v14

    add-int v25, v25, v22

    div-int/lit8 v26, v10, 0x2

    add-int v25, v25, v26

    sub-int v26, v23, v18

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    const/16 v25, 0x1

    :goto_6
    move/from16 v0, v25

    iput-boolean v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z

    .line 695
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v21, v0

    .line 696
    .local v21, "pos":I
    add-int v25, v21, v14

    add-int v24, v24, v25

    .line 697
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->d:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    .line 707
    .end local v14    # "lpMargin":I
    .end local v15    # "margin":I
    .end local v21    # "pos":I
    .end local v22    # "range":I
    :goto_7
    if-eqz v12, :cond_a

    .line 708
    sub-int v25, v23, v24

    add-int v8, v25, v17

    .line 709
    .local v8, "childRight":I
    sub-int v7, v8, v10

    .line 716
    .local v7, "childLeft":I
    :goto_8
    move/from16 v9, v20

    .local v9, "childTop":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    add-int v5, v20, v25

    .line 717
    .local v5, "childBottom":I
    move/from16 v0, v20

    invoke-virtual {v4, v7, v0, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 719
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v16, v16, v25

    .line 676
    .end local v5    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v17    # "offset":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 661
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v11    # "i":I
    .end local v16    # "nextXStart":I
    .end local v18    # "paddingEnd":I
    .end local v19    # "paddingStart":I
    .end local v20    # "paddingTop":I
    .end local v23    # "width":I
    .end local v24    # "xStart":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    .line 3439
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lhu;->i:I

    goto/16 :goto_0

    .line 664
    .restart local v23    # "width":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v19

    goto/16 :goto_1

    .line 665
    .restart local v19    # "paddingStart":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v18

    goto/16 :goto_2

    .line 673
    .restart local v6    # "childCount":I
    .restart local v16    # "nextXStart":I
    .restart local v18    # "paddingEnd":I
    .restart local v20    # "paddingTop":I
    .restart local v24    # "xStart":I
    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 693
    .restart local v4    # "child":Landroid/view/View;
    .restart local v10    # "childWidth":I
    .restart local v11    # "i":I
    .restart local v13    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .restart local v15    # "margin":I
    .restart local v17    # "offset":I
    .restart local v22    # "range":I
    :cond_6
    iget v14, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_5

    .line 694
    .restart local v14    # "lpMargin":I
    :cond_7
    const/16 v25, 0x0

    goto :goto_6

    .line 698
    .end local v14    # "lpMargin":I
    .end local v15    # "margin":I
    .end local v22    # "range":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->f:I

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 699
    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->f:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    .line 702
    :cond_9
    move/from16 v24, v16

    goto :goto_7

    .line 711
    :cond_a
    sub-int v7, v24, v17

    .line 712
    .restart local v7    # "childLeft":I
    add-int v8, v7, v10

    .restart local v8    # "childRight":I
    goto :goto_8

    .line 722
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v17    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e

    .line 723
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 724
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->f:I

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 725
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(F)V

    .line 727
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->a:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    .line 736
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;)V

    .line 739
    :cond_e
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->t:Z

    .line 740
    return-void

    .line 732
    :cond_f
    const/4 v11, 0x0

    :goto_9
    if-ge v11, v6, :cond_d

    .line 733
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->a:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    .line 732
    add-int/lit8 v11, v11, 0x1

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 445
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 446
    .local v25, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    .line 447
    .local v27, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 448
    .local v12, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 450
    .local v13, "heightSize":I
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 456
    const/high16 v29, -0x80000000

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    .line 458
    if-nez v25, :cond_0

    .line 460
    const/16 v27, 0x12c

    .line 479
    :cond_0
    :goto_0
    const/16 v16, 0x0

    .line 480
    .local v16, "layoutHeight":I
    const/16 v18, 0x0

    .line 481
    .local v18, "maxLayoutHeight":I
    sparse-switch v12, :sswitch_data_0

    .line 490
    :goto_1
    const/16 v23, 0x0

    .line 491
    .local v23, "weightSum":F
    const/4 v4, 0x0

    .line 492
    .local v4, "canSlide":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v29

    sub-int v29, v27, v29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v30

    sub-int v24, v29, v30

    .line 493
    .local v24, "widthAvailable":I
    move/from16 v26, v24

    .line 494
    .local v26, "widthRemaining":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    .line 496
    .local v6, "childCount":I
    const/16 v29, 0x2

    move/from16 v0, v29

    if-le v6, v0, :cond_1

    .line 497
    const-string/jumbo v29, "SlidingPaneLayout"

    const-string/jumbo v30, "onMeasure: More than two child views are not supported."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_1
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    .line 505
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v6, :cond_e

    .line 506
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 507
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 509
    .local v17, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 510
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z

    .line 505
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 463
    .end local v4    # "canSlide":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v15    # "i":I
    .end local v16    # "layoutHeight":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v18    # "maxLayoutHeight":I
    .end local v23    # "weightSum":F
    .end local v24    # "widthAvailable":I
    .end local v26    # "widthRemaining":I
    :cond_3
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string/jumbo v30, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 465
    :cond_4
    if-nez v12, :cond_0

    .line 466
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v29

    if-eqz v29, :cond_5

    .line 470
    if-nez v12, :cond_0

    .line 471
    const/high16 v12, -0x80000000

    .line 472
    const/16 v13, 0x12c

    goto :goto_0

    .line 475
    :cond_5
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string/jumbo v30, "Height must not be UNSPECIFIED"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 483
    .restart local v16    # "layoutHeight":I
    .restart local v18    # "maxLayoutHeight":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v29

    sub-int v29, v13, v29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    sub-int v18, v29, v30

    move/from16 v16, v18

    .line 484
    goto/16 :goto_1

    .line 486
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v29

    sub-int v29, v13, v29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    sub-int v18, v29, v30

    goto/16 :goto_1

    .line 514
    .restart local v4    # "canSlide":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v15    # "i":I
    .restart local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .restart local v23    # "weightSum":F
    .restart local v24    # "widthAvailable":I
    .restart local v26    # "widthRemaining":I
    :cond_6
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_7

    .line 515
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F

    move/from16 v29, v0

    add-float v23, v23, v29

    .line 519
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 523
    :cond_7
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v14, v29, v30

    .line 524
    .local v14, "horizontalMargin":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 525
    sub-int v29, v24, v14

    const/high16 v30, -0x80000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 535
    .local v10, "childWidthSpec":I
    :goto_4
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    .line 536
    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 543
    .local v8, "childHeightSpec":I
    :goto_5
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    .line 544
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 545
    .local v9, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 547
    .local v7, "childHeight":I
    const/high16 v29, -0x80000000

    move/from16 v0, v29

    if-ne v12, v0, :cond_8

    move/from16 v0, v16

    if-le v7, v0, :cond_8

    .line 548
    move/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 551
    :cond_8
    sub-int v26, v26, v9

    .line 552
    if-gez v26, :cond_d

    const/16 v29, 0x1

    :goto_6
    move/from16 v0, v29

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z

    or-int v4, v4, v29

    .line 553
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 554
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    goto/16 :goto_3

    .line 527
    .end local v7    # "childHeight":I
    .end local v8    # "childHeightSpec":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthSpec":I
    :cond_9
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    .line 528
    sub-int v29, v24, v14

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childWidthSpec":I
    goto :goto_4

    .line 531
    .end local v10    # "childWidthSpec":I
    :cond_a
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childWidthSpec":I
    goto :goto_4

    .line 537
    :cond_b
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 538
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_5

    .line 540
    .end local v8    # "childHeightSpec":I
    :cond_c
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto/16 :goto_5

    .line 552
    .restart local v7    # "childHeight":I
    .restart local v9    # "childWidth":I
    :cond_d
    const/16 v29, 0x0

    goto :goto_6

    .line 559
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "childHeightSpec":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthSpec":I
    .end local v14    # "horizontalMargin":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    :cond_e
    if-nez v4, :cond_f

    const/16 v29, 0x0

    cmpl-float v29, v23, v29

    if-lez v29, :cond_1c

    .line 560
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->n:I

    move/from16 v29, v0

    sub-int v11, v24, v29

    .line 562
    .local v11, "fixedPanelWidthLimit":I
    const/4 v15, 0x0

    :goto_7
    if-ge v15, v6, :cond_1c

    .line 563
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 565
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_11

    .line 569
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 571
    .restart local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_11

    .line 575
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-nez v29, :cond_12

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_12

    const/16 v22, 0x1

    .line 576
    .local v22, "skippedFirstPass":Z
    :goto_8
    if-eqz v22, :cond_13

    const/16 v20, 0x0

    .line 577
    .local v20, "measuredWidth":I
    :goto_9
    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v5, v0, :cond_17

    .line 578
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-gez v29, :cond_11

    move/from16 v0, v20

    if-gt v0, v11, :cond_10

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_11

    .line 582
    :cond_10
    if-eqz v22, :cond_16

    .line 585
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 586
    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 599
    .restart local v8    # "childHeightSpec":I
    :goto_a
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v29

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 601
    .restart local v10    # "childWidthSpec":I
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    .line 562
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v20    # "measuredWidth":I
    .end local v22    # "skippedFirstPass":Z
    :cond_11
    :goto_b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7

    .line 575
    .restart local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    :cond_12
    const/16 v22, 0x0

    goto :goto_8

    .line 576
    .restart local v22    # "skippedFirstPass":Z
    :cond_13
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    goto :goto_9

    .line 588
    .restart local v20    # "measuredWidth":I
    :cond_14
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_15

    .line 589
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_a

    .line 592
    .end local v8    # "childHeightSpec":I
    :cond_15
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_a

    .line 597
    .end local v8    # "childHeightSpec":I
    :cond_16
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    .line 596
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_a

    .line 603
    .end local v8    # "childHeightSpec":I
    :cond_17
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_11

    .line 605
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-nez v29, :cond_1a

    .line 607
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_18

    .line 608
    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 622
    .restart local v8    # "childHeightSpec":I
    :goto_c
    if-eqz v4, :cond_1b

    .line 624
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v14, v29, v30

    .line 625
    .restart local v14    # "horizontalMargin":I
    sub-int v21, v24, v14

    .line 626
    .local v21, "newWidth":I
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 628
    .restart local v10    # "childWidthSpec":I
    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    .line 629
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_b

    .line 610
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v14    # "horizontalMargin":I
    .end local v21    # "newWidth":I
    :cond_18
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_19

    .line 611
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    .line 614
    .end local v8    # "childHeightSpec":I
    :cond_19
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    .line 619
    .end local v8    # "childHeightSpec":I
    :cond_1a
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    .line 618
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    .line 633
    :cond_1b
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 634
    .local v28, "widthToDistribute":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F

    move/from16 v29, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    div-float v29, v29, v23

    move/from16 v0, v29

    float-to-int v3, v0

    .line 635
    .local v3, "addedWidth":I
    add-int v29, v20, v3

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 637
    .restart local v10    # "childWidthSpec":I
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_b

    .line 643
    .end local v3    # "addedWidth":I
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v11    # "fixedPanelWidthLimit":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v20    # "measuredWidth":I
    .end local v22    # "skippedFirstPass":Z
    .end local v28    # "widthToDistribute":I
    :cond_1c
    move/from16 v20, v27

    .line 644
    .restart local v20    # "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v29

    add-int v29, v29, v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    add-int v19, v29, v30

    .line 646
    .local v19, "measuredHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 647
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    move-object/from16 v29, v0

    .line 2423
    move-object/from16 v0, v29

    iget v0, v0, Lhu;->a:I

    move/from16 v29, v0

    .line 649
    if-eqz v29, :cond_1d

    if-nez v4, :cond_1d

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lhu;->b()V

    .line 653
    :cond_1d
    return-void

    .line 481
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1267
    instance-of v1, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    if-nez v1, :cond_0

    .line 1268
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1281
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1272
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    .line 1273
    .local v0, "ss":Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1275
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v1, :cond_3

    .line 7868
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->b(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7869
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:Z

    .line 1280
    :cond_2
    :goto_1
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:Z

    goto :goto_0

    .line 7908
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(I)Z

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 1257
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1259
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4937
    .local v0, "ss":Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    .line 1260
    if-eqz v2, :cond_2

    .line 5918
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1260
    :goto_0
    iput-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 1262
    return-object v0

    .line 5918
    :cond_1
    const/4 v2, 0x0

    .line 1260
    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 744
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 746
    if-eq p1, p3, :cond_0

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Z

    .line 749
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 821
    iget-boolean v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    if-nez v5, :cond_0

    .line 822
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 856
    :goto_0
    return v5

    .line 825
    :cond_0
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    invoke-virtual {v5, p1}, Lhu;->b(Landroid/view/MotionEvent;)V

    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 856
    :cond_1
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 831
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 832
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 833
    .local v4, "y":F
    iput v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:F

    .line 834
    iput v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:F

    goto :goto_1

    .line 839
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_1
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 841
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 842
    .restart local v4    # "y":F
    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:F

    sub-float v0, v3, v5

    .line 843
    .local v0, "dx":F
    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:F

    sub-float v1, v4, v5

    .line 844
    .local v1, "dy":F
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    .line 4492
    iget v2, v5, Lhu;->b:I

    .line 845
    .local v2, "slop":I
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    mul-int v6, v2, v2

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    float-to-int v6, v3

    float-to-int v7, v4

    .line 846
    invoke-static {v5, v6, v7}, Lhu;->b(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 848
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->a(I)Z

    goto :goto_1

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 753
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 754
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Z

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:Z

    .line 757
    :cond_0
    return-void

    .line 755
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 316
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:I

    .line 317
    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$d;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/SlidingPaneLayout$d;

    .prologue
    .line 328
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Landroid/support/v4/widget/SlidingPaneLayout$d;

    .line 329
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0
    .param p1, "parallaxBy"    # I

    .prologue
    .line 279
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:I

    .line 280
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    .line 281
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1075
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1076
    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1085
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:Landroid/graphics/drawable/Drawable;

    .line 1086
    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1095
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 1096
    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1109
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1110
    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1119
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1120
    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1129
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 1130
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 298
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->a:I

    .line 299
    return-void
.end method
