.class final Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$5;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV3.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$5;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 592
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$5;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v1}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->h(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$5;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v1}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->q(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V

    .line 595
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$5;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v1, v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;Z)V

    .line 596
    const/4 v0, 0x1

    .line 599
    :cond_0
    return v0
.end method
