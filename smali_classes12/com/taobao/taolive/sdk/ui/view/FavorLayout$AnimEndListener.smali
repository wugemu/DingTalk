.class Lcom/taobao/taolive/sdk/ui/view/FavorLayout$AnimEndListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FavorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/sdk/ui/view/FavorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimEndListener"
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
.method private constructor <init>(Lcom/taobao/taolive/sdk/ui/view/FavorLayout;Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)V
    .locals 1
    .param p1, "layout"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout;
    .param p2, "target"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;

    .prologue
    .line 338
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 339
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$AnimEndListener;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 340
    iput-object p2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$AnimEndListener;->mTarget:Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/taolive/sdk/ui/view/FavorLayout;Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/taobao/taolive/sdk/ui/view/FavorLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout;
    .param p2, "x1"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;
    .param p3, "x2"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$1;

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$AnimEndListener;-><init>(Lcom/taobao/taolive/sdk/ui/view/FavorLayout;Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    iget-object v1, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$AnimEndListener;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    .line 346
    .local v0, "layout":Lcom/taobao/taolive/sdk/ui/view/FavorLayout;
    if-eqz v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$AnimEndListener;->mTarget:Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->removeFavor(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)V

    .line 348
    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->invalidate()V

    .line 350
    :cond_0
    return-void
.end method
