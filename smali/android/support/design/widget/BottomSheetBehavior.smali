.class public Landroid/support/design/widget/BottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomSheetBehavior$SavedState;,
        Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;,
        Landroid/support/design/widget/BottomSheetBehavior$State;,
        Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field mActivePointerId:I

.field private mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field private final mDragCallback:Lhu$a;

.field mHideable:Z

.field private mIgnoreEvents:Z

.field private mInitialY:I

.field private mLastNestedScrollDy:I

.field mMaxOffset:I

.field private mMaximumVelocity:F

.field mMinOffset:I

.field private mNestedScrolled:Z

.field mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mParentHeight:I

.field private mPeekHeight:I

.field private mPeekHeightAuto:Z

.field private mPeekHeightMin:I

.field private mSkipCollapsed:Z

.field mState:I

.field mTouchingScrollingChild:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDragHelper:Lhu;

.field mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 140
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 639
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mDragCallback:Lhu$a;

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    const/4 v3, 0x4

    iput v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 639
    new-instance v3, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v3, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mDragCallback:Lhu$a;

    .line 181
    sget-object v3, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 184
    .local v2, "value":Landroid/util/TypedValue;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-ne v3, v4, :cond_0

    .line 185
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 190
    :goto_0
    sget v3, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 191
    sget v3, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 195
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaximumVelocity:F

    .line 196
    return-void

    .line 187
    .end local v1    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    sget v3, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0
.end method

.method public static from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Landroid/support/design/widget/BottomSheetBehavior",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 814
    .local p0, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 815
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-nez v2, :cond_0

    .line 816
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The view is not a child of CoordinatorLayout"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 818
    :cond_0
    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 819
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 820
    .local v0, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v2, v0, Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v2, :cond_1

    .line 821
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The view is not associated with BottomSheetBehavior"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 824
    :cond_1
    check-cast v0, Landroid/support/design/widget/BottomSheetBehavior;

    .end local v0    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    return-object v0
.end method

.method private getYVelocity()F
    .locals 3

    .prologue
    .line 616
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 617
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 579
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    .line 580
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 584
    :cond_0
    return-void
.end method


# virtual methods
.method dispatchOnSlide(I)V
    .locals 5
    .param p1, "top"    # I

    .prologue
    .line 724
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 725
    .local v0, "bottomSheet":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_0

    .line 726
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    if-le p1, v1, :cond_1

    .line 727
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 600
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->x(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 612
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 603
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 604
    check-cast v1, Landroid/view/ViewGroup;

    .line 605
    .local v1, "group":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 606
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 607
    .local v3, "scrollingChild":Landroid/view/View;
    if-eqz v3, :cond_1

    move-object p1, v3

    .line 608
    goto :goto_0

    .line 605
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 612
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    .end local v3    # "scrollingChild":Landroid/view/View;
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final getPeekHeight()I
    .locals 1

    .prologue
    .line 465
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    goto :goto_0
.end method

.method getPeekHeightMin()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 738
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    return v0
.end method

.method public getSkipCollapsed()Z
    .locals 1

    .prologue
    .line 507
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mSkipCollapsed:Z

    return v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 564
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    return v0
.end method

.method public isHideable()Z
    .locals 1

    .prologue
    .line 485
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 256
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    iput-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    .line 303
    :cond_0
    :goto_0
    return v5

    .line 260
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 262
    .local v0, "action":I
    if-nez v0, :cond_2

    .line 263
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    .line 265
    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_3

    .line 266
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 268
    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 269
    packed-switch v0, :pswitch_data_0

    .line 293
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Lhu;

    invoke-virtual {v3, p3}, Lhu;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v5, v4

    .line 294
    goto :goto_0

    .line 272
    :pswitch_1
    iput-boolean v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z

    .line 273
    iput v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    .line 275
    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-eqz v3, :cond_4

    .line 276
    iput-boolean v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    goto :goto_0

    .line 281
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 282
    .local v1, "initialX":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    .line 283
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 284
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 285
    .local v2, "scroll":Landroid/view/View;
    :goto_2
    if-eqz v2, :cond_5

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 286
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    .line 287
    iput-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z

    .line 289
    :cond_5
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    if-ne v3, v6, :cond_7

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    .line 290
    invoke-virtual {p1, p2, v1, v3}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    goto :goto_1

    .line 284
    .end local v2    # "scroll":Landroid/view/View;
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .restart local v2    # "scroll":Landroid/view/View;
    :cond_7
    move v3, v5

    .line 290
    goto :goto_3

    .line 299
    .end local v1    # "initialX":I
    .end local v2    # "scroll":Landroid/view/View;
    :cond_8
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 300
    .restart local v2    # "scroll":Landroid/view/View;
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v3, :cond_0

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-eq v3, v4, :cond_0

    .line 302
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v2, v3, v6}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    int-to-float v3, v3

    .line 303
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Lhu;

    .line 1492
    iget v6, v6, Lhu;->b:I

    .line 303
    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    move v5, v4

    goto/16 :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v5, 0x1

    .line 217
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->s(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->s(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    invoke-static {p2, v5}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;Z)V

    .line 220
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 222
    .local v1, "savedTop":I
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 224
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    .line 226
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-eqz v2, :cond_4

    .line 227
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    if-nez v2, :cond_1

    .line 228
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/R$dimen;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    .line 231
    :cond_1
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 235
    .local v0, "peekHeight":I
    :goto_0
    const/4 v2, 0x0

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    .line 236
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    .line 237
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 238
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 246
    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Lhu;

    if-nez v2, :cond_3

    .line 247
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mDragCallback:Lhu$a;

    invoke-static {p1, v2}, Lhu;->a(Landroid/view/ViewGroup;Lhu$a;)Lhu;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Lhu;

    .line 249
    :cond_3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 250
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 251
    return v5

    .line 233
    .end local v0    # "peekHeight":I
    :cond_4
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    .restart local v0    # "peekHeight":I
    goto :goto_0

    .line 239
    :cond_5
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 240
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    goto :goto_1

    .line 241
    :cond_6
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 242
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    goto :goto_1

    .line 243
    :cond_7
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-eq v2, v5, :cond_8

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 244
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v1, v2

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 2
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 424
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 5
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v4, 0x1

    .line 345
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 346
    .local v2, "scrollingChild":Landroid/view/View;
    if-eq p3, v2, :cond_0

    .line 377
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 350
    .local v0, "currentTop":I
    sub-int v1, v0, p5

    .line 351
    .local v1, "newTop":I
    if-lez p5, :cond_3

    .line 352
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    if-ge v1, v3, :cond_2

    .line 353
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int v3, v0, v3

    aput v3, p6, v4

    .line 354
    aget v3, p6, v4

    neg-int v3, v3

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 355
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 374
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 375
    iput p5, p0, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    .line 376
    iput-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    goto :goto_0

    .line 357
    :cond_2
    aput p5, p6, v4

    .line 358
    neg-int v3, p5

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 359
    invoke-virtual {p0, v4}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 361
    :cond_3
    if-gez p5, :cond_1

    .line 362
    const/4 v3, -0x1

    invoke-virtual {p3, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 363
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    if-le v1, v3, :cond_4

    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v3, :cond_5

    .line 364
    :cond_4
    aput p5, p6, v4

    .line 365
    neg-int v3, p5

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 366
    invoke-virtual {p0, v4}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 368
    :cond_5
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int v3, v0, v3

    aput v3, p6, v4

    .line 369
    aget v3, p6, v4

    neg-int v3, v3

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 370
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    move-object v0, p3

    check-cast v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    .line 206
    .local v0, "ss":Landroid/support/design/widget/BottomSheetBehavior$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 208
    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 209
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_1
    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    .line 337
    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    .line 338
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    .line 339
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    if-ne v3, v4, :cond_1

    .line 382
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne p3, v3, :cond_0

    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    if-eqz v3, :cond_0

    .line 391
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    if-lez v3, :cond_2

    .line 392
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    .line 393
    .local v2, "top":I
    const/4 v1, 0x3

    .line 410
    .local v1, "targetState":I
    :goto_1
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Lhu;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, p2, v4, v2}, Lhu;->a(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 411
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 412
    new-instance v3, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    invoke-direct {v3, p0, p2, v1}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 416
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    goto :goto_0

    .line 394
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_2
    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getYVelocity()F

    move-result v3

    invoke-virtual {p0, p2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 395
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    .line 396
    .restart local v2    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto :goto_1

    .line 397
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_3
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    if-nez v3, :cond_5

    .line 398
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 399
    .local v0, "currentTop":I
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 400
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    .line 401
    .restart local v2    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto :goto_1

    .line 403
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_4
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    .line 404
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .line 406
    .restart local v1    # "targetState":I
    goto :goto_1

    .line 407
    .end local v0    # "currentTop":I
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_5
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    .line 408
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_1

    .line 414
    :cond_6
    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 308
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v1

    .line 311
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 312
    .local v0, "action":I
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-ne v3, v2, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    .line 313
    goto :goto_0

    .line 315
    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Lhu;

    invoke-virtual {v3, p3}, Lhu;->b(Landroid/view/MotionEvent;)V

    .line 317
    if-nez v0, :cond_3

    .line 318
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    .line 320
    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_4

    .line 321
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 323
    :cond_4
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 326
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v3, :cond_5

    .line 327
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Lhu;

    .line 2492
    iget v4, v4, Lhu;->b:I

    .line 327
    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 328
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Lhu;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, p2, v4}, Lhu;->a(Landroid/view/View;I)V

    .line 331
    :cond_5
    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .prologue
    .line 516
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 517
    return-void
.end method

.method public setHideable(Z)V
    .locals 0
    .param p1, "hideable"    # Z

    .prologue
    .line 475
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    .line 476
    return-void
.end method

.method public final setPeekHeight(I)V
    .locals 4
    .param p1, "peekHeight"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    const/4 v3, 0x0

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "layout":Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 439
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-nez v2, :cond_0

    .line 440
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    .line 441
    const/4 v0, 0x1

    .line 449
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 450
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 451
    .local v1, "view":Landroid/view/View;, "TV;"
    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 455
    .end local v1    # "view":Landroid/view/View;, "TV;"
    :cond_1
    return-void

    .line 443
    :cond_2
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    if-eq v2, p1, :cond_0

    .line 444
    :cond_3
    iput-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    .line 445
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    .line 446
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    sub-int/2addr v2, p1

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    .line 447
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSkipCollapsed(Z)V
    .locals 0
    .param p1, "skipCollapsed"    # Z

    .prologue
    .line 496
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mSkipCollapsed:Z

    .line 497
    return-void
.end method

.method public final setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 527
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-ne p1, v2, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_3

    .line 532
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 534
    :cond_2
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    goto :goto_0

    .line 538
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 539
    .local v0, "child":Landroid/view/View;, "TV;"
    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 544
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->D(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 545
    new-instance v2, Landroid/support/design/widget/BottomSheetBehavior$1;

    invoke-direct {v2, p0, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$1;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 552
    :cond_4
    invoke-virtual {p0, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;I)V

    goto :goto_0
.end method

.method setStateInternal(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 568
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-ne v1, p1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 572
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 573
    .local v0, "bottomSheet":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "yvel"    # F

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 587
    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mSkipCollapsed:Z

    if-eqz v3, :cond_1

    .line 595
    :cond_0
    :goto_0
    return v1

    .line 590
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    if-ge v3, v4, :cond_2

    move v1, v2

    .line 592
    goto :goto_0

    .line 594
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, p2

    add-float v0, v3, v4

    .line 595
    .local v0, "newTop":F
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method startSettlingAnimation(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # I

    .prologue
    .line 622
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 623
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    .line 631
    .local v0, "top":I
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Lhu;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lhu;->a(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 632
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 633
    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 637
    :goto_1
    return-void

    .line 624
    .end local v0    # "top":I
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 625
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    .restart local v0    # "top":I
    goto :goto_0

    .line 626
    .end local v0    # "top":I
    :cond_1
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 627
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    .restart local v0    # "top":I
    goto :goto_0

    .line 629
    .end local v0    # "top":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Illegal state argument: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 635
    .restart local v0    # "top":I
    :cond_3
    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1
.end method
