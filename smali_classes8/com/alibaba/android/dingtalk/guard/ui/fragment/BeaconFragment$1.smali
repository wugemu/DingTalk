.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$1;
.super Landroid/os/Handler;
.source "BeaconFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    goto :goto_0

    .line 158
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .line 160
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .line 1129
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_0

    .line 1131
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lbsw$a;->c(I)V

    goto :goto_0
.end method
