.class final Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$1;
.super Ljava/lang/Object;
.source "DingNewTabFragmentImpl.java"

# interfaces
.implements Lbkx;


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
    .line 99
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

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
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->c(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->b(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->setUserVisibleHint(Z)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->b(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->setUserVisibleHint(Z)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->d(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)V

    .line 111
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method
