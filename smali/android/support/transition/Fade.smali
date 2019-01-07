.class public Landroid/support/transition/Fade;
.super Landroid/support/transition/Visibility;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Fade$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fadingMode"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    .line 90
    invoke-virtual {p0, p1}, Landroid/support/transition/Fade;->a(I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    sget-object v2, Lbc;->f:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "a":Landroid/content/res/TypedArray;
    check-cast p2, Landroid/content/res/XmlResourceParser;

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    const-string/jumbo v2, "fadingMode"

    const/4 v3, 0x0

    .line 1132
    iget v4, p0, Landroid/support/transition/Visibility;->a:I

    .line 103
    invoke-static {v0, p2, v2, v3, v4}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 105
    .local v1, "fadingMode":I
    invoke-virtual {p0, v1}, Landroid/support/transition/Fade;->a(I)V

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method

.method private static a(Lbh;F)F
    .locals 4
    .param p0, "startValues"    # Lbh;
    .param p1, "fallbackValue"    # F

    .prologue
    .line 167
    move v0, p1

    .line 168
    .local v0, "startAlpha":F
    if-eqz p0, :cond_0

    .line 169
    iget-object v2, p0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v3, "android:fade:transitionAlpha"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 170
    .local v1, "startAlphaFloat":Ljava/lang/Float;
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 174
    .end local v1    # "startAlphaFloat":Ljava/lang/Float;
    :cond_0
    return v0
.end method

.method private a(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F

    .prologue
    .line 120
    cmpl-float v2, p2, p3

    if-nez v2, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {p1, p2}, Lbs;->a(Landroid/view/View;F)V

    .line 124
    sget-object v2, Lbs;->a:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 129
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/support/transition/Fade$a;

    invoke-direct {v1, p1}, Landroid/support/transition/Fade$a;-><init>(Landroid/view/View;)V

    .line 130
    .local v1, "listener":Landroid/support/transition/Fade$a;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 131
    new-instance v2, Landroid/support/transition/Fade$1;

    invoke-direct {v2, p0, p1}, Landroid/support/transition/Fade$1;-><init>(Landroid/support/transition/Fade;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/support/transition/Fade;->addListener(Landroid/support/transition/Transition$d;)Landroid/support/transition/Transition;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Lbh;)Landroid/animation/Animator;
    .locals 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Lbh;

    .prologue
    .line 161
    invoke-static {p2}, Lbs;->c(Landroid/view/View;)V

    .line 162
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p3, v1}, Landroid/support/transition/Fade;->a(Lbh;F)F

    move-result v0

    .line 163
    .local v0, "startAlpha":F
    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/transition/Fade;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Lbh;Lbh;)Landroid/animation/Animator;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Lbh;
    .param p4, "endValues"    # Lbh;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 151
    const/4 v1, 0x0

    invoke-static {p3, v1}, Landroid/support/transition/Fade;->a(Lbh;F)F

    move-result v0

    .line 152
    .local v0, "startAlpha":F
    cmpl-float v1, v0, v2

    if-nez v1, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    :cond_0
    invoke-direct {p0, p2, v0, v2}, Landroid/support/transition/Fade;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method public captureStartValues(Lbh;)V
    .locals 3
    .param p1, "transitionValues"    # Lbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->captureStartValues(Lbh;)V

    .line 112
    iget-object v0, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android:fade:transitionAlpha"

    iget-object v2, p1, Lbh;->b:Landroid/view/View;

    .line 113
    invoke-static {v2}, Lbs;->b(Landroid/view/View;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 112
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
