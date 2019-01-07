.class public Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "SendOrientedRedPacketsGuideFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcaj$e;->fragment_send_oriented_guide:I

    return v0
.end method
