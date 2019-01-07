.class final Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$5;
.super Ljava/lang/Object;
.source "DingNewTabFragmentImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$5;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

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

    .line 581
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$5;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->e(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$5;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->n(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)V

    .line 584
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$5;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v1, v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->b(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;Z)V

    .line 585
    const/4 v0, 0x1

    .line 588
    :cond_0
    return v0
.end method
