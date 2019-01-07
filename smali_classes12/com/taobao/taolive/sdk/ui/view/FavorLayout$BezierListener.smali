.class Lcom/taobao/taolive/sdk/ui/view/FavorLayout$BezierListener;
.super Ljava/lang/Object;
.source "FavorLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/sdk/ui/view/FavorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BezierListener"
.end annotation


# instance fields
.field private mTarget:Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;

.field private mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/taolive/sdk/ui/view/FavorLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/taobao/taolive/sdk/ui/view/FavorLayout;)V
    .locals 1
    .param p1, "target"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;
    .param p2, "layout"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$BezierListener;->mTarget:Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;

    .line 361
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$BezierListener;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 362
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/taobao/taolive/sdk/ui/view/FavorLayout;Lcom/taobao/taolive/sdk/ui/view/FavorLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;
    .param p2, "x1"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout;
    .param p3, "x2"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$1;

    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$BezierListener;-><init>(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/taobao/taolive/sdk/ui/view/FavorLayout;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 367
    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$BezierListener;->mTarget:Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    invoke-static {v2, v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->access$002(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    .line 369
    iget-object v1, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$BezierListener;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    .line 370
    .local v0, "layout":Lcom/taobao/taolive/sdk/ui/view/FavorLayout;
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->invalidate()V

    .line 373
    :cond_0
    return-void
.end method
