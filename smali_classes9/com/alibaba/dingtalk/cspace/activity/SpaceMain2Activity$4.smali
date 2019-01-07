.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$4;
.super Landroid/content/BroadcastReceiver;
.source "SpaceMain2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 502
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    if-eqz p2, :cond_0

    .line 509
    const-string/jumbo v0, "com.workapp.org_employee_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Z)V

    goto :goto_0

    .line 511
    :cond_2
    const-string/jumbo v0, "com.alibaba.dingtalk.space.cooperation.folder.new"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    goto :goto_0

    .line 513
    :cond_3
    const-string/jumbo v0, "com.alibaba.dingtalk.space.ads.new"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->m(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    goto :goto_0
.end method
