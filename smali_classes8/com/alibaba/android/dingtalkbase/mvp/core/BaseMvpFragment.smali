.class public abstract Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment;
.super Lcom/alibaba/android/dingtalkbase/mvp/core/BaseFragment;
.source "BaseMvpFragment.java"

# interfaces
.implements Lcli;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lclg;",
        ">",
        "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseFragment;",
        "Lcli;"
    }
.end annotation


# instance fields
.field protected a:Lclg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment;, "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 41
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment;, "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment<TT;>;"
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseFragment;->onDestroy()V

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment;->a:Lclg;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment;->a:Lclg;

    invoke-interface {v0}, Lclg;->a()V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string/jumbo v0, "mvp"

    const-string/jumbo v1, "BaseMvpFragment"

    const-string/jumbo v2, "onDestroy() presenter null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 27
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment;, "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lclf;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclg;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment;->a:Lclg;

    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment;->a:Lclg;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment;->a:Lclg;

    invoke-interface {v0, p0}, Lclg;->a(Lclh;)Z

    .line 36
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 34
    :cond_1
    const-string/jumbo v0, "mvp"

    const-string/jumbo v1, "BaseMvpFragment"

    const-string/jumbo v2, "onViewCreated() presenter null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
