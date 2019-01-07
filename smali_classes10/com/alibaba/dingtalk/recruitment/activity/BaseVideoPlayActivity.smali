.class public abstract Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "BaseVideoPlayActivity.java"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method protected static a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V
    .locals 0
    .param p0, "mVideoView"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$1;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;Ljava/lang/Runnable;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v0}, Lgva;->a(Lcma;)V

    .line 57
    return-void
.end method

.method protected final b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V
    .locals 3
    .param p1, "mVideoView"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    invoke-virtual {v0}, Lguv;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    goto :goto_0

    .line 90
    :cond_3
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    invoke-virtual {v0}, Lguv;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$3;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lguv;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1060
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->a:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1063
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$2;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->a:Landroid/content/BroadcastReceiver;

    .line 1069
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->a:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 31
    .line 1073
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1074
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->a:Landroid/content/BroadcastReceiver;

    .line 32
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 33
    return-void
.end method
