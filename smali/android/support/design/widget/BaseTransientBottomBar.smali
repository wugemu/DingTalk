.class public abstract Landroid/support/design/widget/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BaseTransientBottomBar$Behavior;,
        Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;,
        Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;,
        Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;,
        Landroid/support/design/widget/BaseTransientBottomBar$Duration;,
        Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;,
        Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/design/widget/BaseTransientBottomBar",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field private static final USE_OFFSET_API:Z

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback",
            "<TB;>;>;"
        }
    .end annotation
.end field

.field private final mContentViewCallback:Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field final mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

.field private final mTargetParent:Landroid/view/ViewGroup;

.field final mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$1;

    invoke-direct {v2}, Landroid/support/design/widget/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    .line 194
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "content"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "contentViewCallback"    # Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v4, 0x1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$3;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$3;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    iput-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Transient bottom bar must have non-null parent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_0
    if-nez p2, :cond_1

    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Transient bottom bar must have non-null content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_1
    if-nez p3, :cond_2

    .line 239
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Transient bottom bar must have non-null callback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_2
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    .line 243
    iput-object p3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContentViewCallback:Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;

    .line 244
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    .line 246
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 248
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 252
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroid/support/design/R$layout;->design_layout_snackbar:I

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    iput-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 254
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, p2}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->addView(Landroid/view/View;)V

    .line 256
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;I)V

    .line 258
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 262
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;Z)V

    .line 263
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$2;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$2;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Lgk;)V

    .line 276
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accessibility"

    .line 277
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 278
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/BaseTransientBottomBar;)Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContentViewCallback:Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    return v0
.end method

.method private animateViewOut(I)V
    .locals 8
    .param p1, "event"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const-wide/16 v6, 0xfa

    const/4 v4, 0x0

    .line 559
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    .line 560
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 561
    .local v1, "animator":Landroid/animation/ValueAnimator;
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v4, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 562
    sget-object v2, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 563
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 564
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$10;

    invoke-direct {v2, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$10;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 575
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$11;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$11;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 590
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 610
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/support/design/R$anim;->design_snackbar_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 594
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v2, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 595
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 596
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$12;

    invoke-direct {v2, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$12;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 608
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 1
    .param p1    # Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    .local p1, "callback":Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    if-nez p1, :cond_0

    .line 353
    :goto_0
    return-object p0

    .line 349
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    .line 352
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method animateViewIn()V
    .locals 8

    .prologue
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const-wide/16 v6, 0xfa

    const/4 v5, 0x0

    .line 497
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_1

    .line 498
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v2

    .line 499
    .local v2, "viewHeight":I
    sget-boolean v3, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    if-eqz v3, :cond_0

    .line 500
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 504
    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 505
    .local v1, "animator":Landroid/animation/ValueAnimator;
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v5

    const/4 v4, 0x1

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 506
    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 507
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 508
    new-instance v3, Landroid/support/design/widget/BaseTransientBottomBar$7;

    invoke-direct {v3, p0}, Landroid/support/design/widget/BaseTransientBottomBar$7;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 521
    new-instance v3, Landroid/support/design/widget/BaseTransientBottomBar$8;

    invoke-direct {v3, p0, v2}, Landroid/support/design/widget/BaseTransientBottomBar$8;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 536
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 556
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    .end local v2    # "viewHeight":I
    :goto_1
    return-void

    .line 502
    .restart local v2    # "viewHeight":I
    :cond_0
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    goto :goto_0

    .line 538
    .end local v2    # "viewHeight":I
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/design/R$anim;->design_snackbar_in:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 540
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 541
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 542
    new-instance v3, Landroid/support/design/widget/BaseTransientBottomBar$9;

    invoke-direct {v3, p0}, Landroid/support/design/widget/BaseTransientBottomBar$9;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 554
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3, v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 330
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 331
    return-void
.end method

.method dispatchDismiss(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 334
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/SnackbarManager;->dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V

    .line 335
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 300
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mDuration:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    return-object v0
.end method

.method final hideView(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 613
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 614
    invoke-direct {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewOut(I)V

    .line 619
    :goto_0
    return-void

    .line 617
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 2

    .prologue
    .line 380
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->isCurrent(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 2

    .prologue
    .line 388
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method onViewHidden(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    .line 635
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/SnackbarManager;->onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 636
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 639
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 640
    .local v0, "callbackCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 641
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v3, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    .line 640
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 644
    .end local v0    # "callbackCount":I
    .end local v1    # "i":I
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_1

    .line 650
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setVisibility(I)V

    .line 653
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 654
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 655
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "parent":Landroid/view/ViewParent;
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 657
    :cond_2
    return-void
.end method

.method onViewShown()V
    .locals 4

    .prologue
    .line 622
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/SnackbarManager;->onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 623
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 626
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 627
    .local v0, "callbackCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 628
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    .line 627
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 631
    .end local v0    # "callbackCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 1
    .param p1    # Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    .local p1, "callback":Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    if-nez p1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-object p0

    .line 368
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDuration(I)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 0
    .param p1, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iput p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mDuration:I

    .line 290
    return-object p0
.end method

.method shouldAnimate()Z
    .locals 1

    .prologue
    .line 663
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 323
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mDuration:I

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/SnackbarManager;->show(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    .line 324
    return-void
.end method

.method final showView()V
    .locals 5

    .prologue
    .line 405
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 406
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 408
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 410
    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 412
    .local v1, "clp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    new-instance v0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    .line 413
    .local v0, "behavior":Landroid/support/design/widget/BaseTransientBottomBar$Behavior;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v3}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->setStartAlphaSwipeDistance(F)V

    .line 414
    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v3}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->setEndAlphaSwipeDistance(F)V

    .line 415
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->setSwipeDirection(I)V

    .line 416
    new-instance v3, Landroid/support/design/widget/BaseTransientBottomBar$4;

    invoke-direct {v3, p0}, Landroid/support/design/widget/BaseTransientBottomBar$4;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v3}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 439
    invoke-virtual {v1, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 441
    const/16 v3, 0x50

    iput v3, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 444
    .end local v0    # "behavior":Landroid/support/design/widget/BaseTransientBottomBar$Behavior;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    .end local v1    # "clp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 447
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v4, Landroid/support/design/widget/BaseTransientBottomBar$5;

    invoke-direct {v4, p0}, Landroid/support/design/widget/BaseTransientBottomBar$5;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v3, v4}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;)V

    .line 469
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->A(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 470
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 472
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewIn()V

    .line 494
    :goto_0
    return-void

    .line 475
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewShown()V

    goto :goto_0

    .line 479
    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v4, Landroid/support/design/widget/BaseTransientBottomBar$6;

    invoke-direct {v4, p0}, Landroid/support/design/widget/BaseTransientBottomBar$6;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v3, v4}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V

    goto :goto_0
.end method
