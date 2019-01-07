.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$1;
.super Landroid/os/Handler;
.source "AnchorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 151
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 1022
    :pswitch_0
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatWindowUtil;->a()Z

    move-result v1

    .line 153
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v4, v2, v3

    .line 154
    invoke-static {v1, v2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    :cond_0
    const-string/jumbo v1, "LIFECYCLE"

    .line 156
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 157
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v1

    invoke-virtual {v1}, Lbtq;->c()V

    goto :goto_0

    .line 161
    :cond_1
    const-string/jumbo v1, "in background, not show anchor small view"

    .line 2013
    const-string/jumbo v2, "live"

    invoke-static {v2, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_2
    const-string/jumbo v1, "has not system alert window permission, not show anchor small view"

    .line 3013
    const-string/jumbo v2, "live"

    invoke-static {v2, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
