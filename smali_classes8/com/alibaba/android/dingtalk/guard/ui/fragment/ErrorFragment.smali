.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/ErrorFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.source "ErrorFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/ErrorFragment;->x()V

    .line 27
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lbrx$e;->activity_device_config_error:I

    return v0
.end method
