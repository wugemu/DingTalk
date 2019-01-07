.class final Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$9;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV2.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

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

    .line 632
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    .line 635
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v1, v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;Z)V

    .line 636
    const/4 v0, 0x1

    .line 639
    :cond_0
    return v0
.end method
