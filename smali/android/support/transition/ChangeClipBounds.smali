.class public Landroid/support/transition/ChangeClipBounds;
.super Landroid/support/transition/Transition;
.source "ChangeClipBounds.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android:clipBounds:clip"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/ChangeClipBounds;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private static a(Lbh;)V
    .locals 6
    .param p0, "values"    # Lbh;

    .prologue
    const/4 v5, 0x0

    .line 58
    iget-object v2, p0, Lbh;->b:Landroid/view/View;

    .line 59
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->C(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 64
    .local v1, "clip":Landroid/graphics/Rect;
    iget-object v3, p0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v4, "android:clipBounds:clip"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    if-nez v1, :cond_0

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 67
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v4, "android:clipBounds:bounds"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Lbh;)V
    .locals 0
    .param p1, "transitionValues"    # Lbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-static {p1}, Landroid/support/transition/ChangeClipBounds;->a(Lbh;)V

    .line 79
    return-void
.end method

.method public captureStartValues(Lbh;)V
    .locals 0
    .param p1, "transitionValues"    # Lbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-static {p1}, Landroid/support/transition/ChangeClipBounds;->a(Lbh;)V

    .line 74
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lbh;Lbh;)Landroid/animation/Animator;
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Lbh;
    .param p3, "endValues"    # Lbh;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 84
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v8, p2, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v9, "android:clipBounds:clip"

    .line 85
    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p3, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v9, "android:clipBounds:clip"

    .line 86
    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    iget-object v8, p2, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v9, "android:clipBounds:clip"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 90
    .local v5, "start":Landroid/graphics/Rect;
    iget-object v8, p3, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v9, "android:clipBounds:clip"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 91
    .local v1, "end":Landroid/graphics/Rect;
    if-nez v1, :cond_4

    move v2, v6

    .line 92
    .local v2, "endIsNull":Z
    :goto_1
    if-nez v5, :cond_2

    if-eqz v1, :cond_0

    .line 96
    :cond_2
    if-nez v5, :cond_5

    .line 97
    iget-object v8, p2, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v9, "android:clipBounds:bounds"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "start":Landroid/graphics/Rect;
    check-cast v5, Landroid/graphics/Rect;

    .line 101
    .restart local v5    # "start":Landroid/graphics/Rect;
    :cond_3
    :goto_2
    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 105
    iget-object v8, p3, Lbh;->b:Landroid/view/View;

    invoke-static {v8, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 106
    new-instance v4, Laz;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v4, v8}, Laz;-><init>(Landroid/graphics/Rect;)V

    .line 107
    .local v4, "evaluator":Laz;
    iget-object v8, p3, Lbh;->b:Landroid/view/View;

    sget-object v9, Lbs;->b:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/graphics/Rect;

    aput-object v5, v10, v7

    aput-object v1, v10, v6

    invoke-static {v8, v9, v4, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 109
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    if-eqz v2, :cond_0

    .line 110
    iget-object v3, p3, Lbh;->b:Landroid/view/View;

    .line 111
    .local v3, "endView":Landroid/view/View;
    new-instance v6, Landroid/support/transition/ChangeClipBounds$1;

    invoke-direct {v6, p0, v3}, Landroid/support/transition/ChangeClipBounds$1;-><init>(Landroid/support/transition/ChangeClipBounds;Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v2    # "endIsNull":Z
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "evaluator":Laz;
    :cond_4
    move v2, v7

    .line 91
    goto :goto_1

    .line 98
    .restart local v2    # "endIsNull":Z
    :cond_5
    if-nez v1, :cond_3

    .line 99
    iget-object v8, p3, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v9, "android:clipBounds:bounds"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "end":Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .restart local v1    # "end":Landroid/graphics/Rect;
    goto :goto_2
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/support/transition/ChangeClipBounds;->a:[Ljava/lang/String;

    return-object v0
.end method
