.class public Landroid/support/transition/ChangeTransform;
.super Landroid/support/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ChangeTransform$b;,
        Landroid/support/transition/ChangeTransform$a;,
        Landroid/support/transition/ChangeTransform$c;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/transition/ChangeTransform$b;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/transition/ChangeTransform$b;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Z


# instance fields
.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android:changeTransform:matrix"

    aput-object v3, v2, v1

    const-string/jumbo v3, "android:changeTransform:transforms"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string/jumbo v4, "android:changeTransform:parentMatrix"

    aput-object v4, v2, v3

    sput-object v2, Landroid/support/transition/ChangeTransform;->a:[Ljava/lang/String;

    .line 67
    new-instance v2, Landroid/support/transition/ChangeTransform$1;

    const-class v3, [F

    const-string/jumbo v4, "nonTranslations"

    invoke-direct {v2, v3, v4}, Landroid/support/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Landroid/support/transition/ChangeTransform;->b:Landroid/util/Property;

    .line 83
    new-instance v2, Landroid/support/transition/ChangeTransform$2;

    const-class v3, Landroid/graphics/PointF;

    const-string/jumbo v4, "translations"

    invoke-direct {v2, v3, v4}, Landroid/support/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Landroid/support/transition/ChangeTransform;->c:Landroid/util/Property;

    .line 99
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    :goto_0
    sput-boolean v0, Landroid/support/transition/ChangeTransform;->d:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 101
    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->e:Z

    .line 102
    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->f:Z

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ChangeTransform;->g:Landroid/graphics/Matrix;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    iput-boolean v3, p0, Landroid/support/transition/ChangeTransform;->e:Z

    .line 102
    iput-boolean v3, p0, Landroid/support/transition/ChangeTransform;->f:Z

    .line 103
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/support/transition/ChangeTransform;->g:Landroid/graphics/Matrix;

    .line 110
    sget-object v1, Lbc;->g:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p2

    .line 111
    check-cast v1, Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v2, "reparentWithOverlay"

    invoke-static {v0, v1, v2, v3, v3}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/transition/ChangeTransform;->e:Z

    .line 113
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    const-string/jumbo v1, "reparent"

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2, v3}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/transition/ChangeTransform;->f:Z

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    return-void
.end method

.method static synthetic a(Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-static {p0}, Landroid/support/transition/ChangeTransform;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # F
    .param p7, "x7"    # F
    .param p8, "x8"    # F

    .prologue
    .line 47
    invoke-static/range {p0 .. p8}, Landroid/support/transition/ChangeTransform;->b(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lbh;Lbh;)V
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lbh;
    .param p3, "endValues"    # Lbh;

    .prologue
    .line 383
    iget-object v5, p3, Lbh;->b:Landroid/view/View;

    .line 385
    .local v5, "view":Landroid/view/View;
    iget-object v6, p3, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v7, "android:changeTransform:parentMatrix"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 386
    .local v0, "endMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 387
    .local v3, "localEndMatrix":Landroid/graphics/Matrix;
    invoke-static {p1, v3}, Lbs;->b(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 389
    invoke-static {v5, p1, v3}, Laj;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Lai;

    move-result-object v1

    .line 390
    .local v1, "ghostView":Lai;
    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v6, p2, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v7, "android:changeTransform:parent"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p2, Lbh;->b:Landroid/view/View;

    invoke-interface {v1, v6, v7}, Lai;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 397
    move-object v4, p0

    .line 398
    .local v4, "outerTransition":Landroid/support/transition/Transition;
    :goto_1
    iget-object v6, v4, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v6, :cond_2

    .line 399
    iget-object v4, v4, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    goto :goto_1

    .line 402
    :cond_2
    new-instance v2, Landroid/support/transition/ChangeTransform$a;

    invoke-direct {v2, v5, v1}, Landroid/support/transition/ChangeTransform$a;-><init>(Landroid/view/View;Lai;)V

    .line 403
    .local v2, "listener":Landroid/support/transition/ChangeTransform$a;
    invoke-virtual {v4, v2}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$d;)Landroid/support/transition/Transition;

    .line 407
    sget-boolean v6, Landroid/support/transition/ChangeTransform;->d:Z

    if-eqz v6, :cond_0

    .line 408
    iget-object v6, p2, Lbh;->b:Landroid/view/View;

    iget-object v7, p3, Lbh;->b:Landroid/view/View;

    if-eq v6, v7, :cond_3

    .line 409
    iget-object v6, p2, Lbh;->b:Landroid/view/View;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lbs;->a(Landroid/view/View;F)V

    .line 411
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Lbs;->a(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private a(Lbh;)V
    .locals 9
    .param p1, "transitionValues"    # Lbh;

    .prologue
    .line 192
    iget-object v5, p1, Lbh;->b:Landroid/view/View;

    .line 193
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v6, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v7, "android:changeTransform:parent"

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v4, Landroid/support/transition/ChangeTransform$c;

    invoke-direct {v4, v5}, Landroid/support/transition/ChangeTransform$c;-><init>(Landroid/view/View;)V

    .line 198
    .local v4, "transforms":Landroid/support/transition/ChangeTransform$c;
    iget-object v6, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v7, "android:changeTransform:transforms"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v5}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 200
    .local v0, "matrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 201
    :cond_2
    const/4 v0, 0x0

    .line 205
    :goto_1
    iget-object v6, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v7, "android:changeTransform:matrix"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-boolean v6, p0, Landroid/support/transition/ChangeTransform;->f:Z

    if-eqz v6, :cond_0

    .line 207
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 208
    .local v3, "parentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 209
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-static {v2, v3}, Lbs;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 210
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 211
    iget-object v6, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v7, "android:changeTransform:parentMatrix"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v6, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v7, "android:changeTransform:intermediateMatrix"

    sget v8, Lay$a;->transition_transform:I

    .line 213
    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 212
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v6, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v7, "android:changeTransform:intermediateParentMatrix"

    sget v8, Lay$a;->parent_matrix:I

    .line 215
    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 214
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    .end local v2    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "parentMatrix":Landroid/graphics/Matrix;
    :cond_3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .local v1, "matrix":Landroid/graphics/Matrix;
    move-object v0, v1

    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .restart local v0    # "matrix":Landroid/graphics/Matrix;
    goto :goto_1
.end method

.method static synthetic a(Landroid/support/transition/ChangeTransform;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/transition/ChangeTransform;

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/support/transition/ChangeTransform;->e:Z

    return v0
.end method

.method private static b(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 435
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v0 .. v8}, Landroid/support/transition/ChangeTransform;->b(Landroid/view/View;FFFFFFFF)V

    .line 436
    return-void
.end method

.method private static b(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "rotationX"    # F
    .param p7, "rotationY"    # F
    .param p8, "rotationZ"    # F

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 442
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 443
    invoke-static {p0, p3}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;F)V

    .line 444
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 445
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 446
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 447
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 448
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    .line 449
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
    .line 233
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeTransform;->a(Lbh;)V

    .line 234
    return-void
.end method

.method public captureStartValues(Lbh;)V
    .locals 2
    .param p1, "transitionValues"    # Lbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeTransform;->a(Lbh;)V

    .line 222
    sget-boolean v0, Landroid/support/transition/ChangeTransform;->d:Z

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p1, Lbh;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Lbh;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 229
    :cond_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lbh;Lbh;)Landroid/animation/Animator;
    .locals 18
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Lbh;
    .param p3, "endValues"    # Lbh;

    .prologue
    .line 239
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move-object/from16 v0, p2

    iget-object v1, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeTransform:parent"

    .line 240
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p3

    iget-object v1, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeTransform:parent"

    .line 241
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    :cond_0
    const/4 v12, 0x0

    .line 276
    :cond_1
    :goto_0
    return-object v12

    .line 245
    :cond_2
    move-object/from16 v0, p2

    iget-object v1, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeTransform:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 246
    .local v10, "startParent":Landroid/view/ViewGroup;
    move-object/from16 v0, p3

    iget-object v1, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeTransform:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 247
    .local v8, "endParent":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/transition/ChangeTransform;->f:Z

    if-eqz v1, :cond_c

    .line 1369
    const/4 v1, 0x0

    .line 1370
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1371
    :cond_3
    if-ne v10, v8, :cond_9

    const/4 v1, 0x1

    .line 247
    :cond_4
    :goto_1
    if-nez v1, :cond_c

    const/4 v3, 0x1

    .line 249
    .local v3, "handleParentChange":Z
    :goto_2
    move-object/from16 v0, p2

    iget-object v1, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeTransform:intermediateMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Matrix;

    .line 250
    .local v9, "startMatrix":Landroid/graphics/Matrix;
    if-eqz v9, :cond_5

    .line 251
    move-object/from16 v0, p2

    iget-object v1, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeTransform:matrix"

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_5
    move-object/from16 v0, p2

    iget-object v1, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeTransform:intermediateParentMatrix"

    .line 255
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Matrix;

    .line 256
    .local v11, "startParentMatrix":Landroid/graphics/Matrix;
    if-eqz v11, :cond_6

    .line 257
    move-object/from16 v0, p2

    iget-object v1, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_6
    if-eqz v3, :cond_7

    .line 1416
    move-object/from16 v0, p3

    iget-object v1, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 1417
    move-object/from16 v0, p3

    iget-object v2, v0, Lbh;->b:Landroid/view/View;

    sget v4, Lay$a;->parent_matrix:I

    invoke-virtual {v2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/transition/ChangeTransform;->g:Landroid/graphics/Matrix;

    .line 1420
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 1421
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1423
    move-object/from16 v0, p2

    iget-object v1, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeTransform:matrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 1424
    if-nez v1, :cond_10

    .line 1425
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1426
    move-object/from16 v0, p2

    iget-object v2, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v5, "android:changeTransform:matrix"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1429
    :goto_3
    move-object/from16 v0, p2

    iget-object v1, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v5, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 1430
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1431
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 2281
    :cond_7
    move-object/from16 v0, p2

    iget-object v1, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeTransform:matrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 2282
    move-object/from16 v0, p3

    iget-object v2, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v4, "android:changeTransform:matrix"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    .line 2284
    if-nez v1, :cond_8

    .line 2285
    sget-object v1, Lao;->a:Landroid/graphics/Matrix;

    .line 2288
    :cond_8
    if-nez v2, :cond_f

    .line 2289
    sget-object v4, Lao;->a:Landroid/graphics/Matrix;

    .line 2292
    :goto_4
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2293
    const/4 v12, 0x0

    .line 269
    .local v12, "transformAnimator":Landroid/animation/ObjectAnimator;
    :goto_5
    if-eqz v3, :cond_e

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/transition/ChangeTransform;->e:Z

    if-eqz v1, :cond_e

    .line 270
    invoke-direct/range {p0 .. p3}, Landroid/support/transition/ChangeTransform;->a(Landroid/view/ViewGroup;Lbh;Lbh;)V

    goto/16 :goto_0

    .line 1371
    .end local v3    # "handleParentChange":Z
    .end local v9    # "startMatrix":Landroid/graphics/Matrix;
    .end local v11    # "startParentMatrix":Landroid/graphics/Matrix;
    .end local v12    # "transformAnimator":Landroid/animation/ObjectAnimator;
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1373
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Landroid/support/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Lbh;

    move-result-object v2

    .line 1374
    if-eqz v2, :cond_4

    .line 1375
    iget-object v1, v2, Lbh;->b:Landroid/view/View;

    if-ne v8, v1, :cond_b

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 247
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 2296
    .restart local v3    # "handleParentChange":Z
    .restart local v9    # "startMatrix":Landroid/graphics/Matrix;
    .restart local v11    # "startParentMatrix":Landroid/graphics/Matrix;
    :cond_d
    move-object/from16 v0, p3

    iget-object v2, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v5, "android:changeTransform:transforms"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/transition/ChangeTransform$c;

    .line 2299
    move-object/from16 v0, p3

    iget-object v5, v0, Lbh;->b:Landroid/view/View;

    .line 2300
    invoke-static {v5}, Landroid/support/transition/ChangeTransform;->b(Landroid/view/View;)V

    .line 2302
    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 2303
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2304
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 2305
    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2306
    new-instance v7, Landroid/support/transition/ChangeTransform$b;

    invoke-direct {v7, v5, v2}, Landroid/support/transition/ChangeTransform$b;-><init>(Landroid/view/View;[F)V

    .line 2309
    sget-object v13, Landroid/support/transition/ChangeTransform;->b:Landroid/util/Property;

    new-instance v14, Laf;

    const/16 v15, 0x9

    new-array v15, v15, [F

    invoke-direct {v14, v15}, Laf;-><init>([F)V

    const/4 v15, 0x2

    new-array v15, v15, [[F

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const/16 v16, 0x1

    aput-object v1, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 2312
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeTransform;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v14

    const/4 v15, 0x2

    aget v15, v2, v15

    const/16 v16, 0x5

    aget v2, v2, v16

    const/16 v16, 0x2

    aget v16, v1, v16

    const/16 v17, 0x5

    aget v1, v1, v17

    move/from16 v0, v16

    invoke-virtual {v14, v15, v2, v0, v1}, Landroid/support/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 2315
    sget-object v2, Landroid/support/transition/ChangeTransform;->c:Landroid/util/Property;

    invoke-static {v2, v1}, Lau;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 2317
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v13, v2, v14

    const/4 v13, 0x1

    aput-object v1, v2, v13

    invoke-static {v7, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2322
    new-instance v1, Landroid/support/transition/ChangeTransform$3;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/support/transition/ChangeTransform$3;-><init>(Landroid/support/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/support/transition/ChangeTransform$c;Landroid/support/transition/ChangeTransform$b;)V

    .line 2363
    invoke-virtual {v12, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2364
    invoke-static {v12, v1}, Laa;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    goto/16 :goto_5

    .line 271
    .restart local v12    # "transformAnimator":Landroid/animation/ObjectAnimator;
    :cond_e
    sget-boolean v1, Landroid/support/transition/ChangeTransform;->d:Z

    if-nez v1, :cond_1

    .line 273
    move-object/from16 v0, p2

    iget-object v1, v0, Lbh;->b:Landroid/view/View;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    goto/16 :goto_0

    .end local v12    # "transformAnimator":Landroid/animation/ObjectAnimator;
    :cond_f
    move-object v4, v2

    goto/16 :goto_4

    :cond_10
    move-object v2, v1

    goto/16 :goto_3
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Landroid/support/transition/ChangeTransform;->a:[Ljava/lang/String;

    return-object v0
.end method
