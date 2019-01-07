.class final Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$5;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV2.java"

# interfaces
.implements Lcom/alibaba/android/ding/widget/DingFilterManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 202
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->e(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->d(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/DingFilterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingFilterManager;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->setUserVisibleHint(Z)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->d(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/DingFilterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingFilterManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->setUserVisibleHint(Z)V

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->i()V

    .line 208
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
