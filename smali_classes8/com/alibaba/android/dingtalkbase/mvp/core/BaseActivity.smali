.class public abstract Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcli;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 60
    return-object p0
.end method

.method public final a(I)V
    .locals 3
    .param p1, "strId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    const-string/jumbo v0, "mvp"

    const-string/jumbo v1, "BaseActivity"

    const-string/jumbo v2, "strId error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public abstract c()I
.end method

.method public abstract d()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;->b()V

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseActivity;->d()V

    .line 30
    return-void
.end method

.method public showLoadingDialog()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 66
    return-void
.end method
