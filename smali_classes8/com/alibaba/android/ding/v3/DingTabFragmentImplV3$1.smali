.class final Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV3.java"

# interfaces
.implements Lbkx;


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
    .line 99
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

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
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->c(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v1}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->setUserVisibleHint(Z)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v1}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->d(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->setUserVisibleHint(Z)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->f(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/v3/DingETaskListFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v1}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->e(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/v3/DingETaskListFragment;->setUserVisibleHint(Z)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->g(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V

    .line 112
    return-void
.end method

.method public final b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method
