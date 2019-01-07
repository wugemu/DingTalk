.class final Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$9;
.super Ljava/lang/Object;
.source "DdFullMediaPlayerController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$9;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 709
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 703
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$9;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->o(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 704
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 714
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 699
    return-void
.end method
