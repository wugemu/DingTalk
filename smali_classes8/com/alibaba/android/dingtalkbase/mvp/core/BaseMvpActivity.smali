.class public abstract Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;
.super Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;
.source "BaseMvpActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lclj;",
        ">",
        "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;"
    }
.end annotation


# instance fields
.field protected a:Lclj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;, "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lclf;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclj;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->a:Lclj;

    .line 26
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;, "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity<TT;>;"
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;->b()V

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->a:Lclj;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->a:Lclj;

    invoke-virtual {v0, p0}, Lclj;->a(Lcli;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->finish()V

    .line 74
    const-string/jumbo v0, "mvp"

    const-string/jumbo v1, "BaseMvpActivity"

    const-string/jumbo v2, "onViewCreated() presenter attach view false"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->finish()V

    .line 78
    const-string/jumbo v0, "mvp"

    const-string/jumbo v1, "BaseMvpActivity"

    const-string/jumbo v2, "onViewCreated() presenter null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;, "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity<TT;>;"
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;, "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity<TT;>;"
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->a:Lclj;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->a:Lclj;

    invoke-virtual {v0}, Lclj;->a()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string/jumbo v0, "mvp"

    const-string/jumbo v1, "BaseMvpActivity"

    const-string/jumbo v2, "onDestroy() presenter null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;, "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity<TT;>;"
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;->onPause()V

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 46
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;, "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity<TT;>;"
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;->onResume()V

    .line 50
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;, "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity<TT;>;"
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;->onStart()V

    .line 42
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 62
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;, "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity<TT;>;"
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;->onStop()V

    .line 66
    return-void
.end method

.method public final s_()Z
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;, "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity<TT;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
