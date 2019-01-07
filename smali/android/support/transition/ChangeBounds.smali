.class public Landroid/support/transition/ChangeBounds;
.super Landroid/support/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ChangeBounds$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/transition/ChangeBounds$a;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/transition/ChangeBounds$a;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Laz;


# instance fields
.field private h:[I

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android:changeBounds:clip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/ChangeBounds;->a:[Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/support/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->b:Landroid/util/Property;

    .line 85
    new-instance v0, Landroid/support/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->c:Landroid/util/Property;

    .line 98
    new-instance v0, Landroid/support/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->d:Landroid/util/Property;

    .line 111
    new-instance v0, Landroid/support/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->e:Landroid/util/Property;

    .line 128
    new-instance v0, Landroid/support/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->f:Landroid/util/Property;

    .line 145
    new-instance v0, Landroid/support/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->g:Landroid/util/Property;

    .line 166
    new-instance v0, Laz;

    invoke-direct {v0}, Laz;-><init>()V

    sput-object v0, Landroid/support/transition/ChangeBounds;->k:Laz;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/ChangeBounds;->h:[I

    .line 163
    iput-boolean v1, p0, Landroid/support/transition/ChangeBounds;->i:Z

    .line 164
    iput-boolean v1, p0, Landroid/support/transition/ChangeBounds;->j:Z

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 172
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/transition/ChangeBounds;->h:[I

    .line 163
    iput-boolean v3, p0, Landroid/support/transition/ChangeBounds;->i:Z

    .line 164
    iput-boolean v3, p0, Landroid/support/transition/ChangeBounds;->j:Z

    .line 174
    sget-object v2, Lbc;->d:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, "a":Landroid/content/res/TypedArray;
    check-cast p2, Landroid/content/res/XmlResourceParser;

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    const-string/jumbo v2, "resizeClip"

    invoke-static {v0, p2, v2, v3, v3}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    .line 177
    .local v1, "resizeClip":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1201
    iput-boolean v1, p0, Landroid/support/transition/ChangeBounds;->i:Z

    .line 179
    return-void
.end method

.method private a(Lbh;)V
    .locals 8
    .param p1, "values"    # Lbh;

    .prologue
    .line 216
    iget-object v0, p1, Lbh;->b:Landroid/view/View;

    .line 218
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->A(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    :cond_0
    iget-object v1, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 219
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:parent"

    iget-object v3, p1, Lbh;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-boolean v1, p0, Landroid/support/transition/ChangeBounds;->i:Z

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:clip"

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->C(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_1
    return-void
.end method


# virtual methods
.method public captureEndValues(Lbh;)V
    .locals 0
    .param p1, "transitionValues"    # Lbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBounds;->a(Lbh;)V

    .line 241
    return-void
.end method

.method public captureStartValues(Lbh;)V
    .locals 0
    .param p1, "transitionValues"    # Lbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBounds;->a(Lbh;)V

    .line 236
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lbh;Lbh;)Landroid/animation/Animator;
    .locals 46
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Lbh;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Lbh;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 260
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 261
    :cond_0
    const/4 v12, 0x0

    .line 454
    :cond_1
    :goto_0
    return-object v12

    .line 263
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lbh;->a:Ljava/util/Map;

    move-object/from16 v35, v0

    .line 264
    .local v35, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    iget-object v0, v0, Lbh;->a:Ljava/util/Map;

    move-object/from16 v21, v0

    .line 265
    .local v21, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "android:changeBounds:parent"

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/ViewGroup;

    .line 266
    .local v34, "startParent":Landroid/view/ViewGroup;
    const-string/jumbo v4, "android:changeBounds:parent"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 267
    .local v20, "endParent":Landroid/view/ViewGroup;
    if-eqz v34, :cond_3

    if-nez v20, :cond_4

    .line 268
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 270
    :cond_4
    move-object/from16 v0, p3

    iget-object v6, v0, Lbh;->b:Landroid/view/View;

    .line 272
    .local v6, "view":Landroid/view/View;
    move-object/from16 v0, p2

    iget-object v4, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/graphics/Rect;

    .line 273
    .local v30, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v4, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Rect;

    .line 274
    .local v17, "endBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    .line 275
    .local v33, "startLeft":I
    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 276
    .local v8, "endLeft":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    .line 277
    .local v37, "startTop":I
    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 278
    .local v9, "endTop":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    .line 279
    .local v36, "startRight":I
    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .line 280
    .local v10, "endRight":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    .line 281
    .local v29, "startBottom":I
    move-object/from16 v0, v17

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 282
    .local v11, "endBottom":I
    sub-int v38, v36, v33

    .line 283
    .local v38, "startWidth":I
    sub-int v32, v29, v37

    .line 284
    .local v32, "startHeight":I
    sub-int v22, v10, v8

    .line 285
    .local v22, "endWidth":I
    sub-int v19, v11, v9

    .line 286
    .local v19, "endHeight":I
    move-object/from16 v0, p2

    iget-object v4, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/graphics/Rect;

    .line 287
    .local v31, "startClip":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v4, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Rect;

    .line 288
    .local v18, "endClip":Landroid/graphics/Rect;
    const/16 v25, 0x0

    .line 289
    .local v25, "numChanges":I
    if-eqz v38, :cond_5

    if-nez v32, :cond_6

    :cond_5
    if-eqz v22, :cond_a

    if-eqz v19, :cond_a

    .line 290
    :cond_6
    move/from16 v0, v33

    if-ne v0, v8, :cond_7

    move/from16 v0, v37

    if-eq v0, v9, :cond_8

    :cond_7
    add-int/lit8 v25, v25, 0x1

    .line 291
    :cond_8
    move/from16 v0, v36

    if-ne v0, v10, :cond_9

    move/from16 v0, v29

    if-eq v0, v11, :cond_a

    :cond_9
    add-int/lit8 v25, v25, 0x1

    .line 293
    :cond_a
    if-eqz v31, :cond_b

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    if-nez v31, :cond_d

    if-eqz v18, :cond_d

    .line 295
    :cond_c
    add-int/lit8 v25, v25, 0x1

    .line 297
    :cond_d
    if-lez v25, :cond_18

    .line 299
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/transition/ChangeBounds;->i:Z

    if-nez v4, :cond_12

    .line 300
    move/from16 v0, v33

    move/from16 v1, v37

    move/from16 v2, v36

    move/from16 v3, v29

    invoke-static {v6, v0, v1, v2, v3}, Lbs;->a(Landroid/view/View;IIII)V

    .line 302
    const/4 v4, 0x2

    move/from16 v0, v25

    if-ne v0, v4, :cond_f

    .line 303
    move/from16 v0, v38

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    move/from16 v0, v32

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v33

    int-to-float v5, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v43, v0

    int-to-float v0, v8

    move/from16 v44, v0

    int-to-float v0, v9

    move/from16 v45, v0

    move/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/support/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v40

    .line 306
    .local v40, "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->g:Landroid/util/Property;

    move-object/from16 v0, v40

    invoke-static {v6, v4, v0}, Lap;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 387
    .end local v40    # "topLeftPath":Landroid/graphics/Path;
    .local v12, "anim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 388
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup;

    .line 389
    .local v26, "parent":Landroid/view/ViewGroup;
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lbn;->a(Landroid/view/ViewGroup;Z)V

    .line 390
    new-instance v41, Landroid/support/transition/ChangeBounds$9;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$9;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 417
    .local v41, "transitionListener":Landroid/support/transition/Transition$d;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/support/transition/ChangeBounds;->addListener(Landroid/support/transition/Transition$d;)Landroid/support/transition/Transition;

    goto/16 :goto_0

    .line 309
    .end local v12    # "anim":Landroid/animation/Animator;
    .end local v26    # "parent":Landroid/view/ViewGroup;
    .end local v41    # "transitionListener":Landroid/support/transition/Transition$d;
    :cond_e
    new-instance v42, Landroid/support/transition/ChangeBounds$a;

    move-object/from16 v0, v42

    invoke-direct {v0, v6}, Landroid/support/transition/ChangeBounds$a;-><init>(Landroid/view/View;)V

    .line 310
    .local v42, "viewBounds":Landroid/support/transition/ChangeBounds$a;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v33

    int-to-float v5, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v43, v0

    int-to-float v0, v8

    move/from16 v44, v0

    int-to-float v0, v9

    move/from16 v45, v0

    move/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/support/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v40

    .line 312
    .restart local v40    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->c:Landroid/util/Property;

    .line 313
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-static {v0, v4, v1}, Lap;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v39

    .line 315
    .local v39, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v36

    int-to-float v5, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v43, v0

    int-to-float v0, v10

    move/from16 v44, v0

    int-to-float v0, v11

    move/from16 v45, v0

    move/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/support/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v15

    .line 317
    .local v15, "bottomRightPath":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->d:Landroid/util/Property;

    move-object/from16 v0, v42

    invoke-static {v0, v4, v15}, Lap;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 319
    .local v14, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v28, Landroid/animation/AnimatorSet;

    invoke-direct/range {v28 .. v28}, Landroid/animation/AnimatorSet;-><init>()V

    .line 320
    .local v28, "set":Landroid/animation/AnimatorSet;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v39, v4, v5

    const/4 v5, 0x1

    aput-object v14, v4, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 321
    move-object/from16 v12, v28

    .line 322
    .restart local v12    # "anim":Landroid/animation/Animator;
    new-instance v4, Landroid/support/transition/ChangeBounds$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v4, v0, v1}, Landroid/support/transition/ChangeBounds$7;-><init>(Landroid/support/transition/ChangeBounds;Landroid/support/transition/ChangeBounds$a;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1

    .line 329
    .end local v12    # "anim":Landroid/animation/Animator;
    .end local v14    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v15    # "bottomRightPath":Landroid/graphics/Path;
    .end local v28    # "set":Landroid/animation/AnimatorSet;
    .end local v39    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    .end local v40    # "topLeftPath":Landroid/graphics/Path;
    .end local v42    # "viewBounds":Landroid/support/transition/ChangeBounds$a;
    :cond_f
    move/from16 v0, v33

    if-ne v0, v8, :cond_10

    move/from16 v0, v37

    if-eq v0, v9, :cond_11

    .line 330
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v33

    int-to-float v5, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v43, v0

    int-to-float v0, v8

    move/from16 v44, v0

    int-to-float v0, v9

    move/from16 v45, v0

    move/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/support/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v40

    .line 332
    .restart local v40    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->f:Landroid/util/Property;

    move-object/from16 v0, v40

    invoke-static {v6, v4, v0}, Lap;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 334
    .restart local v12    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 335
    .end local v12    # "anim":Landroid/animation/Animator;
    .end local v40    # "topLeftPath":Landroid/graphics/Path;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v36

    int-to-float v5, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v43, v0

    int-to-float v0, v10

    move/from16 v44, v0

    int-to-float v0, v11

    move/from16 v45, v0

    move/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/support/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v13

    .line 337
    .local v13, "bottomRight":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->e:Landroid/util/Property;

    invoke-static {v6, v4, v13}, Lap;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 339
    .restart local v12    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 341
    .end local v12    # "anim":Landroid/animation/Animator;
    .end local v13    # "bottomRight":Landroid/graphics/Path;
    :cond_12
    move/from16 v0, v38

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 342
    .local v24, "maxWidth":I
    move/from16 v0, v32

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 344
    .local v23, "maxHeight":I
    add-int v4, v33, v24

    add-int v5, v37, v23

    move/from16 v0, v33

    move/from16 v1, v37

    invoke-static {v6, v0, v1, v4, v5}, Lbs;->a(Landroid/view/View;IIII)V

    .line 347
    const/16 v27, 0x0

    .line 348
    .local v27, "positionAnimator":Landroid/animation/ObjectAnimator;
    move/from16 v0, v33

    if-ne v0, v8, :cond_13

    move/from16 v0, v37

    if-eq v0, v9, :cond_14

    .line 349
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v33

    int-to-float v5, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v43, v0

    int-to-float v0, v8

    move/from16 v44, v0

    int-to-float v0, v9

    move/from16 v45, v0

    move/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/support/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v40

    .line 351
    .restart local v40    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->g:Landroid/util/Property;

    move-object/from16 v0, v40

    invoke-static {v6, v4, v0}, Lap;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v27

    .line 354
    .end local v40    # "topLeftPath":Landroid/graphics/Path;
    :cond_14
    move-object/from16 v7, v18

    .line 355
    .local v7, "finalClip":Landroid/graphics/Rect;
    if-nez v31, :cond_15

    .line 356
    new-instance v31, Landroid/graphics/Rect;

    .end local v31    # "startClip":Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v38

    move/from16 v2, v32

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    .restart local v31    # "startClip":Landroid/graphics/Rect;
    :cond_15
    if-nez v18, :cond_16

    .line 359
    new-instance v18, Landroid/graphics/Rect;

    .end local v18    # "endClip":Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 361
    .restart local v18    # "endClip":Landroid/graphics/Rect;
    :cond_16
    const/16 v16, 0x0

    .line 362
    .local v16, "clipAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 363
    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 364
    const-string/jumbo v4, "clipBounds"

    sget-object v5, Landroid/support/transition/ChangeBounds;->k:Laz;

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object v31, v43, v44

    const/16 v44, 0x1

    aput-object v18, v43, v44

    move-object/from16 v0, v43

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 366
    new-instance v4, Landroid/support/transition/ChangeBounds$8;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Landroid/support/transition/ChangeBounds$8;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 384
    :cond_17
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lbg;->a(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v12

    .restart local v12    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 454
    .end local v7    # "finalClip":Landroid/graphics/Rect;
    .end local v12    # "anim":Landroid/animation/Animator;
    .end local v16    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v23    # "maxHeight":I
    .end local v24    # "maxWidth":I
    .end local v27    # "positionAnimator":Landroid/animation/ObjectAnimator;
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 184
    sget-object v0, Landroid/support/transition/ChangeBounds;->a:[Ljava/lang/String;

    return-object v0
.end method
